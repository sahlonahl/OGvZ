#> Description: Inform players about the selected boss.

execute if score &ogvz ogvz.game.boss matches 1 run tellraw @s [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"The doom event is: ",color:"light_purple"}, \
  {text:"Ender Dragon",bold:true,color:"light_purple"} \
]

execute if score &ogvz ogvz.game.boss matches 2 run tellraw @s [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"The doom event is: ",color:"light_purple"}, \
  {text:"Wither",bold:true,color:"dark_purple"} \
]

execute if score &ogvz ogvz.game.boss matches 3 run tellraw @s [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"The doom event is: ",color:"light_purple"}, \
  {text:"Elder Guardian",bold:true,color:"aqua"} \
]

execute if score &ogvz ogvz.game.boss matches 4 run tellraw @s [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"The doom event is: ",color:"light_purple"}, \
  {text:"Assassin",bold:true,color:"red"} \
]
