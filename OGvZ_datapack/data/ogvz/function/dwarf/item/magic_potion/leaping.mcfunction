#> Description: Give temporary jump boost to the player.

# Display fail message and return if the player doens't have enough mana.
execute unless entity @s[level=20..] run title @s actionbar [ \
  "", \
  {text:"[Magic Leaping Potion]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"20 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=20..] run return 0

# Remove 20 mana (levels) from the player.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 20

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Magic Leaping Potion]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1

# Give the player temporary jump boost.
effect give @s minecraft:jump_boost 15 3
