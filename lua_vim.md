- vim.opt: behaves like :set
- vim.opt_global: behaves like :setglobal
- vim.opt_local: behaves like :setlocal

- For example, the Vimscript commands

>set smarttab
>set nosmarttab

- are equivalent to

>vim.opt.smarttab = true
>vim.opt.smarttab = false
