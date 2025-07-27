#> Description: Shoot a fireball.

# Display a fail message and return if ability is on cooldown.
execute if entity @s[scores={ogvz.blaze.fireball.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Fireball]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.blaze.fireball.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.blaze.fireball.cooldown.seconds=1..}] run return 0

# Set cooldown.
scoreboard players set @s ogvz.blaze.fireball.cooldown.seconds 8

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Fireball]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1

# Summon a vector marker and point it in the same direction as the player, lastly teleport it forward, so it can be considered a vector.
# You can change the speed of the fireball by modifying the length of the marker teleport.
execute in minecraft:overworld positioned 0.0 0.0 0.0 summon minecraft:marker run tag @s add temp.vector
execute rotated as @s run rotate @n[type=minecraft:marker,tag=temp.vector] ~ ~
execute as @n[type=minecraft:marker,tag=temp.vector] at @s run tp @s ^ ^ ^0.1

# Summon a small fireball and give it a temporary tag.
execute at @s anchored eyes positioned ^ ^ ^0.5 summon minecraft:small_fireball run tag @s add temp.processing

# Set the fireball's acceleration.
data modify entity @n[type=minecraft:small_fireball,tag=temp.processing] acceleration_power set value 0.1d

# Copy the vector values into the motion values of the fireball.
data modify entity @n[type=minecraft:small_fireball,tag=temp.processing] Motion[0] set from entity @n[type=minecraft:marker,tag=temp.vector] Pos[0]
data modify entity @n[type=minecraft:small_fireball,tag=temp.processing] Motion[1] set from entity @n[type=minecraft:marker,tag=temp.vector] Pos[1]
data modify entity @n[type=minecraft:small_fireball,tag=temp.processing] Motion[2] set from entity @n[type=minecraft:marker,tag=temp.vector] Pos[2]

# Set the fireball's owner to the UUID of the player that shot it.
data modify entity @n[type=minecraft:small_fireball,tag=temp.processing] Owner set from entity @s UUID

# Set the fireball's lifetime. With speed of 0.1, acceleration of 0.1 and lifetime of 50 ticks, the fireball travels ~64 blocks.
scoreboard players set @n[type=minecraft:small_fireball,tag=temp.processing] ogvz.blaze.fireball.lifetime.ticks 50

# Summon a marker and give it a temporary tag.
execute summon minecraft:marker run tag @s add temp.processing

# Make the marker ride the fireball.
ride @n[type=minecraft:marker,tag=temp.processing] mount @n[type=minecraft:small_fireball,tag=temp.processing]

# Add a new tag and remove the temporary one from the marker.
tag @n[type=minecraft:marker,tag=temp.processing] add ogvz.projectile.blaze_fireball
tag @n[type=minecraft:marker,tag=temp.processing] remove temp.processing

# Add a new tag and remove the temporary one from the fireball.
tag @n[type=minecraft:small_fireball,tag=temp.processing] add ogvz.projectile.blaze_fireball
tag @n[type=minecraft:small_fireball,tag=temp.processing] remove temp.processing

# Kill the temporary marker.
kill @e[type=minecraft:marker,tag=temp.vector]
