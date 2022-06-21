if status is-interactive
    # Commands to run in interactive sessions can go here
end

echo "source ~/.asdf/asdf.fish" >> ~/.config/fish/config.fish
set -x SHELL (which fish)

alias vim=nvim
