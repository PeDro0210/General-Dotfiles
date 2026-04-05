if status is-interactive
    zoxide init fish | source
    starship init fish | source
    fzf --fish | source

    set STARSHIP_CONFIG ~/.config/starship.toml

    source ~/.config/fish/env_vars/vi_motions.fish
    source ~/.config/fish/env_vars/aliases.fish
    source ~/.config/fish/env_vars/general_vars.fish
    source ~/.config/fish/env_vars/path_vars.fish

    fastfetch

    fish_vi_key_bindings

end
