# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi


#Fix the Java problem
export _JAVA_AWT_WM_NONPARENTING=1

PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/local/bin/python
PYTHONPATH=/usr/lib/python38.zip:/usr/lib/python3.8:/usr/lib/python3.8/lib-dynload:/home/sergio/.local/lib/python3.8/site-packages:/usr/lib/python3.8/site-packages
PKG_CONFIG_PATH=/usr/lib/pkgconfig:/usr/share/pkgconfig:/home/sergio/Programs/Ipopt

export VISUAL=nvim
export EDITOR=nvim

/home/sergio/.config/ufetch-arch

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sergio/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /home/sergio/Programs/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


########################################################################
#                        K E Y  B I N D I N G S                        #
########################################################################

# To get the correct format from /etc/inputrc just run:
# sed -n 's/^/bindkey /; s/: / /p' /etc/inputrc

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[7~" beginning-of-line
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[8~" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line


########################################################################
#                      M A N U A L  A L I A S E S                      #
########################################################################

# Lsd
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

# Bat
alias cat='/usr/bin/bat --paging=never'
alias catn='/usr/bin/cat'
alias catl='/usr/bin/bat'

# Vim and neovim
alias vim='nvim'
alias vimrc='nvim /home/sergio/.config/nvim/init.vim'
alias vimplug='nvim /home/sergio/.config/nvim/vim-plug/plugins.vim'
# Solve pipes.sh error with lines
alias pipes.sh='export LC_ALL="en_US.UTF-8" && pipes.sh'

# Backup config files
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias confall='config add /home/sergio/.nanorc /home/sergio/.p10k.zsh /home/sergio/.vimrc /home/sergio/.xinitrc /home/sergio/.zshrc /home/sergio/.config/alacritty /home/sergio/.config/autorandr /home/sergio/.config/bspwm /home/sergio/.config/dunst /home/sergio/.config/gtk-2.0 /home/sergio/.config/gtk-3.0 /home/sergio/.config/nvim /home/sergio/.config/picom /home/sergio/.config/polybar /home/sergio/.config/ranger /home/sergio/.config/rofi /home/sergio/.config/spicetify /home/sergio/.config/sxhkd /home/sergio/.config/zathura /home/sergio/.config/firefoxcss.sh /home/sergio/.config/ufetch-arch'
alias conn="notify-send 'Connected to:' '$(nmcli | awk '/^wlp2s0/ {print $4}')'"

# Pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

# Colorize grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Jupyter
alias jn='jupyter notebook'

# Ranger
alias media='ranger /run/media'
alias conf='ranger /home/sergio/.config'
alias uni='ranger /home/sergio/Documents/bioeng'
# Git Configs
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

########################################################################
#                    C U S T O M  F U N C T I O N S                    #
########################################################################

# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# The fuck
eval $(thefuck --alias) 

# Extract files
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

source /home/sergio/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/sergio/Programs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

