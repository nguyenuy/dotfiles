export HISTCONTROL=ignoreboth:erasedups

###
### ZSH Configuration
###
### These are settings to add to the .zshrc file when things are done
setopt append_history hist_ignore_all_dups hist_reduce_blanks

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

# Aliases
alias ls="ls -lhaG"

