
alias ems='cd $ZSH_SETUP_ROOT'
alias emv='cd $HOME/.myvim'

# git

alias g='git'
alias gp='git push'
alias gpt='git push --tags'

alias ll="ls --color=auto -Flsh"

alias hr="hash -r"
alias nicedate="date +'%Y-%m-%d'"

alias sctl="supervisorctl"

# SSH stuff

alias addkeys="ssh-add ~/.ssh/id_rsa_prod"

# editor
alias v="vim"
alias gv="gvim"
alias ta="tmux attach"

# environments
alias ve3="virtualenv -p python3 pyenv"
alias ve2="virtualenv -p python pyenv"
alias pact="source pyenv/bin/activate"

alias mvn="JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 mvn"
alias untar="tar -xvf "
alias wget="wget -c "
alias getpass="openssl rand -base64 20"
alias sha="shasum -a 256 "
alias ping="ping -c 5"

alias www="python -m SimpleHTTPServer 7000"
alias ipe="curl ipinfo.io/ip"
alias ipa="ip addr"

# Development
#
alias postpsql="sudo -u postgres psql"
