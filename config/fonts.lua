local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'JetBrainsMono Nerd Font Mono'
local font_size = platform().is_win and 11 or 9

return {
   font = wezterm.font(font),
   font_size = font_size,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'HorizontalLcd', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'HorizontalLcd', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
