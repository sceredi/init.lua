return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    version = 'v0.*',
    -- build = 'nix run .#build-plugin',
    opts = {
      keymap = { preset = 'default' },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
      },

      sources = {
        default = { 'copilot', 'lsp', 'path', 'snippets', 'buffer' },
      },

      signature = { enabled = true },
    },
  },
}
