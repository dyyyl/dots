-- Yeet the palette.
local catppuccin = require("catppuccin.palettes").get_palette()

local rainbow_earth = {
  catppuccin.red,
  catppuccin.red,
  catppuccin.red,
  catppuccin.peach,
  catppuccin.peach,
  catppuccin.peach,
  catppuccin.yellow,
  catppuccin.yellow,
  catppuccin.green,
  catppuccin.green,
  catppuccin.sky,
  catppuccin.sky,
  catppuccin.blue,
  catppuccin.blue,
  catppuccin.blue,
  catppuccin.mauve,
  catppuccin.mauve,
  catppuccin.mauve,
}

local rainbow_text = {
  -- MAKE
  catppuccin.red,
  catppuccin.red,
  catppuccin.peach,
  catppuccin.peach,
  catppuccin.yellow,
  catppuccin.yellow,
  -- Space
  catppuccin.overlay0,
  catppuccin.overlay0,
  -- COOL
  catppuccin.yellow,
  catppuccin.yellow,
  catppuccin.green,
  catppuccin.green,
  catppuccin.sky,
  catppuccin.sky,
  -- Space
  catppuccin.overlay0,
  catppuccin.overlay0,
  -- STUFF
  catppuccin.sky,
  catppuccin.sky,
  catppuccin.blue,
  catppuccin.blue,
  catppuccin.mauve,
  catppuccin.mauve,
}

return {
  rainbow_earth,
  rainbow_text,
}
