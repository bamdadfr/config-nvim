local logo = [[
 _                         _           _ 
| |                       | |         | |
| |__   __ _ _ __ ___   __| | __ _  __| |
| '_ \ / _` | '_ ` _ \ / _` |/ _` |/ _` |
| |_) | (_| | | | | | | (_| | (_| | (_| |
|_.__/ \__,_|_| |_| |_|\__,_|\__,_|\__,_|
]]

-- indent
local a = 10
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 4
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
