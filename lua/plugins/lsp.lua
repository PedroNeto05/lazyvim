return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              hints = {
                assignVariableTypes = false,
                compositeLiteralFields = false,
                compositeLiteralTypes = false,
                constantValues = false,
                functionTypeParameters = false,
                parameterNames = false,
                rangeVariableTypes = false,
              },
              analyses = {
                ST1000 = false, -- package docs
                ST1020 = false, -- exported funcs
                ST1021 = false, -- exported types
              },
            },
          },
        },
      },
    },
  },
}
