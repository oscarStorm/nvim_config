local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

--function for the cursor color
local function cursor_color()
    vim.api.nvim_set_hl(0, "Cursor", {
      fg = "#000000", -- Text color: black
      bg = "#956E6A", -- Background color: red
    })
    --this is needed, dont rly understand why.
    vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"
    
    vim.api.nvim_set_hl(0, "CursorLine", {
	bg = "#6B5554",
    })
end


return {
    {
      "neanias/everforest-nvim",
      config = function()
	vim.cmd.colorscheme("everforest")
	enable_transparency()
	cursor_color()
      end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    options = {
		theme = 'everforest',
	    }
	}
    },
}


