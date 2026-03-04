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
    { "<leader>a", group = "+ai" },
  })
end

return {}
