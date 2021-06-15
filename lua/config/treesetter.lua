require "nvim-treesitter.configs".setup {
  ensure_installed = {"javascript", "rust", "bash", "css", "html", "json", "lua", "svelte", "vue"},
  highlight = {
    enable = true
  },
  context_commentstring = {
    enable = true
  }
}
