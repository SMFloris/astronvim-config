-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.lsp.lsp-signature-nvim", enabled = true },
  { import = "astrocommunity.motion.harpoon", enabled = true },
  { import = "astrocommunity.motion.leap-nvim", enabled = true },
  -- import/override with your plugins folder
}
