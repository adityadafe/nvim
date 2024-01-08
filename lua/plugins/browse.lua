return {
  "lalitmee/browse.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require('browse').setup {
      provider = "google",
      bookmarks = {}
    }
  end
}
