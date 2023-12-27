local imSelect = vim.api.nvim_create_augroup('im-select', {clear = true})

-- 自动切换输入法
vim.api.nvim_create_autocmd("InsertLeave", {
  group = imSelect,
  callback = require("user.utils.im-select").macInsertLeave,
})
vim.api.nvim_create_autocmd("InsertEnter", {
  group = imSelect,
  callback = require("user.utils.im-select").macInsertEnter,
})
