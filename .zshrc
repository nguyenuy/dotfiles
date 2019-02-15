### History Control Settings
export HISTCONTROL=ignoreboth:erasedups
setopt append_history hist_ignore_all_dups hist_reduce_blanks

### Fuzzy Finder Settings
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VSCode, enter in VIM
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort' --bind='enter:execute(vim {})+abort'"

###
### ZSH Configuration
###
### These are settings to add to the .zshrc file when things are done

# Man page color highlighting
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# All Other Aliases
alias ls="ls -lhaG"
alias scala="scala -Dscala.color"
alias cat="bat"

