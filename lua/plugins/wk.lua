local ok, wk = pcall(require, "which-key")
if ok then
  wk.add({
    {
      "<leader>E",
      function()
        require("oil").open_float()
      end,
      desc = "Explorer (Oil Float)",
    },
    {
      "<leader>W",
      "<cmd>w<CR>",
      desc = "Save File",
    },

    -- grupo AI (normal + visual)
    { "<leader>a", group = "+ai", mode = { "n", "v" } },

    -- ASK (visual)
    {
      "<leader>aa",
      "<Plug>(AvanteAskNew)",
      mode = "v",
      desc = "Avante Ask (seleção)",
    },

    -- EDIT (visual)
    {
      "<leader>ae",
      "<Plug>(AvanteEdit)",
      mode = "v",
      desc = "Avante Edit (seleção)",
    },
  })
end

return {}
