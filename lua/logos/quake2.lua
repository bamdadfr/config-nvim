local logo = [[
     .,o'       `o,.
   ,o8'           `8o.
  o8'               `8o
 o8:                 ;8o
.88                   88.
:88.                 ,88:
`888                 888'
 888o   `888 888'   o888
 `888o,. `88 88' .,o888'
  `8888888888888888888'
    `888888888888888'
       `::88;88;:'
          88 88
          88 88
          `8 8'
           ` '
]]

-- indent
local a = 18
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 1
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
