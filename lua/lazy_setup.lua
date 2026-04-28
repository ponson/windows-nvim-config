-- lua\lazy_setup.lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- 1. 檢查 lazy.nvim 是否存在，若無則自動 git clone
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- 最新穩定版
    lazypath,
  })
end

-- 2. 將 lazy.nvim 的路徑加到 runtimepath 的最前面
vim.opt.rtp:prepend(lazypath)

-- 3. 啟動 lazy.nvim (目前先傳入空的套件清單 {})
require("lazy").setup("plugins")
