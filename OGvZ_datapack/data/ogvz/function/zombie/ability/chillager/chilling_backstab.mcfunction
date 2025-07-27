#> Description: Checks if the player has performed a backstab and slows the targeted player if the check passes.

# Create temporary scoreboards.
scoreboard objectives add temp.rotation.p1 dummy
scoreboard objectives add temp.rotation.p2 dummy
scoreboard objectives add temp.rotation.delta dummy

# Store the attacking player's rotation value (value is in range [-180.0, +180.0]).
execute store result score @s temp.rotation.p1 on attacker run data get entity @s Rotation[0] 1000

# Store the targeted player's rotation value (value is in range [-180.0, +180.0]).
execute store result score @s temp.rotation.p2 run data get entity @s Rotation[0] 1000

# Get the difference (delta) between the 2 rotation values.
execute if score @s temp.rotation.p2 >= @s temp.rotation.p1 store result score @s temp.rotation.delta run scoreboard players get @s temp.rotation.p2
execute if score @s temp.rotation.p2 >= @s temp.rotation.p1 run scoreboard players operation @s temp.rotation.delta -= @s temp.rotation.p1
execute if score @s temp.rotation.p2 < @s temp.rotation.p1 store result score @s temp.rotation.delta run scoreboard players get @s temp.rotation.p1
execute if score @s temp.rotation.p2 < @s temp.rotation.p1 run scoreboard players operation @s temp.rotation.delta -= @s temp.rotation.p2

# Give a temporary tag to the player if the rotation difference is between ±60°.
tag @s[scores={temp.rotation.delta=-60000..60000}] add temp.hit

# Apply slowness, play a sound, show particles and display a message if the player has the temporary tag.
effect give @s[tag=temp.hit] minecraft:slowness 10 1
execute as @s[tag=temp.hit] run playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 1
execute as @s[tag=temp.hit] run particle minecraft:snowflake ~ ~1.0 ~ 0.2 0.4 0.2 0 30
title @a[tag=temp.hit] actionbar [ \
  "", \
  {text:"A Chillager has slowed you!",color:"red"} \
]

# Remove scoreboards.
scoreboard objectives remove temp.rotation.p1
scoreboard objectives remove temp.rotation.p2
scoreboard objectives remove temp.rotation.delta

# Remove temporary tag.
tag @s remove temp.hit
