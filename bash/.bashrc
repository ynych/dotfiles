## apps
# go
GOROOT=/usr/local/Cellar/go/1.2.2/libexec
export GOROOT
GOPATH=$HOME/apps/go_projects
export GOPATH
PATH=$GOROOT/bin:$GOPATH:$PATH   
export PATH  

# qt
export QTDIR=$HOME/tools/Qt5.3.2/5.3/clang_64

# maven
MAVEN_HOME=$HOME/tools/apache-maven-2.2.1
PATH=$MAVEN_HOME/bin:$PATH
export MAVEN_HOME
export PATH

# git
source ~/env/shell/.git-completion.bash

# gvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

