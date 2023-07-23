# -------------------------------------------
# Called By: magma_loop.mcfunction
# File Name: magma_grenade
# File Purpose: explodes grenade
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.27
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

playsound minecraft:block.fire.ambient player @a ~ ~ ~ 2 0.1
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 2 0.1
playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 2 0.1
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 2 0.1
particle minecraft:flame ~ ~1 ~ 2 1 2 0 500
particle minecraft:large_smoke ~ ~1 ~ 2 1 2 0 250
particle minecraft:lava ~ ~1 ~ 2 1 2 0 250
summon magma_cube ~ ~0.5 ~ {Team:"zMONSTER",Health:64f,Size:7}
scoreboard players set @s DVZ.rclick 0
kill @s