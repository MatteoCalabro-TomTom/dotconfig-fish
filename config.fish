set fish_greeting

# PATH first
set -l brew_openssl_path /usr/local/opt/openssl@1.1
test -e $brew_openssl_path && fish_add_path $brew_openssl_path/bin

set -l brew_node_path /usr/local/opt/node@14 || true
test -e $brew_node_path && fish_add_path $brew_node_path/bin || true

## Java
set -l brew_java_path /usr/local/opt/java || true
if test -e $brew_java_path
  fish_add_path $brew_java_path/bin
  set -gx CPPFLAGS "-I$brew_java_path/include"
end

type -q cargo && fish_add_path {$HOME}/.cargo/bin || true
type -q go && fish_add_path (go env GOPATH)/bin || true

## Then completions
type -q direnv && direnv hook fish | source || true

set -gx GPG_TTY (tty)

## iTerm2
# set -l iterm2_shell_integration {$HOME}/.iterm2_shell_integration.fish
# test -e $iterm2_shell_integration && source $iterm2_shell_integration || true
