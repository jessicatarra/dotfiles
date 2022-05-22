# NVM
export NVM_DIR=~/.nvm
 [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# Own agnoster version with a cute 🦄 emoji
# See https://github.com/jessicatarra/ohmyzsh/blob/2628c3194b0ea9ded7bf6dc26463c3263ceeb4d0/themes/agnoster.zsh-theme
ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# When I feel lazy and show as online in slack I run following alias
alias mouse="bash ~/Documents/sh/keep_mouse_moving/keep_mouse_moving.sh"

# When I feel lazy I want to move my mouse remotly from my bed 
alias control-remote="mono ~/Downloads/RemoteMouse/RemoteMouse.exe"

# Just for debian based distros users
alias update='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'

# Android emulators
alias device_1="cd ~/Android/Sdk/emulator && ./emulator -avd Nexus_6_API_30"
alias device_2="cd ~/Android/Sdk/emulator && ./emulator -avd Pixel_3_API_30"
alias device_3="cd ~/Android/Sdk/emulator && ./emulator -avd Pixel_4_API_30"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    	zinit-zsh/z-a-rust \
    	zinit-zsh/z-a-as-monitor \
    	zinit-zsh/z-a-patch-dl \
    	zinit-zsh/z-a-bin-gem-node
### End of Zinit's installer chunk
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Spaceship
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

[ -s "/home/jessica/.jabba/jabba.sh" ] && source "/home/jessica/.jabba/jabba.sh"


#ANDROID
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jessica/.sdkman"
[[ -s "/home/jessica/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jessica/.sdkman/bin/sdkman-init.sh"
