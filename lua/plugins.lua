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

    end
})
