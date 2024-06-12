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
  { import = "astrocommunity.motion.flash-nvim", enabled = true },
  { import = "astrocommunity.motion.nvim-surround", enabled = true },
  {
    import = "astrocommunity.editing-support.chatgpt-nvim",
    enabled = true,
    opts = {
      -- secret-tool store --label=OPENAI_KEY service openai type token
      api_key_cmd = "secret-tool lookup service openai type token",
    },
  },
  -- import/override with your plugins folder
}
