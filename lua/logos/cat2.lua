local logo = [[
      \    /\
       )  ( ')
      (  /  )
jgs    \(__)|
]]

-- indent
local a = 20
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 8
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
