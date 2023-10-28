# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
cd ~/StorageComp/
case $- in
    *i*) ;;
      *) return;;
esac

alias doimg="docker image"
alias docon="docker container"
alias doexe="docker exec"
alias docom="docker commit"
#alias htop='glances'
alias git="/usr/bin/git"
alias ..='cd ..'
alias jb='jobs'
alias dirsize='du -sh -- *'
#alias dirsize='ncdu'
alias quickmake='qb'
#alias make='bear -- make -j8'
alias checkmake='~/StorageComp/99Others/checkmake/checkmake'
alias gdb='gdb -q'
alias exp='explorer.exe .'
alias o='powershell.exe /C start'
alias v='vim -b'
alias ctags='ctags -R .'
alias remake='rm -r CMake*; cmake ..; make clean; make -j'
alias newcmake='~/cmake-3.22.0-rc1/build/bin/cmake'
alias formatcode='astyle'
export PPROF_PATH=/usr/local/bin/pprof
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export JAVA_HOME=/home/witcher/StorageComp/99Others/jdk-18.0.2.1
export PATH=$PATH:$JAVA_HOME/bin
#export LD_LIBRARY_PATH=$HOME/anaconda3/lib:$LD_LIBRARY_PATH
alias memcheck_val="valgrind --tool=memcheck --leak-check=full --track-origins=yes --show-leak-kinds=all -v"
#alias memcheck_google="env LD_PRELOAD=/usr/local/lib/libtcmalloc.so HEAPCHECK=normal HEAP_CHECK_TEST_POINTER_ALIGNMENT=1 HEAP_CHECK_MAX_POINTER_OFFSET=-1"
alias memcheck_google="env LD_PRELOAD=/usr/local/lib/libtcmalloc.so HEAPCHECK=normal HEAP_CHECK_TEST_POINTER_ALIGNMENT=1"
alias profiler_val="valgrind --tool=callgrind"
#alias out2dot="python ~/StorageComp/99Others/gprof2dot.py -f callgrind -s callgrind.out.14885 > valgrind.dot"
alias out2dot="python ~/StorageComp/99Others/gprof2dot.py -f callgrind -s"
alias dot2png="dot -Tpng valgrind.dot -o valgrind.png"
alias profiler_google="env LD_PRELOAD=/usr/local/lib/libprofiler.so CPUPROFILE_FREQUENCY=1000 CPUPROFILE=test-normal.prof "
alias profiler_hyperfine="hyperfine"
# perf record -F 999 -g -o ../linux_git_force.data ../git/bin-wrappers/git gc --force
# sudo perf record -a -g -- ./x
# sudo perf report 
# sudo perf annotate
# generate svg
# perf script -i perf.data &> perf.unflod
# ../99Others/FlameGraph/stackcollapse-perf.pl perf.unflod &> perf.folded
# ../99Others/FlameGraph/flamegraph.pl perf.folded > perf.svg
# perf script -i perf.data | ./FlameGraph/stackcollapse-perf.pl | ./FlameGraph/flamegraph.pl > process.svg
alias perf="sudo ~/StorageComp/99Others/WSL2-Linux-Kernel-linux-msft-wsl-5.15.79.1/tools/perf/perf"
# intel-vtune
source /opt/intel/oneapi/setvars.sh 

alias python='python3'
alias base='conda activate base'
alias fenics='conda activate fenicsproject'
alias dedupe='conda activate dedupe'
alias db='conda activate database'
alias torch='conda activate torch'
alias de='conda deactivate'

alias gitupdate='git checkout master && git pull && git checkout && git merge master'
alias gitmodule='git submodule update --init'
alias settings='cd /mnt/c/Users/w00600280/AppData/Local/Packages/Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe/LocalState'
alias desktop='cd /mnt/c/Users/w00600280/Desktop/'
alias hyb39='sshpass -p "hyb291256" ssh hyb@10.113.215.39'
alias hyb38='sshpass -p "123456" ssh yongbing@10.113.215.38'
alias hyb147='sshpass -p "1q2w3e" ssh hyb@10.113.215.147'
alias yl147='sshpass -p "yl" ssh yl@10.113.215.147'
alias lilunbu='sshpass -p "jiangweipeng@123" ssh lilunbu@76.64.194.51'
alias lilunburoot='sshpass -p "Xiangliang@2023" ssh root@76.64.194.51'
alias anngit='sshpass -p "annlib@tl" ssh gituser@10.110.52.62'
#alias pacific='sshpass -p "pacific" ssh pacific@10.175.118.112'
alias pacific='sshpass -p "pacific" ssh pacific@10.91.159.238'
#alias h2w='sshpass -p "hyb291256" scp -r hyb@10.113.215.39:'
alias xxh='ssh'

function h2w(){
    sshpass -p 'hyb291256' scp -r hyb@10.113.215.39:$@
}

function w2h(){
    sshpass -p 'hyb291256' scp -r ${1} hyb@10.113.215.39:${2}
}

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/home/witcher/anaconda3/lib/pkgconfig/:/usr/lib/x86_64-linux-gnu/pkgconfig/
#set -o vi


export PULSE_SERVER=tcp:localhost

#export DISPLAY=127.0.0.1:0.0
#export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0.0"
#export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0.0
export LIBGL_ALWAYS_INDIRECT=1

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
#HISTCONTROL=ignoredups
# history command
HISTTIMEFORMAT="%d/%m/%y %T "  # for e.g. “29/02/99 23:59:59”
#HISTTIMEFORMAT="%F %T "        # for e.g. “1999-02-29 23:59:59”

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=500000
HISTFILESIZE=500000
#export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\[\033[01;34m\]\W\[\033[00m\]\$ '
else
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '
    PS1='${debian_chroot:+($debian_chroot)}\W\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    #PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \W\a\]$PS1"
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\W\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep -n --color=auto'
    alias fgrep='fgrep -n --color=auto'
    alias egrep='egrep -n --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -laFh'
alias la='ls -A'
alias l='ls -CF'
alias line='sed -n'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/witcher/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/witcher/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/witcher/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/witcher/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export ftp_proxy=http://w00600280:lxy%409201@172.30.65.47:8080
#export http_proxy=http://w00600280:lxy%409201@172.30.65.47:8080
#export https_proxy=http://w00600280:lxy%409201@172.30.65.47:8080
#export ftp_proxy=http://w84174922:Huawei%409201@proxy.huawei.com:8080
#export http_proxy=http://w84174922:Huawei%409201@proxy.huawei.com:8080
#export https_proxy=http://w84174922:Huawei%409201@proxy.huawei.com:8080
. "$HOME/.cargo/env"
alias gtz='/home/witcher/.config/GTZ/gtz'
alias fastp-gtz='/home/witcher/.config/fastp-gtz/fastp-gtz'
# ocaml
eval $(opam env)
