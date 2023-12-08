return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, config)
    config.window.mappings = {
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
      ["/"] = "noop",
      ["?"] = "noop"
    }
    return config -- return final config table
  end,
}

