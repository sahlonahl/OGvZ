# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: regrowthstar
# File Purpose: Main branch for Regrowth Star effects, charges mana and displays text
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.04.08
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: 
# -------------------------------------------

execute as @s[tag=assassinslayer,scores={DVZ.rstar.cool=1..}] run tellraw @s ["",{"text":" * [Regrowth Star] You have ","color":"gold"},{"score":{"name":"@s","objective":"DVZ.rstar.cool"},"color":"gold"},{"text":" seconds remaining!","color":"gold"}]
execute if entity @s[tag=assassinslayer,level=..4] run tellraw @s {"text":" * [Regrowth Star] You need at least 5 Mana!","color":"gold"}
tag @s[tag=assassinslayer,scores={DVZ.rstar.cool=0},level=5..] add RSTARuse

execute as @s[tag=RSTARuse,scores={DVZ.crouch=1..}] at @s run function dvz:dwarves/heros/assassinslayer/rstar_crouch
execute as @s[tag=RSTARuse,scores={DVZ.crouch=0}] at @s run function dvz:dwarves/heros/assassinslayer/rstar_not

execute if entity @s[tag=RSTARuse] run execute as @s run xp add @s -5 levels
execute if entity @s[tag=RSTARuse] run scoreboard players set @s DVZ.rstar.cool 5
tag @s[tag=assassinslayer] remove RSTARuse