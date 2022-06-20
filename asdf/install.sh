git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add hugo https://github.com/beardix/asdf-hugo.git

cat <<EOT >> ~/.tool-versions
golang 1.18
hugo 0.96.0
EOT

asdf install
