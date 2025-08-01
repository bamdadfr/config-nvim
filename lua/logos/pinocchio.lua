local logo = [[
        .
        |\
       /| \
      / |  \
    .'. |   \  
    '.|_(()))))
       ((((/.(
       ,))) _/
      ((((_(              
       )/  \\             
        \__/-)                     /\__
         \_\(\                   .'\ \ '.
         )\ \\\            ___..' o \ \.'
        /  \ \\\           ''---.    \_\
       /    '.\\\    . ' ,       '--.'\_
      /.    .| \-'---- O -           \/O'.
     (_/    \ \| )   ' . '           |O O \___
     /.'.__.'._.'                    | O|_O O/
    /.'.   .'. |                     |O |O O/)
   / O '._.' '.|                     |_O|_O'/
  /         O  |                      ||/  /
 /'._________.'|                      \ )_/ 
/''.-.-.-.-.-.-|                       '. \
'.____________.'                        \ _\
        |/ /mrf                        __'\\
     __(,\_\_ _______  ____   __  ____(_'--_)__
]]

-- indent
local a = 6
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 0
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
