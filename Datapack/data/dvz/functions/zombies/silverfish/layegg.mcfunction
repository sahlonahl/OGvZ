# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: layegg
# File Purpose: Infests builder blocks to summon silverfish later
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.04.07
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=silverfish] store result score @s DVZ.layegg.check run clear @s iron_nugget 0

execute if entity @s[tag=silverfish,scores={DVZ.layegg.check=0}] run tellraw @s {"text":" * [Lay Egg] You don't have any more eggs!","color":"dark_purple"}
execute as @s[tag=silverfish,scores={DVZ.layegg.cool=1..}] run tellraw @s ["",{"text":" * [Lay Egg] You have ","color":"dark_purple"},{"score":{"name":"@s","objective":"DVZ.layegg.cool"},"color":"dark_purple"},{"text":" seconds remaining!","color":"dark_purple"}]

execute as @s[tag=silverfish] at @s[tag=silverfish,scores={DVZ.layegg.check=1..,DVZ.layegg.cool=0}] store result score @s DVZ.layegg.block run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 infested_stone replace #dvz:builderblocks

execute if entity @s[tag=silverfish,scores={DVZ.layegg.check=1..,DVZ.layegg.block=0,DVZ.layegg.cool=0}] run tellraw @s {"text":" * [Lay Egg] You can't lay eggs here!","color":"dark_purple"}
execute if entity @s[tag=silverfish,scores={DVZ.layegg.check=1..,DVZ.layegg.block=1..,DVZ.layegg.cool=0}] run tellraw @s {"text":" * [Lay Egg] Poof!","color":"light_purple"}
execute if entity @s[tag=silverfish,scores={DVZ.layegg.check=1..,DVZ.layegg.block=1..,DVZ.layegg.cool=0}] run clear @s iron_nugget 1
execute as @s[tag=silverfish,scores={DVZ.layegg.check=1..,DVZ.layegg.block=1..,DVZ.layegg.cool=0}] run playsound entity.silverfish.step master @a[tag=zombies]

execute as @s[tag=silverfish] run scoreboard players set @s DVZ.layegg.cool 1