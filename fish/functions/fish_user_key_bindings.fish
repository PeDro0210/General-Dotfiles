function fish_user_key_bindings
    bind -s p 'set -g fish_cursor_end_mode exclusive' forward-char 'set -g fish_cursor_end_mode inclusive' fish_clipboard_paste
    bind -s P fish_clipboard_paste
end
