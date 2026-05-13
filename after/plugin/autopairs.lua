require('nvim-autopairs').setup({
    check_ts = true, -- Enable Treesitter integration
    disable_filetype = { "TelescopePrompt", "vim" }, -- Disable in certain filetypes    
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

