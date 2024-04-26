function ncport --wraps='nc -z -vv localhost $argv' --description 'alias ncport=nc -z -vv localhost $argv'
    # Scans a port on localhost using nc
    switch $argv[1]
        case redis # Special case for redis.
            nc -z -vv localhost 6379
        case "*"
            nc -z -vv localhost $argv # Default case.
    end
end
