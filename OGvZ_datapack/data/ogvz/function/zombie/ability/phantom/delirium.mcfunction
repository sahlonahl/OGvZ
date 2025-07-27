#> Description: Shoot a ray that gives darkness to targeted player.

# Hide the custom bars for a bit.
scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.phantom.delirium.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Delirium]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.phantom.delirium.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.phantom.delirium.cooldown.seconds=1..}] run return 0

# Set a cooldown.
scoreboard players set @s ogvz.phantom.delirium.cooldown.seconds 20

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Delirium]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.phantom.ambient player @a ~ ~ ~ 1 1

# Tag the player as the ray origin.
tag @s add temp.ray_origin

# Summons two marker at players feet and gives them a proper tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/phantom/delirium_loop

# Inflict darkness on all players who have been hit by the ray.
effect give @a[tag=temp.hit] minecraft:darkness 12 0

# Play a sound to the affected player.
execute as @a[tag=temp.hit] at @s run playsound minecraft:entity.phantom.bite player @s ~ ~ ~ 1 1 1

# Display a message to the affected player.
title @a[tag=temp.hit] actionbar [ \
  "", \
  {text:"A Phantom has made you delirious!",color:"red"} \
]

# Gets rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]

# Remove tags
tag @s remove temp.ray_origin
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox
