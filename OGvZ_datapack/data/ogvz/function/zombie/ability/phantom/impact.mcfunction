#> Description: Deal bonus damage to a targeted player depending on how fast the attacker was travelling.

# Tag self and the attacker.
tag @s add temp.victim
execute on attacker run tag @s add temp.attacker

# Store the attacker's Motion data value into a xyz vector.
execute on attacker run data modify storage ogvz:vector xyz set from entity @s Motion

# Seperate the vector into x, y, z components.
execute store result storage ogvz:vector x float 1 run data get storage ogvz:vector xyz[0] 1000
execute store result storage ogvz:vector y float 1 run data get storage ogvz:vector xyz[1] 1000
execute store result storage ogvz:vector z float 1 run data get storage ogvz:vector xyz[2] 1000

# Get euclidean norm of the vector.
function ogvz:macro/euclidean_norm with storage ogvz:vector

# Create a temporary scoreboard and store the maximum damage into it.
scoreboard objectives add temp.damage dummy
scoreboard players set @s temp.damage 25

# Create a temporary scoreboard and store the euclidean norm into it.
scoreboard objectives add temp.velocity dummy
execute store result score @s temp.velocity run data get storage ogvz:euclidean norm

# Deal maximum damage, remove temporary scoreboards and return if the maximum velocity has been reached or exceeded.
execute as @s[scores={temp.velocity=2000..}] store result storage ogvz:damage amount float 1 run scoreboard players get @s temp.damage
execute as @s[scores={temp.velocity=2000..}] run function ogvz:macro/damage_bonus with storage ogvz:damage
execute as @s[scores={temp.velocity=2000..}] run scoreboard objectives remove temp.damage
execute as @s[scores={temp.velocity=2000..}] run return run scoreboard objectives remove temp.velocity

# Create a temporary scoreboard and store a constant into it [maximum_velocity^2 / 10].
scoreboard objectives add temp.const dummy
scoreboard players set @s temp.const 400000

# Calculate [damage * (velocity / max_velocity)^2 * 10], which gives an exponential damage curve scaled by 10.
scoreboard players operation @s temp.damage *= @s temp.velocity
scoreboard players operation @s temp.damage *= @s temp.velocity
scoreboard players operation @s temp.damage /= @s temp.const

# Deal the calculated damage scaled by 0.1.
execute store result storage ogvz:damage amount float 0.1 run scoreboard players get @s temp.damage
function ogvz:macro/damage_bonus with storage ogvz:damage

# Remove temporary scoreboards.
scoreboard objectives remove temp.damage
scoreboard objectives remove temp.velocity
scoreboard objectives remove temp.const

# Remove temporary tags.
tag @s remove temp.victim
execute on attacker run tag @s remove temp.attacker
