# -------------------------------------------
# Called By: dvz:tick
# File Name: builder_structures
# File Purpose: determines which sub-branch for legendary structures by builers.
# Created By: Sahlonahl
# 
# Created On: 2022.09.19
# Last Modified On: 2022.12.8
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------
execute at @s run particle minecraft:explosion ~ ~3 ~ 4 4 4 0.01 100
execute at @s run playsound minecraft:block.nether_bricks.break master @a ~ ~ ~ 10 0.5
execute at @s run playsound minecraft:block.chain.break master @a ~ ~ ~ 10 0.5
execute at @s run playsound minecraft:block.anvil.destroy master @a ~ ~ ~ 10 0.5

execute at @e[type=minecraft:glow_squid] as @p[tag=dwarves,scores={DVZ.build.struc=1..},y_rotation=45..135] at @s run function dvz:dwarves/tools/builder_structures/west
execute at @e[type=minecraft:glow_squid] as @p[tag=dwarves,scores={DVZ.build.struc=1..},y_rotation=-135..-45] at @s run function dvz:dwarves/tools/builder_structures/east
execute at @e[type=minecraft:glow_squid] as @p[tag=dwarves,scores={DVZ.build.struc=1..},y_rotation=-45..45] at @s run function dvz:dwarves/tools/builder_structures/south
execute at @e[type=minecraft:glow_squid] as @p[tag=dwarves,scores={DVZ.build.struc=1..},tag=!struc] at @s run function dvz:dwarves/tools/builder_structures/north

tag @a remove struc
tp @e[type=minecraft:glow_squid] ~ ~-400 ~
scoreboard players set @a DVZ.build.struc 0