function ftldr --wraps=complete\ -C\ \|\ fzf\ \|\ xargs\ sh\ -c\ \'tldr\ \' --description alias\ ftldr=complete\ -C\ \|\ fzf\ \|\ xargs\ sh\ -c\ \'tldr\ \'
    complete -C | fzf | xargs sh -c 'tldr $0'
end
