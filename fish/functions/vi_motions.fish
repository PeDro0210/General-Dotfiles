set fish_cursor_default block blink
set fish_cursor_insert line blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual block

fish_vi_key_bindings

bind -M visual y fish_clipboard_copy
bind p fish_clipboard_paste
