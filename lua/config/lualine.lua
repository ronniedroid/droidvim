require("lualine").setup {
  options = {
    theme = "modus_vivendi",
    section_separators = {"", ""},
    component_separators = {"", ""},
    disabled_filetypes = {},
    icons_enabled = true,
    padding = 1
  },
  sections = {
    lualine_a = {
      {"mode", upper = true, icon = ""}
    },
    lualine_b = {
      {"branch", icon = ""},
      {
        "diff",
        colored = true,
        symbols = {
          added = " ",
          modified = " ",
          removed = " "
        },
        color_added = "#88cf88",
        color_modified = "#a0bfdf",
        color_removed = "#ffa0a0"
      }
    },
    lualine_c = {{"filename", file_status = true, icon = "", path = 0}},
    lualine_x = {{"encoding"}, {"filetype", colored = true}},
    lualine_y = {"progress"},
    lualine_z = {"location"}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {"filename"},
    lualine_x = {"location"},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {}
}
