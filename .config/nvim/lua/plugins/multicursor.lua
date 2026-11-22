return {
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    config = function()
      local mc = require("multicursor-nvim")
      mc.setup()

      local map = vim.keymap.set

      -- Добавить курсор на строку выше или ниже
      map({ "n", "x" }, "<M-Up>", function() mc.lineAddCursor(-1) end)
      map({ "n", "x" }, "<M-Down>", function() mc.lineAddCursor(1) end)

      -- Добавить курсор к следующему/предыдущему совпадению слова
      map({ "n", "x" }, "<leader>n", function() mc.matchAddCursor(1) end)
      map({ "n", "x" }, "<leader>N", function() mc.matchAddCursor(-1) end)

      -- Убрать мультикурсоры
      map({ "n", "x" }, "<Esc>", function() mc.clearCursors() end)
    end,
  },
}
