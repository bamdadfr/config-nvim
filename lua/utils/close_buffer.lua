local function close_buffer()
  local win_id = vim.api.nvim_get_current_win()
  local win_config = vim.api.nvim_win_get_config(win_id)

  vim.cmd("close")

  if vim.fn.winnr("$") > 1 then
    vim.cmd("wincmd =")
  end
end

return close_buffer
