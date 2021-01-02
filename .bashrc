alias python=python3
GPG_TTY=$(tty) # to solve gpg Git commit error.
export GPG_TTY

[ -n "$PS1" ] && source ~/.bash_profile;
alias ll='ls -lG'
