return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install({ 'lua', 'rust', 'python', 'javascript' })

        vim.api.nvim_create_autocmd('FileType', {
            group = vim.api.nvim_create_augroup('TreesitterSetup', { clear = true }),
            pattern = { 'lua', 'rust', 'python', 'javascript' },
            callback = function(event)
                local lang = vim.treesitter.language.get_lang(vim.bo[event.buf].filetype)
                if lang and vim.treesitter.language.add(lang) then
                    vim.treesitter.start(event.buf, lang)
                    vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end
            end,
        })
    end,
}
