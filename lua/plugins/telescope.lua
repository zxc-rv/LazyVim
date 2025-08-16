return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          width = 0.7,
          height = 0.7,
        },
        preview = {
          hide_on_startup = true,
        },
      },
    })
  end,
}
