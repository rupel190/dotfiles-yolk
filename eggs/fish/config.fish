if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -a PATH /home/rupel/.local/bin
set -x EDITOR nvim

neofetch
fish_vi_key_bindings

abbr scu systemctl --user
abbr scus systemctl --user status
abbr scur systemctl --user restart
abbr -a spa sudo pacman
abbr -a vault cd /home/rupel/.local/share/Cryptomator/mnt/Vault
abbr -a hyprconf nvim /home/rupel/.config/hypr

# Needs to be at EOF
zoxide init fish | source
