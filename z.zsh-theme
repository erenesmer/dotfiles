#PROMPT="%~> "
PROMPT='%(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%:${${(%):-%~}}%f$ '
PROMPT+='$(git_prompt_info) '

ZSH_THEME_GIT_PROMPT_PREFIX='%{$fg_bold[white]%}git:(%{$fg[red]%}'
ZSH_THEME_GIT_PROMPT_SUFFIX='%{$reset_color%} '
ZSH_THEME_GIT_PROMPT_DIRTY='%{$fg[white]%}) %{$fg[yellow]%}✗'
ZSH_THEME_GIT_PROMPT_CLEAN='%{$fg[blue]%})'
