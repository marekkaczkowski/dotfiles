-- A slightly altered version of catppucchin mocha
-- stylua: ignore
local mocha = {
   rosewater = '#f5e0dc',
   flamingo  = '#f2cdcd',
   pink      = '#f5c2e7',
   mauve     = '#cba6f7',
   red       = '#f38ba8',
   maroon    = '#eba0ac',
   peach     = '#fab387',
   yellow    = '#f9e2af',
   green     = '#a6e3a1',
   teal      = '#94e2d5',
   sky       = '#89dceb',
   sapphire  = '#74c7ec',
   blue      = '#89b4fa',
   lavender  = '#b4befe',
   --Everforest
   text      = '#9da9a0',
   subtext1  = '#859289',
   subtext0  = '#707c74',
   overlay2  = '#565f63',
   overlay1  = '#495156',
   overlay0  = '#3d4449',
   surface2  = '#414b50',
   surface1  = '#374145',
   surface0  = '#2e373a',
   base      = '#2e383c',
   mantle    = '#272e33',
   crust     = '#1c2123',
}

-- Based on Everforest https://github.com/sainnhe/everforest/blob/master/palette.md#dark
local colorscheme = {
   foreground = mocha.text,
   background = mocha.base,
   cursor_bg = mocha.rosewater,
   cursor_border = mocha.rosewater,
   cursor_fg = mocha.crust,
   selection_bg = mocha.surface2,
   selection_fg = mocha.text,
   ansi = {
      '#424d4a', -- black
      '#c36668', -- red
      '#8ca36a', -- green
      '#ba9e68', -- yellow
      '#699e97', -- blue
      '#b57f99', -- magenta/purple
      '#6ca37a', -- cyan
      '#b3a78e', -- white
   },
   brights = {
      '#4f5b58', -- black
      '#e67e80', -- red
      '#a7c080', -- green
      '#dbbc7f', -- yellow
      '#7fbbb3', -- blue
      '#d699b6', -- magenta/purple
      '#83c092', -- cyan
      '#d3c6aa', -- white
   },
   tab_bar = {
      background = 'rgba(0, 0, 0, 0.4)',
      active_tab = {
         bg_color = mocha.surface2,
         fg_color = mocha.text,
      },
      inactive_tab = {
         bg_color = mocha.surface0,
         fg_color = mocha.subtext1,
      },
      inactive_tab_hover = {
         bg_color = mocha.surface0,
         fg_color = mocha.text,
      },
      new_tab = {
         bg_color = mocha.base,
         fg_color = mocha.text,
      },
      new_tab_hover = {
         bg_color = mocha.mantle,
         fg_color = mocha.text,
         italic = true,
      },
   },
   visual_bell = mocha.red,
   indexed = {
      [16] = mocha.peach,
      [17] = mocha.rosewater,
   },
   scrollbar_thumb = mocha.surface2,
   split = mocha.overlay0,
   compose_cursor = mocha.flamingo,
}

return colorscheme
