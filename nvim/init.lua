local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",

    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("vim-options")
require("lazy").setup("plugins")

--vim.api.nvim_create_autocmd("VimEnter", {
--  command = "set nornu nonu | Neotree reveal",
--})
--vim.api.nvim_create_autocmd("BufEnter", {
--  command = "set rnu nu",
--})