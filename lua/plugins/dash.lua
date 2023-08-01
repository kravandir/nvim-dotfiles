


require('dashboard').setup({
  theme = 'doom',
  config = {
    -- header = {}, --your header
    center = {
      {
        icon = '󰈞 ',
        icon_hl = 'Files',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'f',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = ':Telescope find_files'
      },
      {
        icon = ' ',
        desc = 'Git branches',
        key = 'b',
        keymap = 'SPC g b',
        action = ':Telecope git_branches'
      },
    },
  }
})
