function ip --wraps="dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com" --description 'Get your IP address'
    switch $argv[1]
        case public
            dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com | tr -d '"'
            return
        case local
            ipconfig getifaddr en0
            return
        case ""
            echo "Your public IP is:"
            dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com | tr -d '"'

            echo

            echo "Your local IP is:"
            ipconfig getifaddr en0
            return
    end
end
