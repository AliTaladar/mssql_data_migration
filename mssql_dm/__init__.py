import mssql_dm.ScriptParser as SP
import mssql_dm.CreateCommandParser as CCP
import mssql_dm.InsertCommandParser as ICP
import mssql_dm.AlterCommandParser as ACP
import re
from mssql_dm.table_objects.ColumnDefinition import ColumnDefinition
from mssql_dm.table_objects.Insertion import Insertion


def migrate(output_tables, src_script):
    commands = SP.parse_script(src_script)
    tables = interpret_commands(commands)
    validate_tables(output_tables, src_script)


def interpret_commands(commands):
    tables = {}

    for command in commands:
        command = str(command)
        command = command.strip()
        command = re.sub(r'\s+', ' ', command)

        if command.startswith('CREATE'):
            # create the table
            table = CCP.create_table(command)
            # add the table to the dictionary of all tables
            tables[f'[{table.schema}].[{table.name}]'] = table
        elif command.startswith('INSERT'):
            # create and add insertion object from command
            insertion = ICP.create_insertion(command, tables)
            # find the table corresponding to the insertion
            table = tables[f'[{insertion.schema}].[{insertion.table_name}]']
            # add the insertion to the list of intertions
            table.insertions.append(insertion)
        elif command.startswith('ALTER'):
            alter_type, match = ACP.find_alter_type(command)

            if not alter_type:
                print(command)
                raise ValueError('Wrong Alter Format')
            elif alter_type == 'NONCLUSTERED':
                print(alter_type)
                ACP.parse_primary_key_nonclustered(match)
                print('\n\n')
            elif alter_type == 'UNIQUE':
                print(alter_type)
                ACP.parse_unique_nonclustered(match)
                print('\n\n')
            elif alter_type == 'DEFAULT WITHOUT CONSTRAINT':
                print(alter_type)
                ACP.parse_default_without_constraint(match)
                print('\n\n')
            elif alter_type == 'DEFAULT WITH CONSTRAINT':
                print(alter_type)
                ACP.parse_default_with_constraint(match)
                print('\n\n')
            elif alter_type == 'FOREIGN KEY':
                print(alter_type)
                ACP.parse_foreign_key(match)
                print('\n\n')
            elif alter_type == 'FOREIGN KEY CHECK':
                print(alter_type)
                ACP.parse_foreign_key_check(match)
                print('\n\n')
    return tables

def validate_tables(tables, script):
    pass
