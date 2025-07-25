local logo = [[
         _
        (:)_
      ,'    `.
     :        :
     |        |              ___
     |       /|    ______   // _\
     ; -  _,' :  ,'      `. \\  -\
    /          \/          \ \\  :
   (            :  ------.  `-'  |
____\___    ____|______   \______|_______
        |::|           '--`           SSt
        |::|
        |::|
        |::|
        |::;
        `:/
]]

-- indent
local a = 8
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 2
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
