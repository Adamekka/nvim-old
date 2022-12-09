-- vim.api.nvim_create_autocmd('BufWritePos', {
--     group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
--     pattern = 'plugins.lua',
--     command = 'source <afile> | PackerCompile',
-- })

return require('packer').startup({
    function(use)
        -- Package manager
        use('wbthomason/packer.nvim')

        -- Required plugins
        use('nvim-lua/plenary.nvim')

        -- Theme, Icons, Statusbar, Bufferbar
        use({
            'kyazdani42/nvim-web-devicons',
            config = function()
                require('nvim-web-devicons').setup()
            end,
        })
        use({
            'numToStr/Sakura.nvim',
            config = function()
                require('numToStr.plugins.sakura')
            end,
        })
        use({
            'nvim-lualine/lualine.nvim',
            after = 'Sakura.nvim',
            event = 'BufEnter',
            config = function()
                require('numToStr.plugins.lualine')
            end,
        })

        -- Better highlights
        use({
            {
                'nvim-treesitter/nvim-treesitter',
                event = 'CursorHold',
                run = ':TSUpdate',
                config = function()
                    require('numToStr.plugins.treesitter')
                end,
            },
            { 'nvim-treesitter/playground', after = 'nvim-treesitter' },
            { 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' },
            { 'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter' },
            { 'windwp/nvim-ts-autotag', after = 'nvim-treesitter' },
            { 'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter' },
        })

        -- Editor UI Niceties
        use({
            'lukas-reineke/indent-blankline.nvim',
            event = 'BufRead',
            config = function()
                require('numToStr.plugins.indentline')
            end,
        })
        use({
            'norcalli/nvim-colorizer.lua',
            event = 'CursorHold',
            config = function()
                require('colorizer').setup()
            end,
        })

    end
})
