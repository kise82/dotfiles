kg() {
  keygen "${KEYFILE:-$HOME/Documents/main.kf}" | wl-copy
}

enc() {
  openssl enc -aes-256-cbc -iter 12657 -a -pass file:"${SECRET:-$HOME/Documents/secret.key}" -in "$1"
}

dec() {
  openssl enc -d -aes-256-cbc -iter 12657 -a -pass file:"${SECRET:-$HOME/Documents/secret.key}" -in "$1"
}

alias gh-auth='echo -n '\''SSH:kise82@GH-Auth'\'' | kg; ssh-add "$HOME/.ssh/gh-auth"'
alias gh-sign='echo -n '\''SSH:kise82@GH-Sign'\'' | kg; ssh-add "$HOME/.ssh/gh-sign"'

[[ -z "$(command -v hx)" ]] && alias hx='helix'
