return {
    'neovim/nvim-lspconfig',
    config = function()
        vim.lsp.enable({
            'rust_analyzer', -- Rust
            'ts_ls',         -- JavaScript / TypeScript
            'pyright',       -- Python
            'gdscript',      -- Godot
            'jdtls',         -- Java
        })
    end,
}
