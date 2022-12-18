# Enable the subsequent settings only in interactive sessions
# tmux source ~/.tmux.conf
# [[ $TERM != "screen" ]] && exec tmux
case $- in
  *i*) ;;
    *) return;;
esac
alias fzf='''fzf --preview "batcat --style=numbers --color=always --line-range :500 {}"'''
# bind -x '"\C-f": fzf'
# $echo $('''neofetch''')
# xmodmap -e keycode\ 47\ =\ colon\ semicolon
# $echo $('''xmodmap' -e keycode\ 47\ =\ colon\ semicolon'''')

# $echo $('''xmodmap'\ -e\\" keycode\ 47\ =\ colon\ semicolon"'''')
alias title_gen="python3 ~/title_gen.py"
alias back4="back4.sh ~/Downloads/P6E2uJi.gif & 17"
alias neofetch='neofetch --loop --w3m --source /home/leavenowhitespaces/neofetch_icon/tp_seraphim.png'
$echo $('''setxkbmap' -option caps:swapescape'''')
# remap scripts go here
$echo $('''bash' .xinitrc'''')
$echo $('''xset' r rate 360 57'''')
alias fz='(fdfind -H|fzf)'
# alias rxvtc='rxvt-unicode -fn "xft:DejaVu Sans Mono"'
# foo-gif for wallpaper
# $echo $('''back4.sh ~/Downloads/P6E2uJi.gif & 17''')
# timestamp
# PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} %D %T % %{$reset_color%}'


# this was intended for keymapping C-f to modded:fuzzyfinder
# $echo $('''bind' '\ x \'\"\\C-f\":\"f\"\'''')
# $echo $('''bind'\ x \'\"\\C-f\":\"f\"\''''')
# $echo $("""bind -x '\"\C-f\":\"f\"'""")
# $echo $('''bind -x'\ \'\"\\C-f\":\"f\"\''')
alias libre='/usr/bin/librewolf'
alias gv='/usr/bin/gvim'
alias nv='/usr/bin/nvim'
alias fr='~/mixed-fraction-calculator/bin/run'
# alias f='open "$(fdfind -H |fzf)"'
# nvim being used on all files automatically (temporary)
alias f='nvim "$(fdfind -H |fzf)"'
# alias f='nvim "$(fdfind -H |rg .|fzf)"'
alias python=python3
#if setxkbmap doesn't work; disable wayland /etc/gdm3/custom.conf
alias desmos=~/Desmos-Desktop/dist/linux-unpacked/desmos
set -o vi

# Path to your oh-my-bash installation.
export OSH='/home/leavenowhitespaces/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# OSH_THEME="powerline-multiline"
OSH_THEME="agnoster"
# OSH_THEME="purity"
# OSH_THEME="nwinkler_random_colors" # i liked
# OSH_THEME="brainy" #i liked this one
# OSH_THEME="fino-time"
# OSH_THEME="powerline"
# it'll load a random theme each time that oh-my-bash is loaded.
# OSH_THEME="font"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.  One of the following values can
# be used to specify the timestamp format.
# * 'mm/dd/yyyy'     # mm/dd/yyyy + time
# * 'dd.mm.yyyy'     # dd.mm.yyyy + time
# * 'yyyy-mm-dd'     # yyyy-mm-dd + time
# * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
# * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
# * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
# If not set, the default value is 'yyyy-mm-dd'.
# HIST_STAMPS='yyyy-mm-dd'

# Uncomment the following line if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
# OMB_DEFAULT_ALIASES="check"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would youlike to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: 
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash" 
