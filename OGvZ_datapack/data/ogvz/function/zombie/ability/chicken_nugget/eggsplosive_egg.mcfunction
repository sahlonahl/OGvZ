#> Description: Throw an egg that explodes on impact.

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.chicken_nugget.eggsplosive_egg.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Eggsplosive Egg]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.chicken_nugget.eggsplosive_egg.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.chicken_nugget.eggsplosive_egg.cooldown.seconds=1..}] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.chicken_nugget.eggsplosive_egg.cooldown.seconds 3

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Eggsplosive Egg]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Summon an egg and give it a temporary tag.
execute summon minecraft:egg run tag @s add temp.processing

# Teleport the egg to the player's eyes and make it face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:egg,tag=temp.processing] ~ ~ ~ ~ ~

# Summon an area effect cloud, give it a tag, make it invisible, set it's owner to the player's UUID and make it ride the egg.
summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Tags:["temp.processing"]}
tag @n[type=minecraft:area_effect_cloud,tag=temp.processing] add ogvz.projectile.eggsplosive_egg
data modify entity @n[type=minecraft:area_effect_cloud,tag=temp.processing] Owner set from entity @s UUID
ride @n[type=minecraft:area_effect_cloud,tag=temp.processing] mount @n[type=minecraft:egg,tag=temp.processing]
tag @n[type=minecraft:area_effect_cloud,tag=temp.processing] remove temp.processing

# Summon a vector marker and point it in the same direction as the player then teleport it 1.5 block forward, so it can be considered a vector with magnitude of 1.5.
execute in minecraft:overworld positioned 0.0 0.0 0.0 summon minecraft:marker run tag @s add temp.vector
execute rotated as @s run rotate @n[type=minecraft:marker,tag=temp.vector] ~ ~
execute as @n[type=minecraft:marker,tag=temp.vector] at @s run tp @s ^ ^ ^1.5

# Copy the position of the vector to the motion of egg.
data modify entity @n[type=minecraft:egg,tag=temp.processing] Motion set from entity @n[type=minecraft:marker,tag=temp.vector] Pos

# Remove the temporary tag.
tag @n[type=minecraft:egg,tag=temp.processing] remove temp.processing

# Kill the vector.
kill @e[type=minecraft:marker,tag=temp.vector]
