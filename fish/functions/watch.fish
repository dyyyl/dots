function watch --wraps='cargo watch -s "cargo clippy && cargo test"' --description 'alias watch=cargo watch -s "cargo clippy && cargo test"'
    cargo watch -s "cargo clippy && cargo test" $argv
end
