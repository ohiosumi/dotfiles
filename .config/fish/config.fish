## EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM 'xterm-256color'                         # Sets the terminal type
set EDITOR 'nvim'
set VISUAL 'nvim'
set -x MANPAGER 'sh -c "col -bx | bat -l man -p"'
##set -x MANPAGER 'nvim -c 'set ft=man' -'

export PATH="$HOME/.local/bin:$HOME/.local/bin/scripts:$PATH"


# navigation
alias ..='cd ..'
alias ...='cd ../..'

# nvim
alias vim='nvim'
alias vi= 'nvim'
alias bat='bat --style="plain,numbers,changes,header" --color always --theme TwoDark'

# changing 'ls' to 'exa'
alias ls='exa -a --color=always --group-directories-first --icons' # my preferred listing
alias la='exa -la --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias rf='rm -rf'
alias q='exit'

# colorize grep output (good for log files)
alias grep='grep --color=auto'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias f='nnn -oxHgeDdC'
alias ncmpcpp='ncmpcpp ncmpcpp_directory=$HOME/.config/ncmpcpp/'

# ps
alias psa='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'
alias batt='cat /sys/class/power_supply/BAT1/capacity'

# merge Xresources
alias merge='xrdb -merge ~/.Xresources'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'


set theme_primary                                   1eb980
set theme_secondary                                 ffcf44
set theme_primary_variant                           045d56
set theme_secondary_variant                         ff6859
set theme_hilight                                   b15dff

set -g theme_color_user                             $theme_hilight
set -g theme_color_host                             $theme_primary_variant
set -g theme_color_separator                        brblack
set -g theme_color_normal                           normal
set -g theme_color_time                             $theme_secondary_variant
set -g theme_color_path                             $theme_primary
set -g theme_color_prompt                           $theme_secondary_variant
set -g theme_color_virtualenv                       $theme_secondary
set -g theme_color_status_prefix                    $theme_hilight
set -g theme_color_status_jobs                      $theme_primary
set -g theme_color_status_rw                        $theme_primary
set -g theme_display_group                          no
set -g theme_prompt_segment_separator_color         $theme_primary
set -g theme_prompt_userhost_separator              '.'
set -g __fish_git_prompt_char_branch_begin          '['
set -g __fish_git_prompt_char_branch_end            ']'
set -g __fish_git_prompt_color_branch_begin         brblack
set -g __fish_git_prompt_color_branch_end           brblack
set -g __fish_git_prompt_color_branch               $theme_secondary

set -gx fish_prompt_pwd_dir_length                  1
set -g theme_display_jobs_always                    yes
