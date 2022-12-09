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
    end
})
