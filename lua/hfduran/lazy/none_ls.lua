return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup(
      {
        sources = {
          null_ls.builtins.diagnostics.mypy.with({
            -- Set custom args for mypy if needed
            command = "mypy",
            extra_args = { "--ignore-missing-imports", "--follow-imports=skip" },
          })
        }
      }
    )
  end,
  requires = { "nvim-lua/plenary.nvim" },
}
