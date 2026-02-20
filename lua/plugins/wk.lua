local ok, wk = pcall(require, "which-key")
if ok then
  wk.add({
    { "<leader>a", group = "+ai" },
  })
end

return {}
