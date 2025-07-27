#> Description: Displays the dwarf death message and remaining dwarf count in chat.

# Instead of recalculating the amount of dwarves, the dwarf count is reduced by 1.
execute as @s run scoreboard players remove Dwarves ogvz.game.player_count 1

# The default "> The dwarf [player] has fallen." or the player's custom death message.
execute as @s at @s run function ogvz:misc/custom_death_message

# "> X dwar(f/ves) remain(s)!"
execute unless score Dwarves ogvz.game.player_count matches 1 run tellraw @a [ \
  "", \
  {text:"▶ ",bold:true,color:"red"}, \
  {"score":{"objective":"ogvz.game.player_count","name":"Dwarves"},color:"red",bold:true}, \
  {text:" dwarves remain!",color:"red"} \
]
execute if score Dwarves ogvz.game.player_count matches 1 run tellraw @a [ \
  "", \
  {text:"▶ ",bold:true,color:"red"}, \
  {"score":{"objective":"ogvz.game.player_count","name":"Dwarves"},color:"red",bold:true}, \
  {text:" dwarf remains!",color:"red"} \
]
