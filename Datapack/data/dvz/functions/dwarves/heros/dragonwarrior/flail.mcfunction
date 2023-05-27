# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: flail
# File Purpose: Flail effect when right clicked by the Dragon Warrior
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: Summons blocks in front of player
# -------------------------------------------

execute as @s[tag=dragon,scores={DVZ.flail.cool=1..}] run tellraw @s ["",{"text":" * [Dragon's Flail] You have ","color":"gold"},{"score":{"name":"@s","objective":"DVZ.flail.cool"},"color":"gold"},{"text":" seconds remaining!","color":"gold"}]
execute if entity @s[tag=dragon,level=..9] run tellraw @s {"text":" * [Dragon's Flail] You need at least 10 Mana!","color":"gold"}
tag @s[tag=dragon,scores={DVZ.flail.cool=0},level=10..] add FLAILuse

execute if entity @s[tag=FLAILuse] at @s run fill ^-2 ^2 ^2 ^2 ^-1 ^2 minecraft:stone_bricks replace #dvz:gothrough
execute if entity @s[tag=FLAILuse] run tellraw @s {"text":" * [Dragon's Flail] Poof!","color":"yellow"}
execute if entity @s[tag=FLAILuse] run execute as @s run particle minecraft:explosion ^ ^1 ^2 1.5 1 1.5 0.01 5
execute if entity @s[tag=FLAILuse] run execute as @s run playsound minecraft:block.nether_bricks.break master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=FLAILuse] run execute as @s run playsound minecraft:block.nether_bricks.break master @a ~ ~ ~ 1 0.7

execute if entity @s[tag=FLAILuse] run execute as @s run xp add @s -10 levels
execute if entity @s[tag=FLAILuse] run scoreboard players set @s DVZ.flail.cool 10
tag @s[tag=dragon] remove FLAILuse