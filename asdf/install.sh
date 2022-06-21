git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add hugo https://github.com/beardix/asdf-hugo.git

cat <<EOT >> ~/.tool-versions
nodejs 16.15.1
golang 1.18
hugo 0.96.0
EOT

asdf install
