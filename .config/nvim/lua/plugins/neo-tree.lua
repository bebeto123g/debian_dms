return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,     -- Не скрывать файлы, начинающиеся с точки
        hide_gitignored = false,   -- (Опционально) Не скрывать файлы из .gitignore
      },
    },
  },
}

