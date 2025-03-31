local telescope_builtin = require("telescope.builtin")

-- close tab
vim.api.nvim_set_keymap('n', '<A-q>', '<Cmd>bdel<CR>', { noremap = true })

-- LSP
vim.api.nvim_set_keymap('n', '<C-k><C-f>', '<Cmd>lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>f', '<Cmd>lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gl', '<Cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true, desc="open diagnostics" })
vim.api.nvim_set_keymap('n', 'g]', '<Cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true, desc="next diagnostic"})
vim.api.nvim_set_keymap('n', 'g[', '<Cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true, desc="prev diagnostic"})
vim.api.nvim_set_keymap('n', 'ga', '<Cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc="code actions" })
vim.api.nvim_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true, desc="references"})
vim.api.nvim_set_keymap('n', 'gt', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', { noremap = true, silent = true, desc="type definition"})
vim.api.nvim_set_keymap('n', 'gn', '<Cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true, desc="rename"})

-- bufferline
vim.api.nvim_set_keymap('n', '<leader>l',
  '<Cmd>BufferLinePick<CR>',
{ noremap = true, silent = true, desc="choose buffer line"})

vim.api.nvim_set_keymap('n', '<C-S-L>',
  '<Cmd>BufferLineMoveNext<CR>',
{ noremap = true, silent = true, desc="move bufferline >"})

vim.api.nvim_set_keymap('n', '<C-S-H>',
  '<Cmd>BufferLineMovePrev<CR>',
{ noremap = true, silent = true, desc="move bufferline <"})

vim.api.nvim_set_keymap('n', '<C-l>',
  '<Cmd>BufferLineCycleNext<CR>',
{ noremap = true, silent = true, desc="next bufferline >"})

vim.api.nvim_set_keymap('n', '<C-h>',
  '<Cmd>BufferLineCyclePrev<CR>',
{ noremap = true, silent = true, desc="prev bufferline <"})

-- telescope
vim.keymap.set('n', '<leader>ff',
  telescope_builtin.find_files,
{ noremap = true, silent = true, desc="rename"})

vim.keymap.set('n', '<leader>fl',
  telescope_builtin.live_grep,
{ noremap = true, silent = true, desc="rename"})

vim.keymap.set('n', '<leader>fw',
  telescope_builtin.live_grep,
{ noremap = true, silent = true, desc="rename"})

-- hop
vim.keymap.set('n', '<leader><leader>j',
  '<Cmd>HopLineAC<CR>'
  , { remap = true })
vim.keymap.set('n', '<leader><leader>k',
  '<Cmd>HopLineBC<CR>'
  , { remap = true })
vim.keymap.set('n', '<leader><leader>w',
  '<Cmd>HopWordAC<CR>'
  , { remap = true })
vim.keymap.set('n', '<leader><leader>b',
  '<Cmd>HopWordBC<CR>'
  , { remap = true })

-- nerdtree
vim.keymap.set('n', '<C-n>',
  '<Cmd>NERDTreeToggle<CR>'
  , { remap = true })

-- outline
vim.keymap.set('n', '<C-k>o', '<Cmd>OutlineOpen<CR>')
