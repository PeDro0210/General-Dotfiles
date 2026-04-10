if status is-interactive

    zoxide init fish | source
    starship init fish | source
    fzf --fish | source

    set STARSHIP_CONFIG ~/.config/starship.toml

    source ~/.config/fish/functions/aliases.fish
    source ~/.config/fish/functions/general_vars.fish
    source ~/.config/fish/functions/vi_motions.fish
    source ~/.config/fish/functions/paths.fish

    set fish_greeting
end
