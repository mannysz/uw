_uw() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local arg_list=`__uwvenvlist`
    COMPREPLY=( $(compgen -W "$arg_list" -- $cur) )
}

if command -v complete > /dev/null
then
    complete -F _uw uw
fi
