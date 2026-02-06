# Ensure SHELL variable is set to fish
set -gx SHELL "/usr/bin/fish"

status is-login; and begin

    # Login shell initialisation
    # Source /etc/profile if it exists
    exec bash -c "test -e /etc/profile && source /etc/profile; exec fish"

end

status is-interactive; and begin

    # Abbreviations
    abbr --add -- cpr 'rsync --archive -hhh --partial --info=stats1,progress2 --modify-window=1'
    abbr --add -- mvr 'rsync --archive -hhh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files'

    # Aliases
    alias cat 'bat --plain'
    alias cd z
    alias diff 'git diff --no-index'
    alias l 'ls -Al'
    alias la 'ls -A'
    alias ll 'ls -l'
    alias ls lsd
    alias tree 'lsd --tree'

    # Interactive shell initialisation
    # Use vi keybindings
    set --global fish_key_bindings fish_vi_key_bindings

    zoxide init fish | source

    # Theme
    starship init fish | source

end
