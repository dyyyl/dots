function gsl --wraps='git shortlog --summary --numbered --all -e' --description 'alias gsl=git shortlog --summary --numbered --all -e'
  git shortlog --summary --numbered --all -e $argv
        
end
