 return {
   'mistweaverco/bluloco.nvim',
   lazy = false,
   priority = 1000,
   tag = 'v1.0.0',
   config = function()
     require('bluloco').setup({
       theme = 'dark',
       italic_comments = true,
     })
   end,
 }
