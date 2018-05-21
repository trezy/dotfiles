# Ensure we're using 256 colors
TERM="screen-256color"
DEFAULT_USER="trezy"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Add local bin to the beginning of the path
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

if [ $OSTYPE = "*darwin*" ]; then
  # Use the Homebrew version of ncurses
  export PATH="/usr/local/opt/ncurses/bin:$PATH"
fi

# Add Yarn's global bin
export PATH="$(yarn global bin):$PATH"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
POWERLEVEL9K_MODE="awesome-fontconfig"
# POWERLEVEL9K_MODE="default"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Tell zsh-nvm to auto use the node version listed in .nvmrc files
export NVM_AUTO_USE=true

# Which plugins would you like to load?
plugins=(git zsh-autosuggestions zsh-nvm almostontop)

# Extra config for PL9K
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir nvm vcs)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%K{white}%F{black} \UE12E `date +%T` %f%k%F{white}%f "
POWERLEVEL9K_NVM_BACKGROUND='28'
POWERLEVEL9K_NVM_FOREGROUND='15'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
##





source ~/.bash_profile
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.fonts/*.sh

# added by travis gem
[ -f /Users/trezy/.travis/travis.sh ] && source /Users/trezy/.travis/travis.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add Exercism tab completion
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

