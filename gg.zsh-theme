lines=`stty size|awk '{print $2}'`
PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c %{$reset_color%}"

if [[ $lines -gt 75 ]];then
        #PROMPT="%{$fg_bold[green]%}(%{$fg_bold[blue]%}🍉%n🐶%m🎉%t%{$fg_bold[green]%})-%{$fg_bold[green]%}[%{$fg_bold[cyan]%}📂%~%{$fg_bold[green]%}] %(?:%{$fg_bold[green]%}%#%1{➜%} :%{$fg_bold[red]%}%#%1{➜%} ) %{$reset_color%}"
        PROMPT="%{$fg_bold[green]%}(%{$fg_bold[blue]%}%n🐶%*%{$fg_bold[green]%})-%{$fg_bold[green]%}[%{$fg_bold[cyan]%}📂%~%{$fg_bold[green]%}] %(?:%{$fg_bold[green]%}%#%1{➜%} :%{$fg_bold[red]%}%#%1{➜%} ) %{$reset_color%}"
fi

PROMPT+='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
