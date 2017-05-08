export CLICOLOR=1
export LSCOLORS=DxFxCxDxBxegedabagacad
export PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '

# Maven
export M2_HOME="/usr/local/Maven/apache-maven-3.2.1"
export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512m"
export M2=$M2_HOME/bin

# Path
export PATH=${PATH}:"~/Android SDK/platform-tools":$M2
export PATH=${PATH}:"/Applications/MAMP/bin/php/php5.4.4/bin"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

set -o vi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
