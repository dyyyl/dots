# Prompt config
starship init fish | source

# Go bin path
set PATH $HOME/go/bin $PATH

# Rust cargo noise
set PATH $HOME/.cargo/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# >>> JVM installed by coursier >>>
set -gx JAVA_HOME "/Users/dyyyl/Library/Caches/Coursier/arc/https/github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.21%252B9/OpenJDK11U-jdk_x64_mac_hotspot_11.0.21_9.tar.gz/jdk-11.0.21+9/Contents/Home"
# <<< JVM installed by coursier <<<

# >>> coursier install directory >>>
set -gx PATH "$PATH:/Users/dyyyl/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<

# zoxide
zoxide init fish | source

# fzf
fzf --fish | source

# start zellij if not already running
if set -q ZELLIJ
else
    zellij
end

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
