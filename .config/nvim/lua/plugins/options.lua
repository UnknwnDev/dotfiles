vim.cmd("colorscheme gruvbox") -- set color theme

vim.opt.termguicolors = true --bufferline
require("bufferline").setup{}

-- -- Custom python provider
-- local conda_prefix = vim.env.CONDA_PREFIX
-- if not isempty(conda_prefix) then
--   vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, conda_prefix .. "/bin/python")
--   vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, conda_prefix .. "/bin/python")
-- else
--   vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, "python")
--   vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, "python3")
-- end
