from setuptools import setup

setup(
    name='pyzsh',
    author='Julian',
    author_email='juliankenn@gmail.com',

    install_requires=[
        'colorama',
        'sh',
        'pyinstaller'
        ],

    entry_points={
        'console_scripts': [
            'zsh_prompter = main:main'
        ]
    }
)
