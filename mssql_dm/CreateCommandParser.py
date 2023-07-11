import re
from mssql_dm.table_objects.Table import Table
from mssql_dm.table_objects.ColumnDefinition import ColumnDefinition


def create_table(command):
    schema, table_name, columns, constraints, file_group = divide_command_to_parts(
        command)
    cols_list = get_columns_from_create(columns)
    constraint_list = get_constraints_from_create(
        constraints) if constraints else None
    
    return Table(schema=schema, name=table_name, col_defs=cols_list, insertions=[], constraints=constraint_list, file_group=file_group)


def divide_command_to_parts(command):
    lazy_ptn = r'(.*?)'
    cols_ptn = r'(.*)NULL'
    constraints_ptn = r', CONSTRAINT(.*)'

    pattern = fr'CREATE\s+TABLE\s+\[{lazy_ptn}\]\.\[{lazy_ptn}\]\({cols_ptn}{constraints_ptn}\s*\)\s+ON\s+\[{lazy_ptn}\]'
    match = re.search(pattern, command)

    if match:
        schema = match.group(1).strip()
        table = match.group(2).strip()
        columns = match.group(3).strip()
        constraints = match.group(4).strip()
        file_group = match.group(5).strip()
    else:
        pattern = fr'CREATE\s+TABLE\s+\[{lazy_ptn}\]\.\[{lazy_ptn}\]\({cols_ptn}\s*\)\s+ON\s+\[{lazy_ptn}\]'
        match = re.search(pattern, command)

        if match:
            schema = match.group(1).strip()
            table = match.group(2).strip()
            columns = match.group(3).strip()
            constraints = None
            file_group = match.group(4).strip()
        else:
            print(command)
            raise ValueError(f'Wrong format on command')

    return schema, table, columns.strip() + ' NULL', constraints.strip() if constraints else None, file_group


def get_columns_from_create(text):
    cols = text.split('NULL, ')
    for i in range(len(cols) - 1):
        cols[i] += 'NULL'

    cols_dict = {}
    for col in cols:
        pattern = r'\[.*?\](?:\(.*?\))?|IDENTITY\(.*?\)|NOT NULL|NULL'
        tokens = re.findall(pattern, col)

        if len(tokens) == 3:
            column = ColumnDefinition(
                tokens[0], tokens[1], nullable=tokens[2] == 'NULL')
        elif len(tokens) == 4:
            pattern = r'\((\d+),\s*(\d+)\)'
            matches = re.findall(pattern, tokens[2])
            if not matches:
                raise ValueError('Format error')
            column = ColumnDefinition(
                tokens[0], tokens[1], identity=(int(matches[0][0]), int(matches[0][1])), nullable=tokens[3] == 'NULL')
        else:
            raise ValueError('Format error')

        cols_dict[tokens[0]] = column

    return cols_dict


def get_constraints_from_create(text):
    pattern = r"\[(?P<constraint_name>.*?)\]\s+(?P<constraint_type>PRIMARY\s+KEY\s+CLUSTERED)\s+\(\s+(?P<column_name>.*?)\s+\)\s*WITH\s+\(PAD_INDEX\s+=\s+(?P<pad_index>OFF|ON),\s+STATISTICS_NORECOMPUTE\s+=\s+(?P<statistics_norecompute>OFF|ON),\s+IGNORE_DUP_KEY\s+=\s+(?P<ignore_dup_key>OFF|ON),\s+ALLOW_ROW_LOCKS\s+=\s+(?P<allow_row_locks>OFF|ON),\s+ALLOW_PAGE_LOCKS\s+=\s+(?P<allow_page_locks>OFF|ON),\s+OPTIMIZE_FOR_SEQUENTIAL_KEY\s+=\s+(?P<optimize_for_sequential_key>OFF|ON)\)\s+ON\s+\[(?P<index_name>.*?)\]"
    match = re.search(pattern, text)

    if match:
        return match.groupdict()
    else:
        return None
