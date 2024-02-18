# Prompt config
starship init fish | source

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
