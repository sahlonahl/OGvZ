#> Description: Lobs a barrage of snowballs.

# Hide the custom bars for a bit.
scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.snowman.freeze.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Snowball Barrage]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.snowman.snowball_barrage.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.snowman.snowball_barrage.cooldown.seconds=1..}] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.snowman.snowball_barrage.cooldown.seconds 8

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Snowball Barrage]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.snowball.throw player @s ~ ~ ~ 1 0.50
playsound minecraft:entity.snowball.throw player @s ~ ~ ~ 1 0.63
playsound minecraft:entity.snowball.throw player @s ~ ~ ~ 1 0.75

# Create temporary scoreboard for storing the power of the shot in percentage.
scoreboard objectives add temp.angle dummy

# Set the power scoreboard to the rotation of a summoned marker that faces in the same direction as the player.
# Reading data off of a marker is faster than reading it off of the player.
execute summon minecraft:marker run tag @s add temp.yaw
tp @n[type=minecraft:marker,tag=temp.yaw] @s
execute store result score @s temp.angle run data get entity @n[type=minecraft:marker,tag=temp.yaw] Rotation[1] 1000

# set the power (throw speed) value to a constant
scoreboard objectives add temp.power dummy
scoreboard players set @s temp.power 1800

# Summon a vector marker and point it in the same direction as the player, lastly teleport it 1 block forward, so it can be considered a vector.
execute in minecraft:overworld positioned 0.0 0.0 0.0 summon minecraft:marker run tag @s add temp.vector
execute rotated as @s run rotate @n[type=minecraft:marker,tag=temp.vector] ~ ~
execute as @n[type=minecraft:marker,tag=temp.vector] at @s run tp @s ^ ^ ^1

# Create temporary scoreboards for storing the value of the vector.
scoreboard objectives add temp.vector.x dummy
scoreboard objectives add temp.vector.y dummy
scoreboard objectives add temp.vector.z dummy

# Store the vector values into the created scoreboards.
execute store result score @s temp.vector.x run data get entity @n[type=minecraft:marker,tag=temp.vector] Pos[0] 1000
execute store result score @s temp.vector.y run data get entity @n[type=minecraft:marker,tag=temp.vector] Pos[1] 1000
execute store result score @s temp.vector.z run data get entity @n[type=minecraft:marker,tag=temp.vector] Pos[2] 1000

# Create temporary scoreboards for snowball trajectory deviation.
scoreboard objectives add temp.deviation.x dummy
scoreboard objectives add temp.deviation.y dummy
scoreboard objectives add temp.deviation.z dummy

# Create a temporary scoreboard for the amount of snowballs that will be spawned and shot.
scoreboard objectives add temp.snowball_amount dummy
scoreboard players set @s temp.snowball_amount 64

# Loop to spawn all snowballs.
execute as @s at @s run function ogvz:zombie/ability/snowman/snowball_barrage_loop

# Remove temporary scoreboards.
scoreboard objectives remove temp.power
scoreboard objectives remove temp.angle
scoreboard objectives remove temp.vector.x
scoreboard objectives remove temp.vector.y
scoreboard objectives remove temp.vector.z
scoreboard objectives remove temp.deviation.x
scoreboard objectives remove temp.deviation.y
scoreboard objectives remove temp.deviation.z
scoreboard objectives remove temp.snowball_amount

# Kill all temporary markers.
kill @e[type=minecraft:marker,tag=temp.vector]
kill @e[type=minecraft:marker,tag=temp.yaw]
