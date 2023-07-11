import re
from mssql_dm.table_objects.Insertion import Insertion

def create_insertion(command, tables):
    pattern = r'INSERT \[(.*?)\].\[(.*?)\] \((.*?)\) VALUES \((.*)\)'
    vals_pattern = r"(CAST\(N'.*?' AS [A-Za-z]+\))|(N'.*?')|([0-9]+)|(NULL)"

    match = re.search(pattern, command)

    if match:
        schema = match.group(1)
        table_name = match.group(2)
        columns = match.group(3)
        values = match.group(4)

        cols_list = columns.split(', ')
        vals_list = ["".join(x) for x in re.findall(vals_pattern, values)]
        if len(cols_list) != len(vals_list):
            print(command)
            print(cols_list)
            print(vals_list)
            exit()

        if not validate_insert_columns(schema, table_name, cols_list, vals_list, tables):
            raise ValueError('Error on insertion commands')
    else:
            print(command)
            raise ValueError('Format error')
    
    return Insertion(schema, table_name, cols_list, vals_list)


def validate_insert_columns(schema, table_name, columns, values, tables):
    if f'[{schema}].[{table_name}]' not in tables:
        return False

    table = tables[f'[{schema}].[{table_name}]']

    for i in range(len(columns)):
        column = columns[i]
        value = values[i]

        if column not in table.col_defs:
            return False
        else:
            data_type = table.col_defs[column].data_type
            nullable = table.col_defs[column].nullable

            if nullable and value == 'NULL':
                continue

            if not nullable and value == 'NULL':
                return False
            elif data_type == '[bit]' and not re.search(r'0|1', value):
                return False
            elif data_type in ('[bigint]', '[int]') and not re.search(r'[0-9]+', value):
                return False
            elif data_type.startswith('[nvarchar]') and not re.search(r"N'.*?'", value):
                return False
            elif data_type.startswith('[datetimeoffset]') and not re.search(r"(CAST\(N'.*?' AS [A-Za-z]+\))", value):
                return False

    return True
