function fman --wraps='complete -C | fzf | xargs man' --description 'alias fman=complete -C | fzf | xargs man'
  complete -C | fzf | xargs man $argv
        
end
