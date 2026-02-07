---@type LazySpec
return {
  {
    "meznaric/key-analyzer.nvim",
    opts = {},
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = ":call mkdp#util#install()",
  },

  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    init = function() vim.g.vimtex_view_method = "zathura" end,
    config = function()
      vim.g.vimtex_view_method = "zathura"
      vim.maplocalleader = ","

      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        options = {
          "-pdf",
          "-shell-escape",
          "-synctex=1",
          "-interaction=nonstopmode",
          "-file-line-error",
          "-outdir=./build",
        },
        callback = 1,
        continuous = 1,
        executable = "latexmk",
      }
    end,
  },
}
