import os
import socket
from datetime import datetime

from colorama import Fore, Back, Style
import sh
from sh import ErrorReturnCode

BASECOL = Fore.YELLOW + Style.BRIGHT
DATECOL = Fore.MAGENTA + Style.NORMAL
USERNAMECOL = Fore.GREEN + Style.BRIGHT
HOSTNAMECOL = Fore.BLUE + Style.BRIGHT
GITCOL = Fore.MAGENTA + Style.BRIGHT

TOPLINE = BASECOL + "┏[" + \
        USERNAMECOL + "{username}" + Fore.WHITE + "@" + \
        HOSTNAMECOL + "{hostname}" + Style.RESET_ALL + \
        ":" + \
        GITCOL + " {git} " + Style.RESET_ALL + \
        BASECOL + ']'

DIRLINE = BASECOL + "┃ {cwd}" + Style.RESET_ALL
CMDLINE = BASECOL + "┗> " + Style.RESET_ALL

def build_git_string():
    try:
        inside_git = sh.git('rev-parse', '--is-inside-work-tree', _err='/dev/null')
        return '(git)'
    except ErrorReturnCode as e:
        return ''


def main():
    top_values = {}
    top_values['username'] = 'julian'
    top_values['hostname'] = socket.gethostname()
    top_values['git'] = build_git_string()

    dir_values = {}
    dir_values['cwd'] = os.getcwd()
        
    FINAL_LINE = '{}\n{}\n{}'.format(TOPLINE.format(**top_values),
            DIRLINE.format(**dir_values), CMDLINE)
    
    print(FINAL_LINE)



