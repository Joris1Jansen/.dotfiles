require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  -- sync_install = false,

  -- List of parsers to ignore installing
  -- ignore_install = { "javascript" },

  highlight = {
    enable = true,
  },
  incremental_selection = {
      enable = true,
  },
  textobjects = {
      enable = true
  }
}
