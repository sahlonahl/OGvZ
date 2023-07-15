# -------------------------------------------
# Called By: slime_bomb_loop.mcfunction
# File Name: slime_bomb_explode
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

playsound minecraft:entity.slime.hurt master @a ~ ~ ~ 4 0.1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 1
particle dust 0.412 1.000 0.471 2 ~ ~1 ~ 2 1 2 0.1 250
particle minecraft:sneeze ~ ~1 ~ 2.5 0.7 2.5 0.01 250
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 lime_stained_glass replace #dvz:builderblocks
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 stone_bricks replace end_stone_bricks
execute as @a[tag=dwarves,distance=..5] at @s run damage @s 7 minecraft:out_of_world
execute as @a[tag=dwarves,distance=..5] at @s run effect give @s minecraft:slowness 5 3 true
kill @s