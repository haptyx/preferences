PS1=" \[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\H\[\e[m\] \[\e[37m\]>\[\e[m\] "


# Print working directory after a cd.
cd() {
    if [[ $@ == '-' ]]; then
        builtin cd "$@" > /dev/null  # We'll handle pwd.
    else
        builtin cd "$@"
    fi
    echo -e "   \033[1;30m"`pwd`"\033[0m"
}

function up( )
{
LIMIT=$1
P=$PWD
for ((i=1; i <= LIMIT; i++))
do
    P=$P/..
done
cd $P
export MPWD=$P
}

function back( )
{
LIMIT=$1
P=$MPWD
for ((i=1; i <= LIMIT; i++))
do
    P=${P%/..}
done
cd $P
export MPWD=$P
}

alias ls="ls --color"
alias note="vim -c $ +put_ +startinsert ~/.notes.md"


if [ -f ~/.xmodmap ]; then
    xmodmap ~/.xmodmap
fi

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return
