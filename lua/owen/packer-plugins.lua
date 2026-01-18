return require("packer").startup(function(use)
  -- packer
  use "wbthomason/packer.nvim"

  -- autopairs
  use "jiangmiao/auto-pairs"

  -- colors
  use "gruvbox-community/gruvbox"

  -- git signs
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  }

  -- catppuccin
  use {
    "catppuccin/nvim",
    as = "catppuccin",
  }

  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  }

  -- file tree
  use {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" },
    tag = "nightly",
  }

  -- terminal
  use {
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]],
        direction = "float",
        float_opts = {
          border = "curved",
          winblend = 0,
        },
      })
    end,
  }

  -- autotag
  use "windwp/nvim-ts-autotag"

  -- telescope
  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    requires = { "nvim-lua/plenary.nvim" },
  }

  -- tmux
  use "aserowy/tmux.nvim"

  -- LSP

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    requires = {
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
      { "saadparwaiz1/cmp_luasnip" },
    },
  }

  -- harpoon
  use "ThePrimeagen/harpoon"
end)
