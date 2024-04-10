require("tmux").setup({
    copy_sync = {
        enable = true,
        ignore_buffers = { empty = false },
        redirect_to_clipboard = true,
        register_offset = 0,
        sync_clipboard = true,
        sync_registers = true,
        sync_deletes = true,
        sync_unnamed = true,
    }
})

