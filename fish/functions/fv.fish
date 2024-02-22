function fv --wraps="fd . | zf | awk '{print $1}' | xargs nvim" --description="fd . | fzf | awk '{print $1}' | xargs nvim"
    fd . | fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | awk '{print $1}' | xargs nvim
end
