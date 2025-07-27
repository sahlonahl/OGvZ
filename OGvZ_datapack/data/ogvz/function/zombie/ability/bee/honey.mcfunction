#> Description: Shoot a ray that heals other zombies.

# Show fail message and return if ability is on cooldown.
execute if entity @s[scores={ogvz.bee.honey.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Honey]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.bee.honey.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.bee.honey.cooldown.seconds=1..}] run return 0

# Set cooldown.
scoreboard players set @s ogvz.bee.honey.cooldown.seconds 10

# Display activation message.
title @s actionbar [ \
  "", \
  {text:"[Honey]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound.
playsound minecraft:entity.bee.death player @a ~ ~ ~ 1 0.8

# Tag the player as the ray origin.
tag @s add temp.ray_origin

# Summons two marker at players feet and gives them a proper tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/bee/honey_loop

# Apply instant healing and abosrption to nearest targeted zombie.
effect give @p[tag=temp.hit,tag=ogvz.zombie] minecraft:instant_health 1 1 true
effect give @p[tag=temp.hit,tag=ogvz.zombie] minecraft:instant_health 2 0 true
effect give @p[tag=temp.hit,tag=ogvz.zombie] minecraft:absorption 60 2

# Gets rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]

# Remove tags
tag @s remove temp.ray_origin
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox
