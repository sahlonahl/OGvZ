#> Description: Creates a bridge made of ice.

# Hides the custom bars for a bit.
scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.chillager.ice_bridge.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Ice Bridge]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.chillager.ice_bridge.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.chillager.ice_bridge.cooldown.seconds=1..}] run return 0

# Terrain modifying abilities cannot be used when the player is in adventure mode.
execute if entity @s[gamemode=adventure] run title @s actionbar [ \
  "", \
  {text:"[Ice Bridge]",bold:true,color:"red"}, \
  {text:" You cannnot use this ability right now!",color:"red"} \
]
execute if entity @s[gamemode=adventure] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.chillager.ice_bridge.cooldown.seconds 20

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Ice Bridge]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 0.5

# Summons two marker at players feet and gives them a proper tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Rotate the markers the same as the player, set their yaw to 0°, teleport them forward a little, then rotate them the same as the player again.
execute rotated as @s rotated ~ 0 positioned ^ ^ ^1.84 rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute rotated as @s rotated ~ 0 positioned ^ ^ ^1.84 rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/chillager/ice_bridge_loop

# Place ice at every ice marker created during ray casting.
execute as @e[type=minecraft:marker,tag=temp.ice] at @s run setblock ~ ~ ~ minecraft:packed_ice

# Kill all old ice markers from previously used ice bridges if they are on the same block as the new ones.
execute as @e[type=minecraft:marker,tag=temp.ice] at @s run kill @e[type=minecraft:marker,tag=ogvz.ice,distance=..0.1]

# Add tags to the ice markers.
tag @e[type=minecraft:marker,tag=temp.ice] add ogvz.kill_on_reload
tag @e[type=minecraft:marker,tag=temp.ice] add ogvz.ice

# Create a temporary scoreboard and set it to the base melt time in ticks (1 second = 20 ticks).
scoreboard objectives add temp.ice_melt_base.ticks dummy
scoreboard players set @s temp.ice_melt_base.ticks 1200

# Set the melt scoreboard for every new ice marker incrementally in order from closest to furthest marker. Also removes the temporary tag.
execute as @s at @n[type=minecraft:marker,tag=temp.ray_origin] run function ogvz:zombie/ability/chillager/ice_bridge_loop_2

# Remove temporary scoreboard.
scoreboard objectives remove temp.ice_melt_base.ticks

# Gets rid of the ray markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
