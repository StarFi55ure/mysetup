
alias ems='cd $ZSH_SETUP_ROOT'
alias emv='cd $HOME/.myvim'

# General

alias d="dirs -v"
alias 1="cd ~"
alias 2="cd ~2"
alias 3="cd ~3"
alias 4="cd ~4"
alias 5="cd ~5"
alias 6="cd ~6"
alias 7="cd ~7"
alias 8="cd ~8"
alias 9="cd ~9"

alias open="xdg-open"

# git

alias g='git'
alias gp='git push'
alias gpt='git push --tags'

alias ll="ls --color=auto -Flsh"

alias hr="hash -r"
alias nicedate="date +'%Y-%m-%d'"

alias sctl="supervisorctl"

# SSH stuff

# editor
alias v="vim"
alias gv="gvim"
alias ta="tmux attach"

# environments
alias tmp="cd $HOME/tmp"
alias ve3="virtualenv -p python3 pyenv"
alias ve2="virtualenv -p python pyenv"
alias pact="source pyenv/bin/activate"
alias dact="deactivate"

alias mvn="JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 mvn"
alias untar="tar -xvf "
alias wget="wget -c "
alias getpass="openssl rand -base64 20"
alias sha="shasum -a 256 "
alias ping="ping -c 5"

alias ipe="curl ipinfo.io/ip"
alias ipa="ip addr"


# Development
#
alias postpsql="sudo -u postgres psql"
alias ap="ansible-playbook -i inventory"
alias ipy="ipython3"

# Logimeter

alias logidb="psql -U logiport -d logiport -h localhost"

