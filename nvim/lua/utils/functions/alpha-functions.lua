-- Make the logo a bit more fun with some color!
local function colorize_header(header, colors)
  -- Set the colors in the highlight group.
  for i, color in pairs(colors) do
    -- Create highlight group [StartLogo1, StartLogo2, etc.] with fg set to color.
    local cmd = "hi StartLogo" .. i .. " guifg=" .. color
    vim.cmd(cmd) -- Execute the command.
  end

  local lines = {} -- Create an empty table to store the lines.

  for i, chars in pairs(header) do -- Iterate over each line in the logo.
    local line = {
      type = "text",
      val = chars,
      opts = {
        hl = "StartLogo" .. i, -- Set the corresponding highlight group.
        position = "center", -- Center the text.
      },
    }

    table.insert(lines, line) -- Insert the line into the table.
  end

  return lines -- Return the table of lines.
end

return {
  colorize_header,
}
