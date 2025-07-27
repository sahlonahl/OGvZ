#> Description: Deal damage after the eggsplosion.

# Return if the area effect cloud is still riding the egg.
execute on vehicle run return 0

# Play an explosion sound and show explosion particles.
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1
particle minecraft:explosion ~ ~ ~ 1 1 1 0 8

# Put a temporary tag on the the area effect cloud.
tag @s add temp.center

# Put a temporary tag on the player who shot the egg.
execute on origin run tag @s add temp.origin

# Damage all non-player entities. Reduced damage for wolves and silverfish.
execute as @e[type=!minecraft:player,type=!minecraft:wolf,type=!minecraft:silverfish,distance=..4] run damage @s 14 minecraft:explosion by @p[tag=temp.origin]
execute as @e[type=minecraft:wolf,distance=..4] run damage @s 1.4 minecraft:explosion by @p[tag=temp.origin]
execute as @e[type=minecraft:silverfish,distance=..4] run damage @s 1.4 minecraft:explosion by @p[tag=temp.origin]

# Check if there is no obstruction between the players hit and the area effect cloud.
execute as @a[distance=..4] at @s run function ogvz:zombie/ability/chicken_nugget/eggsplosive_egg_check

# Damage all unobstructed nearby players. Zombies take reduced damage.
execute as @a[tag=temp.hit,tag=ogvz.dwarf,distance=..4] run damage @s 14 minecraft:explosion by @p[tag=temp.origin]
execute as @a[tag=temp.hit,tag=ogvz.zombie,distance=..4] run damage @s 1.4 minecraft:explosion by @p[tag=temp.origin]

# Remove temporary tags.
tag @a remove temp.hit
execute on origin run tag @s remove temp.origin

# Kill area effect cloud.
kill @s
