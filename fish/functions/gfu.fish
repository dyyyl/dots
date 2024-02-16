function gfu --wraps='git checkout main; git pull upstream main; git push origin main' --description 'alias gfu=git checkout main; git pull upstream main; git push origin main'
    git checkout main
    git pull upstream main
    git push origin main
    git checkout -
end
