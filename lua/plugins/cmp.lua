return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.window = opts.window or {}

    opts.window.completion = cmp.config.window.bordered({
      border = "rounded", -- pode testar "single"
    })

    opts.window.documentation = cmp.config.window.bordered({
      border = "rounded",
    })

    return opts
  end,
}
