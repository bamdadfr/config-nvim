local logo = [[
    __                        __          __
   / /_  ____ _____ ___  ____/ /___ _____/ /
  / __ \/ __ `/ __ `__ \/ __  / __ `/ __  / 
 / /_/ / /_/ / / / / / / /_/ / /_/ / /_/ /  
/_.___/\__,_/_/ /_/ /_/\__,_/\__,_/\__,_/   
]]

-- indent
local a = 8
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 4
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
