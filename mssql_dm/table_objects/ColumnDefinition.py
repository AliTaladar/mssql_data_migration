class ColumnDefinition:

    def __init__(self, name, data_type, unique=False, nullable=True, default=None, identity=None):
        self.name = name
        self.data_type = data_type
        self.unique = unique
        self.nullable = nullable
        self.default = default
        self.identity = identity

    def __str__(self):
        return f'Column:\n* Name:\t\t{self.name}\n* Data type:\t{self.data_type}\n* Unique:\t{self.unique}\n* Nullable:\t{self.nullable}\n* Default:\t{self.default}\n* Identity:\t{self.identity}'
