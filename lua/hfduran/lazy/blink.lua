return {
  'saghen/blink.cmp',
  version = '1.*',
  opts = {
    completion = {
      documentation = {
        auto_show = true,
      },
    },
    keymap = {
      preset = 'super-tab',
      ['<CR>'] = { 'accept', 'fallback' }
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    signature = { enabled = true },
  },
  opts_extend = { 'sources.default' },
}
