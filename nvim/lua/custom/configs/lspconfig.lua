local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = config.capabilities,
  filetypes={"python"}
})

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = config.capabilities,
  filetypes={"html"}
})

lspconfig.cssls.setup{
  on_attach = on_attach,
  capabilities = config.capabilities,
  filetypes={"css"}
}

lspconfig.jsonls.setup{
  on_attach = on_attach,
  capabilities = config.capabilities,
  filetypes={"json"}
}

lspconfig.tsserver.setup{
  on_attach = on_attach,
  capabilities = config.capabilities,
  filetypes={"javascript"}
}


lspconfig.eslint.setup{
  on_attach = on_attach,
  capabilities = config.capabilities,
  filetypes={"javascript"}
}


