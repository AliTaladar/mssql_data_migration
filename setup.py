from setuptools import setup, find_packages
 
classifiers = [
  'Development Status :: 5 - Production/Stable',
  'Intended Audience :: Education',
  'Operating System :: Microsoft :: Windows :: Windows 10',
  'License :: OSI Approved :: MIT License',
  'Programming Language :: Python :: 3'
]
 
setup(
  name='mssql_dm',
  version='0.0.1',
  description='A simple mssql data migration tool',
  long_description=open('README.txt').read() + '\n\n' + open('CHANGELOG.txt').read(),
  url='',  
  author='Ali Taladar',
  author_email='taladarali@gmail.com',
  license='MIT', 
  classifiers=classifiers,
  keywords='data migration', 
  packages=find_packages(),
  install_requires=['sql_formatter', 're', 'sqlparse'] 
)