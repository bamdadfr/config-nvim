local logo = [[
                       ,-.^._                 _
                     .'      `-.            ,' ;
          /`-.  ,----'         `-.   _  ,-.,'  `
       _.'   `--'                 `-' '-'      ;
      :                         o             ;    __,-.
      ,'    o            Mazar-i-Sharif       ;_,-',.__'--.
     :    Herat                              ,--```    `--'
     :                                      ;
     :                                      :
     ;                                      :
    (                                       ;
     `-.                           *      ,'
       ;                         Kabul   :
     .'                             .-._,'
   .'                               `.
_.'                                .__;
`._                  o            ;
   `.             Kandahar       :    ,---------------------.
     `.               ,..__,---._;    |    AFGHANISTAN      |
       `-.__         :                | Capital: Kabul      |
            `.--.____;      Gr        | Pop: 12700000       |
                                      | Area: 250000 sq.mi. |
                                      |      (647500 sq.km.)|
                                      `---------------------'
]]

-- indent
local a = 0
logo = logo:gsub("([^\n]+)", string.rep(" ", a) .. "%1")

-- bottom padding
local r = 0
logo = string.rep("\n", r) .. logo .. string.rep("\n", r)

return logo
