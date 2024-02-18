function ftldr --wraps="complete -C | fzf --prompt='tldr> ' | awk '{print $1}' | xargs tldr" --description="complete -C | fzf --prompt='tldr> ' | awk '{print $1}' | xargs tldr"
    complete -C | fzf --prompt='tldr> ' | awk '{print $1}' | xargs tldr
end
