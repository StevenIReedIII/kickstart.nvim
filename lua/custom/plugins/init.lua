-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local java_runner = require("custom.java_runner")

vim.api.nvim_set_keymap("n", "<leader>jr", ":lua require('custom.java_runner').run_java_and_cleanup()<CR>", { noremap = true, silent = true })


return {}
