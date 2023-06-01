if status is-interactive
    alias cat="bat --paging=never"
    alias ls="lsd"
    alias ll="lsd --long"
    alias find="fd"
    alias ps="procs"
    alias du="dust"

    starship init fish | source
    direnv hook fish | source
    zoxide init --cmd cd fish | source
end
