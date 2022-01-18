#source /.cshrc
alias header 'echo -n "]l\!*\"'

setenv PATH .:/usr/tools/bin:/usr/vw/bin:/usr/local:/usr/ucb:/usr/new:/usr/bin:/bin:/usr/isi:/etc:/usr/games:/usr/bin/X11

alias cv	'set cdpath=(\!* \!*/src \!*/config ~)'
alias m		'less \!*'

alias mx	'make \!* >& makeout&'
alias tx	'tail -f makeout'
alias make20	'make -f Makefile.68020 \!*'
alias makeo	'make \!* >& makeout'
alias maket	'rm -f makeout;make \!* |& tee makeout'
alias maker	'make \!* |& tee /dev/tty | tee makeout | error -v'
alias makex	'make \!* >& makeout &;tail -f makeout'
alias err	'error -v makeout'

alias rtfmt	'diskformat -il 13 /dev/rf0s'

alias ph	'bgrep "`recase \!*`" <~/phonelist'
alias viphone	'vi ~/phonelist'
alias virel	'vi ~/release/4.0'
alias vimeet	'vi ~/WRS/MEETING'
alias vilist	'vi ~/WRS/LIST'
alias viday	'vi ~/WRS/DAY'

alias ccc	'cc -c -v -O \!*.c'
alias lll	'ld -o \!* -X -rd \!*.o'
alias cl	'ccc \!*;lll \!*;rm \!*.o'

alias mods	'ls -l \!* | grep -v wrs'
alias mls	'lf -lsF \!* | more'
alias lf	'ls -LF \!*'

alias x		'echo ""; echo ""; echo ---------------------------------------------------; echo ""; echo ""'
