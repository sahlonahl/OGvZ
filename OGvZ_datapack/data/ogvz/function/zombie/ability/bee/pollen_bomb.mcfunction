#> Description: Throw a pollen bomb which creates a healing zone for zombie on impact.

# Display a fail message and return if ability is on cooldown.
execute if entity @s[scores={ogvz.bee.pollen_bomb.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Pollen Bomb]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.bee.pollen_bomb.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.bee.pollen_bomb.cooldown.seconds=1..}] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.bee.pollen_bomb.cooldown.seconds 20

# Display an activation message
title @s actionbar [ \
  "", \
  {text:"[Pollen Bomb]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.splash_potion.throw player @a ~ ~ ~ 1 0.5

# Summon a vector marker and point it in the same direction as the player, then teleport it forward.
execute in minecraft:overworld positioned 0.0 0.0 0.0 summon minecraft:marker run tag @s add temp.vector
execute rotated as @s run rotate @n[type=minecraft:marker,tag=temp.vector] ~ ~
execute as @n[type=minecraft:marker,tag=temp.vector] at @s run tp @s ^ ^ ^0.5

# Summon a water splash potion that looks like the pollen bomb and explodes with orange particles.
execute anchored eyes positioned ^ ^ ^ run summon minecraft:splash_potion ~ ~ ~ { \
  Tags:["temp.processing"], \
  Item:{ \
    id:"minecraft:honey_bottle", \
    count:1, \
    components:{ \
      "minecraft:item_model":"ogvz:pollen_bomb", \
      "minecraft:potion_contents":{custom_color:16748822} \
    } \
  } \
}

# Summon a marker and make it ride the splash potion.
summon minecraft:marker ~ ~ ~ {Tags:["ogvz.projectile.pollen_bomb","temp.processing"]}
ride @n[type=minecraft:marker,tag=temp.processing] mount @n[type=minecraft:splash_potion,tag=temp.processing]

# Set the lifetime and heal cooldown scoreboards on the pollen bomb.
scoreboard players set @n[type=minecraft:marker,tag=temp.processing] ogvz.marker.pollen_bomb.lifetime.ticks 350
scoreboard players set @n[type=minecraft:marker,tag=temp.processing] ogvz.marker.pollen_bomb.heal_cooldown.ticks 0

# Copy the vector values into the motion values of the splash potion.
data modify entity @n[type=minecraft:splash_potion,tag=temp.processing] Motion[0] set from entity @n[type=minecraft:marker,tag=temp.vector] Pos[0]
data modify entity @n[type=minecraft:splash_potion,tag=temp.processing] Motion[1] set from entity @n[type=minecraft:marker,tag=temp.vector] Pos[1]
data modify entity @n[type=minecraft:splash_potion,tag=temp.processing] Motion[2] set from entity @n[type=minecraft:marker,tag=temp.vector] Pos[2]

# Remove temporary tags.
tag @e[type=minecraft:splash_potion] remove temp.processing
tag @e[type=minecraft:marker] remove temp.processing

# Kill the vector marker.
kill @e[type=minecraft:marker,tag=temp.vector]
