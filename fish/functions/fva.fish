function fva --wraps="fd . | fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | awk '{print }' | xargs nvim"
    fd . | fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | awk '{print }' | xargs nvim
end
