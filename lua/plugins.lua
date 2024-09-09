local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        'shellRaining/hlchunk.nvim',
        event = { 'BufReadPre', 'BufNewFile' },
    },
    {
        'numToStr/Comment.nvim',
    },
    {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
    },
    {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
    },

}

require('lazy').setup(plugins)
require('lualine').setup{
    options = { theme = 'molokai' },
}
require('hlchunk').setup({
    indent = { enable = true },
    line_num = { enable = true },
    blank = { enable = true },
    chunk = { enable = true },
})
require('Comment').setup({})
require('neo-tree').setup({})
require('treesj').setup({})

