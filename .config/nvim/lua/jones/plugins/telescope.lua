local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,                   -- move to prev result
        ["<C-j>"] = actions.move_selection_next,                       -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
      },
    },
  },
  extensions = {
    package_info = {
      theme = "ivy",
    },
    persisted = {
      layout_config = { width = 0.55, height = 0.55 },
    },
  },
})

telescope.load_extension("fzf")
telescope.load_extension("package_info")
telescope.load_extension("persisted")
