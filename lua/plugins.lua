local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}
    use {'folke/tokyonight.nvim'}
    use {'justinmk/vim-sneak'}
    use {'nvim-treesitter/nvim-treesitter'}
    use {'nvim-tree/nvim-tree.lua',requires = {'nvim-tree/nvim-web-devicons',},tag = 'nightly'}
    use {'nvim-lualine/lualine.nvim',requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0',requires = { {'nvim-lua/plenary.nvim'} }}
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/nvim-compe'}
    use {'hrsh7th/vim-vsnip'}
    use {'hrsh7th/vim-vsnip-integ'}
    use {"williamboman/mason.nvim"}
    use {"windwp/nvim-autopairs"}
    use {"catppuccin/nvim", as = "catppuccin"}
    use {'mhartington/formatter.nvim'}
    use {'mg979/vim-visual-multi'}
    use {"lukas-reineke/indent-blankline.nvim"}
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
