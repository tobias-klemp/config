-- require("lspconfig").volar.setup({
--   filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
-- })
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
  },
  opts = {
    servers = {
      eslint = {},
      volar = {},
    },
    setup = {
      volar = function(_, opts)
        require("lspconfig").volar.setup({
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
        })
        return true
      end,
      eslint = function()
        require("lazyvim.util").lsp.on_attach(function(client)
          if client.name == "eslint" then
            client.server_capabilities.documentFormattingProvider = true
          elseif client.name == "tsserver" then
            client.server_capabilities.documentFormattingProvider = false
          elseif client.name == "vue-language-server" then
            client.server_capabilities.documentFormattingProvider = false
          elseif client.name == "volar" then
            client.server_capabilities.documentFormattingProvider = false
          elseif client.name == "prettier" then
            client.server_capabilities.documentFormattingProvider = false
          end
        end)
      end,
    },
  },
}
