require "nvim-treesitter.configs".setup {
  ensure_installed = {"javascript", "rust", "bash", "css", "html", "json", "lua", "svelte", "vue"},
  highlight = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    config = {
      -- Languages that have a single comment style
      typescript = "// %s",
      css = "/* %s */",
      scss = "/* %s */",
      php = "// %s",
      html = "<!-- %s -->",
      svelte = "<!-- %s -->",
      vue = {
        __default = "<!-- %s -->",
        template = "<!-- %s -->",
        html = "<!-- %s -->",
        javascript = "// %s",
        script = "// %s",
        css = "/* %s */",
        comment = "<!-- %s -->"
      }
    }
  }
}
