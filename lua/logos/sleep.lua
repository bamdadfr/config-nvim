local logo = [[
      _____|~~\_____      _____________
  _-~               \    |    \
  _-    | )     \    |__/   \   \
  _-         )   |   |  |     \  \
  _-    | )     /    |--|      |  |
 __-_______________ /__/_______|  |_________
(                |----         |  |
 `---------------'--\\\\      .`--'
                              `||||
]]

-- indent
local a = 8
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 4
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
