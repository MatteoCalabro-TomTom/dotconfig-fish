set fish_greeting
eval (/opt/homebrew/bin/brew shellenv)

set -l cargo_home {$HOME}/.cargo
set -l brew_libressl_path {$HOMEBREW_PRE FIX}/opt/libressl

set -gx EDITOR "zed --wait"
set -gx LDFLAGS "-L$brew_libressl_path/lib"
set -gx CPPFLAGS "-I$brew_libressl_path/include"
set -gx GOPATH {$HOME}/.go

fish_add_path $GOPATH/bin $cargo_home/bin $brew_libressl_path/bin

set -gx GPG_TTY (tty)
