_uw() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local arg_list=`__uwvenvlist`
    COMPREPLY=( $(compgen -W "$arg_list" -- $cur) )
}

complete -F _uw uw
