-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.github-nvim-theme" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.lsp.lsp-signature-nvim", enabled = true, opts = { hint_enable = true } },
  { import = "astrocommunity.motion.harpoon", enabled = true },
  {
    import = "astrocommunity.motion.leap-nvim",
    enabled = true,
    opts = { highlight_unlabeled_phase_one_targets = true },
  },
  -- import/override with your plugins folder
}
