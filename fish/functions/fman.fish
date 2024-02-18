function fman --wraps="complete -C | fzf --prompt='man> ' | awk '{print $1}' | xargs man" --description "alias fman=complete -C | fzf --prompt='man> ' | awk '{print $1}' | xargs man"
    complete -C | fzf --prompt='man> ' | awk '{print $1}' | xargs man
end
