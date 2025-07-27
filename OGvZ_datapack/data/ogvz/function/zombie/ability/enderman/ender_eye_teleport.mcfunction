#> Description: Teleport the player to the ender portal.

# Display a teleport message.
title @s actionbar [ \
  "", \
  {text:"[Ender Eye]",bold:true,color:"light_purple"}, \
  {text:" Teleported!",color:"light_purple"} \
]

# Remove the teleporting tag.
tag @s remove ogvz.zombie.teleporting

# Remove the immobilization attributes.
attribute @s minecraft:movement_speed modifier remove ogvz.ender_eye.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.ender_eye.teleporting.jump_strength

# Teleport the player to the nearest ender portal.
execute at @n[type=minecraft:marker,tag=ogvz.marker.ender_portal] run tp @s ~ ~ ~

# Play a sound at the location before and after the teleport.
playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2

# Show particles at the location before and after the teleport.
particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 50
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 50
