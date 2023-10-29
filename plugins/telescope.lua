return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opt)
    opt.defaults.mappings = {
          i = {
            ["<C-d>"] = require('telescope.actions').delete_buffer,
            ["<C-n>"] = require('telescope.actions').cycle_history_next,
            ["<C-p>"] = require('telescope.actions').cycle_history_prev,
            ["<C-j>"] = require('telescope.actions').move_selection_next,
            ["<C-k>"] = require('telescope.actions').move_selection_previous,
          },
          n = { 
            ["<C-d>"] = require('telescope.actions').delete_buffer,
            q = require('telescope.actions').close 
          },
    }
    return opt -- return final config table
  end,
}

