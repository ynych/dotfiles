
## alias
alias ll='ls -al'
alias l='ls -l'
alias lm=$HOME"/env/tools/scripts/login/login-machine.sh"
# alias synergys=$HOME"/Documents/package/package/synergy-1.3.8-MacOSX107-Universal/synergys"
# alias synergyc=$HOME"/Documents/package/package/synergy-1.3.8-MacOSX107-Universal/synergyc"
alias updatedb="sudo /usr/libexec/locate.updatedb"

# man pages with Chinese
alias cman='man -M $HOME/apps/open_source/manpages-zh/src'

## path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export SVN_EDITOR=vim
export QTDIR=$HOME/tools/Qt5.3.2/5.3/clang_64

export C_INCLUDE_PATH=/usr/local/Cellar/libxml2/2.9.1/include/libxml2:$C_INCLUDE_PATH
export LDFLAGS="-L/usr/local/opt/libxml2/lib"
export CPPFLAGS="-I/usr/local/opt/libxml2/include"

# GRAPHVIZ_DOT
export GRAPHVIZ_DOT=/usr/local/bin/dot 

# apps
# scala
alias scala="/usr/local/bin/scala -feature"

# qt
export QTDIR=$HOME/tools/Qt5.3.2/5.3/clang_64

# git
source ~/env/shell/git-completion.bash

# java@
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_40.jdk/Contents/Home"
export PATH=$PATH:$JAVA_HOME/bin

# jetty
export JETTY_HOME=$HOME"/tools/jetty-distribution-9.2.3.v20140905"
export PATH=$PATH:$JETTY_HOME/bin

# qt
export QT_HOME=$HOME"/tools/Qt5.3.2/5.3/clang_64"
export PATH=$PATH:$QT_HOME/bin

# odps
export ODPSCLI_HOME=$HOME"/apps/odpscli"
export ODPSCLI_CONF=$HOME"/apps/odpscli/conf"


# MacPorts Installer addition on 2014-11-10_at_13:06:24: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
