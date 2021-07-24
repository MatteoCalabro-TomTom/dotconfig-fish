# https://starship.rs/ https://github.com/starship/starship
if type -q starship
  starship init fish | source
end
# https://github.com/ajeetdsouza/zoxide
if type -q zoxide
    zoxide init fish | source
    alias cd="__zoxide_z"
    alias sd="__zoxide_zi"
end
# https://github.com/sharkdp/bat
if type -q bat
  alias cat="bat --paging=never"
end
# https://github.com/ogham/exa
if type -q exa
  alias ls="exa"
  alias ll="exa -l"
end
# https://github.com/jmacdonald/amp
if type -q amp
  alias vi="amp"
  set -x EDITOR (which amp)
end
# https://github.com/sharkdp/fd
if type -q fd
  alias find="fd"
end
# https://github.com/dalance/procs
if type -q procs
  alias ps="procs"
end
# https://github.com/bootandy/dust
if type -q dust
  alias du="dust"
end
# https://github.com/denoland/deno
if type -q deno
  deno completions fish | source
end
# https://github.com/denisidoro/navi
if type -q navi
  navi widget fish | source
end
# https://github.com/volta-cli/volta
# if type -q volta
#   volta completions fish | source
# end
# https://github.com/Schniz/fnm
# if type -q fnm
#   fnm completions | source
#   fnm env | source
# end
