# -------------------------------------------
# Called By: dvz:dvz:tick
# File Name: icebomb
# File Purpose: summons ice prison for dwarves who pick up or step on a chillager's ice.
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.04.30
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=dwarves] at @s run fill ~ ~1 ~ ~ ~1 ~ powder_snow replace #dvz:gothrough
execute as @s[tag=dwarves] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 packed_ice replace #dvz:gothrough
execute as @s[tag=dwarves] run clear @s carrot_on_a_stick{CustomModelData:53} 1
scoreboard players set @s[tag=dwarves] DVZ.icy.check 0
execute as @s[tag=dwarves] at @s run playsound entity.player.hurt_freeze master @a ~ ~ ~ 2 0.6
execute as @s[tag=dwarves] run particle snowflake ~ ~1 ~ 1 1 1 0.01 100 