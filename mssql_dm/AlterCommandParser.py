import re


def find_alter_type(command):
    # regex patterns for each type of alter command
    primary_key_nonclustered_pattern = r'ALTER\s+TABLE\s+\[(.*?)\].\[(.*?)\]\s+ADD\s+CONSTRAINT\s+\[(.*?)\]\s+PRIMARY\s+KEY\s+NONCLUSTERED\s+\((.*?)\)\s*WITH\s+\((.*?)\)\s+ON\s+\[(.*?)\]'
    unique_nonclustered = r'ALTER\s+TABLE\s+\[(.*?)\].\[(.*?)\]\s+ADD\s+CONSTRAINT\s+\[(.*?)\]\s+UNIQUE\s+NONCLUSTERED\s+\((.*?)\)\s*WITH\s+\((.*?)\)\s+ON\s+\[(.*?)\]'
    default_value_without_constraint_pattern = r'ALTER\s+TABLE\s+\[(.*?)\].\[(.*?)\]\s+ADD\s+DEFAULT\s+\((.*?)\)\s+FOR\s+\[(.*?)\]'
    default_value_with_constraint_pattern = r'ALTER\s+TABLE\s+\[(.*?)\].\[(.*?)\]\s+ADD\s+CONSTRAINT\s+\[(.*?)\]\s+DEFAULT\s+\((.*?)\)\s+FOR\s+\[(.*?)\]'
    foreign_key_pattern = r'ALTER\s+TABLE\s+\[(.*?)\].\[(.*?)\]\s+WITH\s+CHECK\s+ADD\s+CONSTRAINT\s+\[(.*?)\]\s+FOREIGN\s+KEY\((.*?)\)\s+REFERENCES\s+\[(.*?)\].\[(.*?)\]\s+\((.*?)\)\s*((ON UPDATE CASCADE)|(ON DELETE CASCADE))*'
    foreign_key_check_pattern = r'ALTER\s+TABLE\s+\[(.*?)\].\[(.*?)\]\s+?CHECK\s+CONSTRAINT\s+\[(.*?)\]'

    # search for any matches
    primary_key_nonclustered_match = re.search(
        primary_key_nonclustered_pattern, command)
    unique_nonclustered_match = re.search(unique_nonclustered, command)
    default_value_without_constraint_match = re.search(
        default_value_without_constraint_pattern, command)
    default_value_with_constraint_match = re.search(
        default_value_with_constraint_pattern, command)
    foreign_key_match = re.search(foreign_key_pattern, command)
    foreign_key_check_match = re.search(foreign_key_check_pattern, command)

    if primary_key_nonclustered_match:
        return 'NONCLUSTERED', primary_key_nonclustered_match
    elif unique_nonclustered_match:
        return 'UNIQUE', unique_nonclustered_match
    elif default_value_without_constraint_match:
        return 'DEFAULT WITHOUT CONSTRAINT', default_value_without_constraint_match
    elif default_value_with_constraint_match:
        return 'DEFAULT WITH CONSTRAINT', default_value_with_constraint_match
    elif foreign_key_match:
        return 'FOREIGN KEY', foreign_key_match
    elif foreign_key_check_match:
        return 'FOREIGN KEY CHECK', foreign_key_check_match
    else:
        return None, None


def parse_primary_key_nonclustered(match):
    schema = match.group(1)
    table_name = match.group(2)
    constraint_name = match.group(3)
    columns = match.group(4).strip()
    parameters = match.group(5)
    file_group = match.group(6)

    constraint_parameters = parameters.split(', ')

    print(f'schema: {schema}')
    print(f'table_name: {table_name}')
    print(f'constraint_name: {constraint_name}')
    print(f'columns: {columns}')
    print(f'parameters: {constraint_parameters}')
    print(f'file_group: {file_group}')


def parse_unique_nonclustered(match):
    schema = match.group(1)
    table_name = match.group(2)
    constraint_name = match.group(3)
    columns = match.group(4).strip()
    parameters = match.group(5)
    file_group = match.group(6)

    constraint_parameters = parameters.split(', ')

    print(f'schema: {schema}')
    print(f'table_name: {table_name}')
    print(f'constraint_name: {constraint_name}')
    print(f'columns: {columns}')
    print(f'parameters: {constraint_parameters}')
    print(f'file_group: {file_group}')


def parse_default_without_constraint(match):
    schema = match.group(1)
    table_name = match.group(2)
    default_value = match.group(3)
    column = match.group(4)

    print(f'schema: {schema}')
    print(f'table_name: {table_name}')
    print(f'default value: {default_value}')
    print(f'column: {column}')


def parse_default_with_constraint(match):
    schema = match.group(1)
    table_name = match.group(2)
    constraint_name = match.group(3)
    default_value = match.group(4)
    column = match.group(5)

    print(f'schema: {schema}')
    print(f'table_name: {table_name}')
    print(f'constraint_name: {constraint_name}')
    print(f'default value: {default_value}')
    print(f'column: {column}')


def parse_foreign_key(match):
    src_schema = match.group(1)
    src_table = match.group(2)
    constraint_name = match.group(3)
    src_column = match.group(4)
    dst_schema = match.group(5)
    dst_table = match.group(6)
    dst_column = match.group(7)

    print(f'source schema: {src_schema}')
    print(f'source table: {src_table}')
    print(f'constraint name: {constraint_name}')
    print(f'source column: {src_column}')
    print(f'destination schema: {dst_schema}')
    print(f'destination table: {dst_table}')
    print(f'destination column: {dst_column}')


def parse_foreign_key_check(match):
    schema = match.group(1)
    table_name = match.group(2)
    constraint_name = match.group(3)

    print(f'schema: {schema}')
    print(f'table: {table_name}')
    print(f'constraint: {constraint_name}')
