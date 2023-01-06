set fish_greeting
fish_vi_key_bindings

alias vim="nvim"
alias ls="lsd --group-directories-first"
alias cat="bat"
alias df="duf"
abbr -ag config "git --git-dir=$HOME/dotfiles --work-tree=$HOME"

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

function mkcd
  mkdir $argv
  cd $argv
end

abbr -ag ll "ls -al"
abbr -ag la "ls -a"

abbr -ag .. "cd .."
abbr -ag ... "cd ../.."

abbr -ag e "vim"
abbr -ag cn "cargo new"
abbr -ag cr "cargo run"

abbr -ag addall "git add ."
abbr -ag branch "git branch"
abbr -ag commit "git commit -m"
abbr -ag clone "git clone"
abbr -ag pull "git pull origin"
abbr -ag push "git push origin"
abbr -ag stat "git status"
abbr -ag pushup "git push --set-upstream origin main"
abbr -ag remotes "git remote"

abbr -ag tar-gz "tar -xzvf"
abbr -ag lg "lazygit"

abbr -ag i3-conf "vim ~/.config/i3/config"
abbr -ag fish-conf "vim ~/.config/fish/config.fish"

set -gx EDITOR "vim"
set -gx VISUAL "vim"
set -gx MANPAGER "less" 
set -gx TERMINAL "alacritty"

fish_add_path ~/.bin/
fish_add_path ~/.cargo/bin/
fish_add_path ~/.local/bin/
fish_add_path ~/.local/share/pnpm/
fish_add_path ~/.nix-profile/bin/
fish_add_path /nix/var/nix/profiles/default/bin/
fish_add_path /usr/local/texlive/2022/bin/x86_64-linux/
fish_add_path /usr/local/go/bin/
fish_add_path /home/fraol/bin/

set -gx PNPM_HOME "/home/fraol/.local/share/pnpm"

# mapped from nix bash env
set -gx NIX_PROFILES "/nix/var/nix/profiles/default ~/.nix-profile"
set -gx NIX_SSL_CERT_FILE "/etc/pki/tls/certs/ca-bundle.crt" # specific for fedora

set -gx XDG_DATA_DIRS "/home/fraol/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share/:/usr/share/"

set -gx DENO_INSTALL "/home/fraol/.deno"
fish_add_path "$DENO_INSTALL/bin"

eval $(opam env)

if status is-interactive
  colorscript random
  starship init fish | source
end

