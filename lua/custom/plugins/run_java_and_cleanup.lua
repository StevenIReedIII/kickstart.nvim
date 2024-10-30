-- ~/.config/nvim/lua/custom/java_runner.lua

local M = {}

function M.run_java_and_cleanup()
  local file_path = vim.fn.expand("%:p")
  local file_name = vim.fn.expand("%:t:r")

  vim.cmd("!javac " .. file_path)

  if vim.fn.filereadable(file_name .. ".class") == 1 then
    vim.cmd("!java " .. file_name)
    vim.fn.delete(file_name .. ".class")
    print("Execution completed. Class file deleted.")
  else
    print("Compilation failed.")
  end
end

return M
