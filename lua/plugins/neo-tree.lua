return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<Leader>bf", ":Neotree buffers toggle float<CR>", opts)
      vim.keymap.set("n", "<Leader>e", ":Neotree reveal_force_cwd toggle<CR>", opts)
    end
}
