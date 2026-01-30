#> Description: Give all potion effects to the player.
#> Called by: active_detect.mcfunction

# Display fail message and return if the player doens't have enough mana.
execute unless entity @s[level=25..] run title @s actionbar [ \
  "", \
  {text:"[Ultimate Potion]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"25 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=25..] run return 0

# Remove 25 mana (levels) from the player.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 25

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Ultimate Potion]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1

# Give the player temporary regeneration and instant health.
effect give @s minecraft:regeneration 10 1
effect give @s minecraft:instant_health 1 0
effect give @s minecraft:strength 15 0
effect give @s minecraft:speed 15 1
effect give @s minecraft:dolphins_grace 15 0
