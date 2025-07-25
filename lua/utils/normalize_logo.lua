-- Function to calculate visual width of a string (handles Unicode)
local function visual_width(str)
  local width = 0
  local i = 1
  while i <= #str do
    local byte = string.byte(str, i)
    if byte < 128 then
      -- ASCII character
      width = width + 1
      i = i + 1
    elseif byte < 224 then
      -- 2-byte UTF-8 character
      width = width + 1
      i = i + 2
    elseif byte < 240 then
      -- 3-byte UTF-8 character (most Unicode box drawing chars)
      width = width + 1
      i = i + 3
    else
      -- 4-byte UTF-8 character
      width = width + 1
      i = i + 4
    end
  end
  return width
end

-- Utility function to normalize logo alignment (Unicode-aware)
local function normalize_logo(logo_string)
  -- Split the logo into lines
  local lines = {}
  for line in (logo_string .. "\n"):gmatch("(.-)\n") do
    table.insert(lines, line)
  end

  -- Calculate the maximum visual width
  local max_width = 0
  for _, line in ipairs(lines) do
    local width = visual_width(line)
    if width > max_width then
      max_width = width
    end
  end

  -- Add trailing spaces to lines shorter than max width
  local normalized_lines = {}
  for _, line in ipairs(lines) do
    local current_width = visual_width(line)
    local spaces_needed = max_width - current_width
    local padded_line = line .. string.rep(" ", spaces_needed)
    table.insert(normalized_lines, padded_line)
  end

  -- Join the lines back together
  return table.concat(normalized_lines, "\n")
end

return normalize_logo
