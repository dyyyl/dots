function fv --wraps="fzf | awk '{print $1}' | xargs nvim" --description="fzf | awk '{print $1}' | xargs nvim"
    fzf | awk '{print $1}' | xargs nvim
end
