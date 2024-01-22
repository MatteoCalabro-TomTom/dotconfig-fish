set fish_greeting

set -l homebrew_prefix /opt/homebrew
set -gx HOMEBREW_PREFIX $homebrew_prefix
set -gx HOMEBREW_CELLAR "$homebrew_prefix/Cellar"
set -gx HOMEBREW_REPOSITORY "$homebrew_prefix"
set -gx PATH "$homebrew_prefix/bin" "$homebrew_prefix/sbin" $PATH
set -gx MANPATH "$homebrew_prefix/share/man" $MANPATH
set -gx INFOPATH "$homebrew_prefix/share/info" $INFOPATH

set -gx EDITOR "hx"

set -q GPG_TTY
    or set -gx GPG_TTY (tty)

set -q XDG_CONFIG_HOME
    or set -gx XDG_CONFIG_HOME {$HOME}/.config

set -l go_home "$HOME/.go"
set -gx GOPATH $go_home
set -gx PATH "$go_home/bin" $PATH

set -gx STARSHIP_CONFIG "$XDG_CONFIG_HOME/starship.toml"

set -l brew_libressl_path /opt/homebrew/opt/libressl
if test -e $brew_libressl_path
    fish_add_path $brew_libressl_path/bin
    set -gx LDFLAGS "-L/opt/homebrew/opt/libressl/lib"
    set -gx CPPFLAGS "-I/opt/homebrew/opt/libressl/include"
end

# podman
# set -gx DOCKER_HOST "$HOME/.local/share/containers/podman/machine/qemu/podman.sock"
# podman end

# volta.sh
set -gx VOLTA_HOME "$HOME/.volta"
fish_add_path "$VOLTA_HOME/bin"
# volta.sh end

if status is-interactive
    starship init fish | source
    zoxide init fish | source
    direnv hook fish | source

    alias cat="cat --theme=base16 --paging=never"
end
