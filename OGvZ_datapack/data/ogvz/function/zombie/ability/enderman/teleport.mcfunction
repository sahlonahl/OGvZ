#> Description: Teleport the player to where they are looking.

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.enderman.teleport.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Teleport]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.enderman.teleport.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.enderman.teleport.cooldown.seconds=1..}] run return 0

# Tag the player as the ray origin.
tag @s add temp.ray_origin

# Summons two marker at players feet and gives them a proper tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/enderman/teleport_loop

# If the ray has hit a solid block, perform a check to see if you can be teleported there
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~ ~ #ogvz:go_through run function ogvz:zombie/ability/enderman/teleport_check

# Show fail message if there is no valid teleport spot.
execute unless entity @e[type=minecraft:marker,tag=temp.teleport] run title @s actionbar [ \
  "", \
  {text:"[Teleport]",bold:true,color:"red"}, \
  {text:" Cannot teleport to that location!",color:"red"} \
]

# Show fail message if the ray didn't hit any solid blocks.
execute at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~ ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Teleport]",bold:true,color:"red"}, \
  {text:" That location is too far!",color:"red"} \
]

# Teleport the player if there is a valid teleport spot.
execute at @n[type=minecraft:marker,tag=temp.teleport] align xyz positioned ~0.5 ~ ~0.5 run teleport @s ~ ~ ~

# Apply cooldown if there is a valid teleport spot.
execute if entity @e[type=minecraft:marker,tag=temp.teleport] run scoreboard players set @s ogvz.enderman.teleport.cooldown.seconds 10

# Show activation message if there is a valid teleport spot.
execute if entity @e[type=minecraft:marker,tag=temp.teleport] run title @s actionbar [ \
  "", \
  {text:"[Teleport]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound if there is a valid teleport spot.
execute if entity @e[type=minecraft:marker,tag=temp.teleport] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
execute if entity @e[type=minecraft:marker,tag=temp.teleport] at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1

# Show particles if there is a valid teleport spot.
execute if entity @e[type=minecraft:marker,tag=temp.teleport] run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 50
execute if entity @e[type=minecraft:marker,tag=temp.teleport] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 50

# Cancel create portal ability if teleport is used.
execute as @s[tag=ogvz.zombie.class.enderman.creating_portal] if entity @e[type=minecraft:marker,tag=temp.teleport] at @s run function ogvz:zombie/ability/enderman/create_portal_cancel

# Get rid of the temporary markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
kill @e[type=minecraft:marker,tag=temp.teleport]

# Remove temporary tags.
tag @s remove temp.ray_origin
