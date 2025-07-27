#> Description: A loop for creating snowball for snowman's snowball barrage.

# Summon a snowball and give it a temporary tag.
execute summon minecraft:snowball run tag @s add temp.processing

# Teleport the snowball to the player's eyes and make it face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:snowball,tag=temp.processing] ~ ~ ~ ~ -45

# Summon an area effect cloud, give it a tag, make it invisible, set it's owner to the player's UUID and make it ride the snowball.
summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Tags:["temp.processing"]}
tag @n[type=minecraft:area_effect_cloud,tag=temp.processing] add ogvz.projectile.snowball_barrage
data modify entity @n[type=minecraft:area_effect_cloud,tag=temp.processing] Owner set from entity @s UUID
ride @n[type=minecraft:area_effect_cloud,tag=temp.processing] mount @n[type=minecraft:snowball,tag=temp.processing]
tag @n[type=minecraft:area_effect_cloud,tag=temp.processing] remove temp.processing

# Create random deviation.
execute store result score @s temp.deviation.x run random value -150..150
execute store result score @s temp.deviation.y run random value -30..30
execute store result score @s temp.deviation.z run random value -150..150

# Add the vector values to the deviation scoreboard so a new scoreboard doesn't have to be created.
scoreboard players operation @s temp.deviation.x += @s temp.vector.x
scoreboard players operation @s temp.deviation.y += @s temp.vector.y
scoreboard players operation @s temp.deviation.z += @s temp.vector.z

# Apply the power percentage to the scoreboard.
scoreboard players operation @s temp.deviation.x *= @s temp.power
scoreboard players operation @s temp.deviation.y *= @s temp.power
scoreboard players operation @s temp.deviation.z *= @s temp.power

# Copy the scoreboards into the motion vector of the snowball.
execute store result entity @n[type=minecraft:snowball,tag=temp.processing] Motion[0] double 0.000001 run scoreboard players get @s temp.deviation.x
execute store result entity @n[type=minecraft:snowball,tag=temp.processing] Motion[1] double 0.000001 run scoreboard players get @s temp.deviation.y
execute store result entity @n[type=minecraft:snowball,tag=temp.processing] Motion[2] double 0.000001 run scoreboard players get @s temp.deviation.z

# Remove the temporary tag from the snowball.
tag @n[type=minecraft:snowball,tag=temp.processing] remove temp.processing

# Repeat function untill all snowballs have been shot.
scoreboard players remove @s temp.snowball_amount 1
execute as @s[scores={temp.snowball_amount=1..}] at @s run function ogvz:zombie/ability/snowman/snowball_barrage_loop
