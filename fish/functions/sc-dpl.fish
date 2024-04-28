function sc-dpl --wraps='yt-dlp -f bestaudio --extract-audio --audio-format flac --audio-quality 0 ' --description 'alias sc-dpl=yt-dlp -f bestaudio --extract-audio --audio-format flac --audio-quality 0 '
    # pass sc link as argument
    yt-dlp -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 $argv
end
