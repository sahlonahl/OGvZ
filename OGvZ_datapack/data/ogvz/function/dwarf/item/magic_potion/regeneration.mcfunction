#> Description: Give temporary regeneration to the player.
#> Called by: active_detect.mcfunction

# Display a fail message and return if the item is on a cooldown.
execute if entity @s[scores={ogvz.dwarf.regen_potion.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Magic Regeneration Potion]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarf.regen_potion.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.dwarf.regen_potion.cooldown.seconds=1..}] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.dwarf.regen_potion.cooldown.seconds 4

# Display fail message and return if the player doens't have enough mana.
execute unless entity @s[level=20..] run title @s actionbar [ \
  "", \
  {text:"[Magic Regeneration Potion]",bold:true,color:"red"}, \
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
  {text:"[Magic Regeneration Potion]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1

# Give the player temporary regeneration and instant health. (note: effect level is always +1 compared to the number written)
effect give @s minecraft:regeneration 5 3
# effect give @s instant_health 1 0
