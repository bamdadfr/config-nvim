-- Utility function to normalize logo alignment
local function normalize_logo(logo_string)
  -- Split the logo into lines
  local lines = {}
  for line in (logo_string .. "\n"):gmatch("(.-)\n") do
    table.insert(lines, line)
  end

  -- Calculate the maximum line length
  local max_length = 0
  for _, line in ipairs(lines) do
    if #line > max_length then
      max_length = #line
    end
  end

  -- Add trailing spaces to lines shorter than max length
  local normalized_lines = {}
  for _, line in ipairs(lines) do
    local padded_line = line .. string.rep(" ", max_length - #line)
    table.insert(normalized_lines, padded_line)
  end

  -- Join the lines back together
  return table.concat(normalized_lines, "\n")
end

return normalize_logo
