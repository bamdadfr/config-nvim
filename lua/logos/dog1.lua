local logo = [[
                                  .-.
     (___________________________()6 `-,
     (   ______________________   /''"`
     //\\                      //\\
jgs  "" ""                     "" ""
]]

-- indent
local a = 10
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 4
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
