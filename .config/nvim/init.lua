vim.g.mapleader = ' '

-- show line numbers
vim.opt.number = true
-- highlight the current line
vim.opt.cursorline = true
-- highlight only the number of the current line
vim.opt.cursorlineopt = 'number'
-- disable swap
vim.opt.swapfile = false
-- enable mouse mode
vim.opt.mouse = 'a'
-- sync clipboard between OS and neovim
-- remove this option if you want your OS clipboard to remain independent
vim.opt.clipboard = 'unnamedplus'
-- case-insensitive searching unless \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- allow h/l to move across the lines
vim.opt.whichwrap:append("h,l")

vim.cmd [[
  autocmd FileType lua setlocal shiftwidth=2 tabstop=2 expandtab
  autocmd FileType go setlocal shiftwidth=4 tabstop=4
]]

-----------------------
-- lazy.nvim plugins --
-----------------------

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {

  {
    "projekt0n/github-nvim-theme",
    config = function()
      vim.cmd[[colorscheme github_dark_default]]
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', {noremap = true, silent = true})
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require('telescope').setup{
        defaults = {
          layout_strategy = "bottom_pane",
          sorting_strategy = "ascending",
          layout_config = {
            height = 0.4,
            prompt_position = "bottom",
          },
          -- border = false,
          borderchars = { '—', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
          preview = false,
          prompt_prefix = "> ",
          entry_prefix = "",
          selection_caret = "",
        },
      }

      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        -- supported parsers https://tree-sitter.github.io/tree-sitter/#parsers
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
      })

      -- helper function to check treesitter status 
      -- :lua print(TSStatus())
      function TSStatus()
        local cb = vim.api.nvim_get_current_buf()
        return vim.treesitter.highlighter.active[cb] and "on" or "off"
      end

    end,
  },

  {
    "numToStr/Comment.nvim",
    config = function(_, opts)
      require("Comment").setup(opts)
    end,
  },

  -- lsp.zero begin
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  -- lsp.zero end

}

require("lazy").setup(plugins, opts)

---------------
-- lsp setup --
---------------

-- learn more about lsp.zero https://lsp-zero.netlify.app/v3.x/
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
-- https://github.com/williamboman/mason-lspconfig.nvim
require('mason-lspconfig').setup({
  -- available language servers
  -- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})

-----------
-- other --
-----------

function LSPClients()
  local clients = vim.lsp.get_active_clients()
  if next(clients) == nil then
    return "none"
  else
    local client_names = {}
    for _, client in ipairs(clients) do
      table.insert(client_names, client.name)
    end
    return table.concat(client_names, ", ")
  end
end

vim.o.statusline = "%<%f %h%m%r%=%-14.(%l,%c%V%) %P %y [%{v:lua.LSPClients()}]"

