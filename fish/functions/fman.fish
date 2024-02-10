function fman --wraps="complete -C | fzf | xargs sh -c 'man $0'" --description "alias fman=complete -C | fzf | xargs sh -c 'man $0'"
    complete -C | fzf | xargs sh -c 'man $0' # xargs is insanely weird and the only way to pass the first argument to man is via a subshell. Dumb.
end
