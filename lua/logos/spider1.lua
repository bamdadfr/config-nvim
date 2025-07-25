local logo = [[
                   /\
                  /  \
                 |  _ \                  _
                 | / \ \                / \
                 |/   \ \              /   \
                 /     \ |        /\  /     \
                /|      \| ~  ~  /  \/       \
        _______/_|_______\(o)(o)/___/\_____   \
       /      /  |       (______)     \    \   \_
      /      /   |                     \    \
     /      /    |                      \    \
    /      /     |                       \    \
   /     _/      |                        \    \
  /             _|                         \    \_
_/                                          \
                                             \
                                              \_
                                             ~tahl~
]]

-- indent
local a = 4
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 1
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
