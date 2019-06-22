# Author: Gerson Carneiro - 20/06/1990 - gerson.tpc@outlook.com
# A joint of the themes Bira and AlanPeaBody, thanks to the creators.

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='[%{$terminfo[bold]$fg[red]%}%n%{$reset_color%}]'
#    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m %{$reset_color%}'
    local user_symbol='%{$fg[red]% ➤ '
else
    local user_host='[%{$terminfo[bold]$fg[green]%}%n%{$reset_color%}]'
    local user_symbol='%{$fg[green]% ➤ '
fi

local current_dir='[%{$fg[yellow]%}%~%{$reset_color%}]'
local git_branch='$(git_prompt_info)'

PROMPT="${venv_prompt}${user_host}${current_dir}${git_branch}%B${user_symbol}%b "

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$fg[green]%}%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$reset_color%}%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}⚑%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}▴%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%}◒%{$reset_color%}]"

