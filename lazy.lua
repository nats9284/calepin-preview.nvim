-- This file is used to define the dependencies of this plugin when the user is
-- using lazy.nvim.
--
-- If you are curious about how exactly the plugins are used, you can use e.g.
-- the search functionality on Github.
--
--https://lazy.folke.io/packages#lazy

---@module "lazy"
return {
  {
    "chomosuke/typst-preview.nvim",
    ---@type YaziConfig | {}
    opts = {},
    cmd = {
      "TypstPreview",
      "TypstPreviewStop",
      "TypstPreviewUpdate",
    },
  },
}
