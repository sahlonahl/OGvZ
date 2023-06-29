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

particle minecraft:flame ~ ~ ~ 0 0 0 0.2 200 force
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.25 200 force
particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0.1 100 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2.5 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2.5 0.1
playsound minecraft:entity.blaze.burn master @a ~ ~ ~ 2.5 1
summon magma_cube ~ ~0.5 ~ {Team:"zMONSTER",Health:16f,Size:3}
summon magma_cube ~ ~0.5 ~ {Team:"zMONSTER",Health:16f,Size:3}
summon magma_cube ~ ~0.5 ~ {Team:"zMONSTER",Health:16f,Size:3}
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 fire replace air
kill @s