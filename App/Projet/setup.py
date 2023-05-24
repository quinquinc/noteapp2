import os
from setuptools import setup

with open('./requirement.txt','r') as f:
    requirement = f.read().strip().split('\n')

setup(
    name='initdb',
    version='1',
    description="initdb",
    url='https://github.com/simonLongatte/Projectwarwaitcap.git',
    install_requires=requirement
)