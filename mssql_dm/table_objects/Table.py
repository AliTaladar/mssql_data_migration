class Table:

    def __init__(self, name, col_defs, insertions, constraints=None, schema='dbo', file_group='PRIMARY'):
        self.schema = schema
        self.name = name
        self.col_defs = col_defs
        self.insertions = insertions
        self.constraints = constraints
        self.file_group = file_group
