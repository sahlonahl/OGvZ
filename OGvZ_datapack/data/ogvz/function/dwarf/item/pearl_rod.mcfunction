#> Description: Starts the player teleportation to the shrine.

# If the item is used during the warmup, cancel the warmup.
execute as @s[tag=ogvz.mana.teleporting] at @s run return run function ogvz:dwarf/item/pearl_rod_cancel

# Display a fail message and return if the item is still on cooldown.
execute if entity @s[scores={ogvz.dwarf.pearl_rod.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Pearl Rod]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarf.pearl_rod.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.dwarf.pearl_rod.cooldown.seconds=1..}] run return 0

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=50..] run title @s actionbar [ \
  "", \
  {text:"[Pearl Rod]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"50 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=50..] run return 0

# Check if the shrine is obstructed and.
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless block ~-0.5 ~1.5 ~-0.5 #ogvz:go_through run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless block ~-0.5 ~1.5 ~0.5 #ogvz:go_through run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless block ~0.5 ~1.5 ~-0.5 #ogvz:go_through run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless block ~0.5 ~1.5 ~0.5 #ogvz:go_through run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless block ~-0.5 ~2.5 ~-0.5 #ogvz:go_through run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless block ~-0.5 ~2.5 ~0.5 #ogvz:go_through run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless block ~0.5 ~2.5 ~-0.5 #ogvz:go_through run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless block ~0.5 ~2.5 ~0.5 #ogvz:go_through run tag @s add temp.fail

# Display a fail message and return if the shrine is obstructed.
title @s[tag=temp.fail] actionbar [ \
  "", \
  {text:"[Pearl Rod]",bold:true,color:"red"}, \
  {text:" The shrine is obstructed!",color:"red"} \
]
execute as @s[tag=temp.fail] run return run tag @s remove temp.fail

# Check if the shrine is webbed.
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if block ~-0.5 ~1.5 ~-0.5 minecraft:cobweb run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if block ~-0.5 ~1.5 ~0.5 minecraft:cobweb run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if block ~0.5 ~1.5 ~-0.5 minecraft:cobweb run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if block ~0.5 ~1.5 ~0.5 minecraft:cobweb run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if block ~-0.5 ~2.5 ~-0.5 minecraft:cobweb run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if block ~-0.5 ~2.5 ~0.5 minecraft:cobweb run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if block ~0.5 ~2.5 ~-0.5 minecraft:cobweb run tag @s add temp.fail
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if block ~0.5 ~2.5 ~0.5 minecraft:cobweb run tag @s add temp.fail

# Display a fail message and return if the shrine is webbed.
title @s[tag=temp.fail] actionbar [ \
  "", \
  {text:"[Pearl Rod]",bold:true,color:"red"}, \
  {text:" The shrine is webbed!",color:"red"} \
]
execute as @s[tag=temp.fail] run return run tag @s remove temp.fail

# Remove 50 mana (levels) from the player.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 50

# Set the cooldown.
scoreboard players set @s ogvz.dwarf.pearl_rod.cooldown.seconds 60

# Display a teleporting message.
title @s actionbar [ \
  "", \
  {text:"[Pearl Rod]",bold:true,color:"light_purple"}, \
  {text:" Teleporting...",color:"light_purple"} \
]

# Play a sound.
playsound minecraft:block.portal.trigger player @a ~ ~ ~ 1 0.8

# Add a teleporting tag to the player.
tag @s add ogvz.mana.teleporting

# Set the warmup.
scoreboard players set @s ogvz.dwarf.pearl_rod.warmup.seconds 5

# Immobilize the player by multiplying their movement speed and jump strength by x0.
attribute @s minecraft:movement_speed modifier add ogvz.pearl_rod.teleporting.movement_speed -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.pearl_rod.teleporting.jump_strength -1 add_multiplied_total

# Give the player nausea effect.
effect give @s minecraft:nausea 8 0 true
