# -------------------------------------------
# Called By: dvz:advancements/piglin_brute_shot
# File Name: piglin_brute_shot
# File Purpose: Piglin_brute
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to:
#
# Comments: 
# -------------------------------------------

execute if entity @s[tag=piglin_brute] run playsound minecraft:entity.piglin_brute.death player @a ~ ~ ~ 2.5 0.1
execute if entity @s[tag=piglin_brute] run particle minecraft:angry_villager ~ ~2 ~ 0.25 0.1 0.25 1 25
effect give @s[tag=piglin_brute] minecraft:speed 5 2
effect give @s[tag=piglin_brute] minecraft:strength 5 2
advancement revoke @s only dvz:piglin_brute_shot