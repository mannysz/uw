#!/usr/bin/env sh

UWBASEDIR=$(cd `dirname $0` && pwd)

if [ "$UWPREFIX" = "" ]; then
    export UWPREFIX=$HOME/.virtualenvs
fi

uw() {
    [ $# -eq 0 ] && echo "No parameter passed." && return

    case $1 in
        -m) __uwvenvmake "$2";;
        -l) __uwprettyvenvlist;;
        -h) __uwhelp;;
        *) __uwvenvload "$1";;
    esac
}

__uwhelp() {
    cat $UWBASEDIR/uwhelp.txt
}

# creates a new virtualenv at user's virtualenv folder
__uwvenvmake() {
    [ $# -eq 0 ] && echo "Missing 'environment-name' parameter."
    [ ! -d "$UWPREFIX" ] && mkdir -p $HOME/.virtualenvs
    [ ! -d "$HOME/.virtualenvs/$1" ] && virtualenv $HOME/.virtualenvs/$1 || echo "Virtualenv $1 already exists."
}

# private function that lists all created virtualenvs
__uwvenvlist() {
    [ -d "$HOME/.virtualenvs" ] && ls $HOME/.virtualenvs | xargs
}

# private function that (pretty) lists all created virtualenvs
__uwprettyvenvlist() {
    for _venv in `__uwvenvlist`; do echo $_venv; done
}

# loads a previously created python virtual env
__uwvenvload() {
    [ $# -eq 0 ] && echo "No environment to load."
    [ -d "$HOME/.virtualenvs/$1" ] && source $HOME/.virtualenvs/$1/bin/activate || echo "Virtualenv $1 does not exist."
}
