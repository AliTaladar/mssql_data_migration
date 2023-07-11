import re
import sqlparse


def parse_script(src_script):
    raw = read_script(src_script)
    raw = format_script(raw)
    commands = get_all_commands(raw)
    return commands


def read_script(src_script):
    file = open(src_script, 'r', encoding='utf-8')
    raw = file.read()
    file.close()
    return raw


def format_script(raw):
    # remove all comments
    raw = re.sub(r'\/\*(.*?)\*\/', '', raw)

    # add semicolons between commands (so that we can parse the script)
    raw = re.sub(r'(?<!IDENTITY_)INSERT \[', ';INSERT [', raw)
    raw = raw.replace('SET', ';SET')
    raw = raw.replace('GO\n', ';GO')
    raw = raw.replace('CREATE TABLE', ';CREATE TABLE')
    raw = raw.replace('ALTER TABLE', ';ALTER TABLE')

    # remove any unnecessary whitespace
    raw = re.sub(r'\s+', ' ', raw.strip())
    raw = raw.replace(' ;', ';')

    # remove unnecessary semicolon at the beginning of the script
    if raw[0] == ';':
        raw = raw[1:]

    # with open('all_NLU_revised.sql', 'w', encoding='utf-8') as file:
    #     file.write(raw)
    return raw


def get_all_commands(raw):
    all_commands = sqlparse.parse(raw)

    commands = []
    for i in range(len(all_commands)):
        if str(all_commands[i]) in ('SET ANSI_NULLS ON;', 'GO;', 'SET QUOTED_IDENTIFIER ON;'):
            continue
        elif str(all_commands[i]) in ('SET ANSI_NULLS ON', 'GO', 'SET QUOTED_IDENTIFIER ON'):
            continue
        elif str(all_commands[i]).startswith('SET IDENTITY_INSERT'):
            continue
        elif str(all_commands[i]).startswith('CREATE SCHEMA'):
            continue
        commands.append(all_commands[i])
    return commands
