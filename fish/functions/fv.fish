function fv --wraps="fzf | awk '{print $1}' | xargs nvim" --description="fzf | awk '{print $1}' | xargs nvim"
    fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | awk '{print $1}' | xargs nvim
end
