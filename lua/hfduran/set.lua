vim.cmd.colorscheme("moonfly")

vim.opt.clipboard='unnamedplus'
vim.opt.hidden=true

vim.opt.ignorecase=true
vim.opt.smartcase=true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true
vim.opt.smartindent=true

vim.opt.wrap=false

vim.opt.incsearch=true

vim.opt.termguicolors=true

vim.opt.pumheight=10

vim.diagnostic.config({
  virtual_text      = true,
  underline         = true,
  signs             = true,
  update_in_insert  = true,
})

