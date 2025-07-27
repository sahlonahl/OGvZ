#> Description: Raise the ground to form a wall.

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.golem.fissure.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Fissure]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.golem.fissure.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.golem.fissure.cooldown.seconds=1..}] run return 0

# Terrain modifying abilities cannot be used when the player is in adventure mode.
execute if entity @s[gamemode=adventure] run title @s actionbar [ \
  "", \
  {text:"[Fissure]",bold:true,color:"red"}, \
  {text:" You cannnot use this ability right now!",color:"red"} \
]
execute if entity @s[gamemode=adventure] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.golem.fissure.cooldown.seconds 5

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Fissure]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a fissure sound.
playsound minecraft:block.chain.break player @a ~ ~ ~ 8 0.5
playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 8 0.5

# Summon two markers at the players feet and give them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers up a little bit, make them face in the same direction as the player and zero their yaw.
execute positioned ~ ~0.5 ~ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ 0
execute positioned ~ ~0.5 ~ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ 0

# Teleports the ray marker slightly forward.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run tp @s ^ ^ ^1.5

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/golem/fissure_loop

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
kill @e[type=minecraft:marker,tag=temp.fissure]
