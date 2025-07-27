#> Description: Removes water around the player.

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.blaze.heat_wave.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Heat Wave]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.blaze.heat_wave.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.blaze.heat_wave.cooldown.seconds=1..}] run return 0

# Terrain modifying abilities cannot be used when the player is in adventure mode.
execute if entity @s[gamemode=adventure] run title @s actionbar [ \
  "", \
  {text:"[Heat Wave]",bold:true,color:"red"}, \
  {text:" You cannnot use this ability right now!",color:"red"} \
]
execute if entity @s[gamemode=adventure] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.blaze.heat_wave.cooldown.seconds 10

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Heat Wave]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation message and show particles
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0.75
particle minecraft:flame ~ ~1 ~ 1.25 1.5 1.25 0.05 100

# Get rid of water and waterlogged blocks around the player.
# TODO: There has to be a better way to do this where waterlogged blocks have water removed as well.
fill ~-3 ~-3 ~-3 ~3 ~4 ~3 minecraft:air replace minecraft:water
