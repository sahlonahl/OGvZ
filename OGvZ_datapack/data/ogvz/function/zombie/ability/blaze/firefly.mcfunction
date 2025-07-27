#> Description: Makes the player fly with invincibility.

# If the player is already fireflying, cancel it and return.
execute if entity @s[scores={ogvz.blaze.firefly.duration.ticks=1..}] run title @s actionbar [ \
  "", \
  {text:"[Firefly]",bold:true,color:"light_purple"}, \
  {text:" Canceled!",color:"light_purple"} \
]
execute if entity @s[scores={ogvz.blaze.firefly.duration.ticks=1..}] run return run function ogvz:zombie/ability/blaze/firefly_stop

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.blaze.firefly.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Firefly]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.blaze.firefly.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.blaze.firefly.cooldown.seconds=1..}] run return 0

# Check if the player can be teleported forward without clipping into solid blocks.
execute positioned ^ ^ ^1.6 unless block ~-0.3 ~ ~-0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~-0.3 ~ ~0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~0.3 ~ ~-0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~0.3 ~ ~0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~-0.3 ~0.9 ~-0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~-0.3 ~0.9 ~0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~0.3 ~0.9 ~-0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~0.3 ~0.9 ~0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~-0.3 ~1.8 ~-0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~-0.3 ~1.8 ~0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~0.3 ~1.8 ~-0.3 #ogvz:go_through run tag @s add temp.fail
execute positioned ^ ^ ^1.6 unless block ~0.3 ~1.8 ~0.3 #ogvz:go_through run tag @s add temp.fail

# Display a fail message, remove the temporary tag and return if the player would be teleported into a solid wall.
execute if entity @s[tag=temp.fail] run title @s actionbar [ \
  "", \
  {text:"[Firefly]",bold:true,color:"red"}, \
  {text:" You can not firefly into solid blocks!",color:"red"} \
]
execute if entity @s[tag=temp.fail] run return run tag @s remove temp.fail

# Teleport the player forward.
execute positioned ^ ^ ^1.6 run tp @s ~ ~ ~

# Set the cooldown.
scoreboard players set @s ogvz.blaze.firefly.cooldown.seconds 15

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Firefly]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation message.
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1.8

# Set the flight duration scoreboard.
scoreboard players set @s ogvz.blaze.firefly.duration.ticks 40

# Multiply gravity by x0 using an attribute.
attribute @s minecraft:gravity modifier add ogvz.blaze.firefly.gravity -1 add_multiplied_total

# Give invisibility and damage immunity.
effect give @s minecraft:invisibility infinite 0 true
effect give @s minecraft:resistance infinite 4 true

# Make the armor invisible.
item modify entity @s armor.head ogvz:remove_item_model_head
item modify entity @s armor.chest ogvz:remove_item_model_chest
item modify entity @s armor.legs ogvz:remove_item_model_legs
item modify entity @s armor.feet ogvz:remove_item_model_feet
