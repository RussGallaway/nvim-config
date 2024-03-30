return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      use_libuv_file_watcher = true,
    })

    vim.keymap.set("n", "<leader>ee", ":Neotree toggle <CR>")
    vim.keymap.set("n", "<leader>ef", ":Neotree filesystem reveal left <CR>")
    vim.keymap.set("n", "<leader>ec", ":Neotree close <CR>")
  end,
}
