#> Description: Shoot a beam that creates a clump of cobwebs.

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.spider.web.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Web]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.spider.web.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.spider.web.cooldown.seconds=1..}] run return 0

# Terrain modifying abilities cannot be used when the player is in adventure mode.
execute if entity @s[gamemode=adventure] run title @s actionbar [ \
  "", \
  {text:"[Web]",bold:true,color:"red"}, \
  {text:" You cannnot use this ability right now!",color:"red"} \
]
execute if entity @s[gamemode=adventure] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.spider.web.cooldown.seconds 15

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Web]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:block.cobweb.place player @a ~ ~ ~ 1 0.65

# Tag the player as the ray origin.
tag @s add temp.ray_origin

# Summons two marker at players feet and gives them a proper tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/spider/web_loop

# Place a cobweb at the targeted player's feet. If no player was targeted place cobweb behind the ray marker unless it's not inside a block.
execute as @p[tag=temp.hit] at @s run function ogvz:zombie/ability/spider/web_place
execute unless entity @a[tag=temp.hit] as @n[type=minecraft:marker,tag=temp.ray] at @s unless block ~ ~ ~ #ogvz:go_through positioned ^ ^ ^-0.1 run function ogvz:zombie/ability/spider/web_place

# Get rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]

# Remove temporary tags.
tag @s remove temp.ray_origin
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox
