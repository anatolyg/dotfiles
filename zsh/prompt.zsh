autoload -Uz vcs_info
autoload -U colors && colors 

zstyle ':vcs_info:*' stagedstr '%F{28}●'
zstyle ':vcs_info:*' unstagedstr '%F{11}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git
precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' %F{blue}[%F{green}%b%u%F{blue}]'
    } else {
        zstyle ':vcs_info:*' formats ' %F{blue}[%F{green}%b%u%F{red}●%F{blue}]'
    }
 
    vcs_info
}
 
setopt prompt_subst
PROMPT='%F{cyan}%n@%m %F{yellow}%(!.%1~.%~)${vcs_info_msg_0_}%F{blue} %(?/%F{blue}/%F{red})» %{$reset_color%}'

