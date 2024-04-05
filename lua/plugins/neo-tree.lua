return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.enable_cursor_hijack = true
    opts.popup_border_style = "solid"
    opts.filesystem.follow_current_file.leave_dirs_open = true
    opts.window.mappings = {
      ["<space>"] = false, -- disable space until we figure out which-key disabling
      ["[b"] = "prev_source",
      ["]b"] = "next_source",
      ["w"] = "open",
      ["<2-LeftMouse>"] = "open_with_window_picker",
      ["<cr>"] = "open_with_window_picker",
      ["W"] = "system_open",
      h = "parent_or_close",
      l = "child_or_open",
      Y = "copy_selector",
      ["S"] = "split_with_window_picker",
      ["s"] = "vsplit_with_window_picker",
    }
  end,
}
