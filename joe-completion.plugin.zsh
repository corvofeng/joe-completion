#########################################################################
#
#  Created on: September 02, 2018
#
#      Author: corvo
#
#      Brief: A small zsh completion plugin for https://github.com/karan/joe
#
#           Learned some fragments from:
#              1) google-cloud-sdk/completion.zsh.inc
#              2) /usr/share/zsh/site-functions/_archlinux-java
#              3) /usr/share/zsh/functions/Completion/Linux/_sshfs
#
#
#  You can think of it as a plugin for oh-my-zsh, or just a zshfile and source it
#
#   1. plugins=(... joe-completion ...)
#
#   2.  if [ -f <joe-completion>/joe-completion.plugin.zsh ]; then
#           source <joe-completion>/joe-completion.plugin.zsh
#       fi
#
#########################################################################



_joe_command_arguments() {

    case $words[1] in
    (g|generate)
        if [ $(command -v joe) ]
        then
            comp=($(joe ls | tail -1 | tr  -d ','))
        elif [ $(command -v joe-gitignore) ]
        then
            comp=($(joe-gitignore ls | tail -1 | tr  -d ','))
        else
            echo "Don't have joe"
        fi
            _values -s , 'All support langanes' $comp
            ;;
    esac
}

function _joe_gitignore {
    #    local line
    local -a commands

    commands=(
    "ls: list all available files"
    "list: list all available files"

    "u:all available gitignore files"
    "update:all available gitignore files"

    "g:generate gitignore files"
    "generate:generate gitignore files"

    "h: Shows a list of commands or help for one command"
    "help: Shows a list of commands or help for one command"
    )

    _arguments -C \
        "1:xxx:->cmds" \
        '*:: :->args'

    case "$state" in
        (cmds)
            _describe -t commands 'commands' commands
            ;;
        (*)
            _joe_command_arguments
            ;;
    esac
}

compdef _joe_gitignore joe-gitignore
compdef _joe_gitignore joe
