#> Description: Displays a message about the game status.

# If the game isn't set up yet, then tell the player the game is still being set up. (0 - setup phase)
execute as @s if score &ogvz ogvz.game.phase matches 0 run tellraw @s [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"The game is still being set up!\n",bold:true,color:"gold"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Please wait for admins to set up the game.",color:"yellow"} \
]

# If the game is in progress, then tell the player the game has already begun.
execute as @s if score &ogvz ogvz.game.phase matches 1..5 run tellraw @s [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"The game has already begun!\n",bold:true,color:"gold"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Right-Click",color:"gold"}, \
  {text:" your ",color:"yellow"}, \
  {text:"Magma Cream",color:"gold"}, \
  {text:" and select your class.",color:"yellow"} \
]

# If the game has ended, tell the player the game has ended. (6 - game over phase)
execute if score &ogvz ogvz.game.phase matches 6 run tellraw @s [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"The game has ended!\n",bold:true,color:"gold"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Please wait for admins to reset the game.",color:"yellow"} \
]
