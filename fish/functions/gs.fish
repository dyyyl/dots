function gs --wraps='git stash -m' --description 'alias gs=git stash -m'
    git stash -m $argv
end
