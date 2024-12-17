vim.g.lsp_zero_extend_lspconfig = 0

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { 'gopls', 'lua_ls' },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  }
})
