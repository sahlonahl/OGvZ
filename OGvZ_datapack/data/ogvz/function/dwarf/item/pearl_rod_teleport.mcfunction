#> Description: Teleports the player on top of the shrine.

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Pearl Rod]",bold:true,color:"light_purple"}, \
  {text:" Teleported!",color:"light_purple"} \
]

# Remove the teleporting tag from the player.
tag @s remove ogvz.mana.teleporting

# Remove the immobilization attributes from the player.
attribute @s minecraft:movement_speed modifier remove ogvz.pearl_rod.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.pearl_rod.teleporting.jump_strength

# Teleport the player on top of the shrine.
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] run tp @s ~ ~2 ~

# Play a sound at the old and new player position.
playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2

# Show particles at the old and new player position.
particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 50
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 50
