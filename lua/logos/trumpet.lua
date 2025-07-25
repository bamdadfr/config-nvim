local logo = [[
                     /|
       =  =  =      / |
  ____| || || |____/  | -_-_-_-_-_-_
|)----| || || |____   |     AH
  ((  | || || |  ))\  | _-_-_-_-_-_-
   \\_|_||_||_|_//  \ |
    \___________/    \|
]]

-- indent
local a = 14
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 4
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
