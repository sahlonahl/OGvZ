# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: builder_wand
# File Purpose: Conjures blocks like the DW's flail when right-clicked
# Created By: Zaffre
# 
# Created On: 2023.02.21
# Last Modified On: 2023.02.21
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Uses same tags and score as the flail for now
# -------------------------------------------

execute as @s[tag=dwarves,scores={DVZ.flail.cool=1..}] run tellraw @s ["",{"text":" * [Builder Wand] You have ","color":"gold"},{"score":{"name":"@s","objective":"DVZ.flail.cool"},"color":"gold"},{"text":" seconds remaining!","color":"gold"}]
execute if entity @s[tag=dwarves,level=..9] run tellraw @s {"text":" * [Builder Wand] You need at least 15 Mana!","color":"gold"}
tag @s[tag=dwarves,scores={DVZ.flail.cool=0},level=10..] add FLAILuse

execute if entity @s[tag=FLAILuse] at @s run fill ^-2 ^2 ^2 ^2 ^-1 ^2 minecraft:stone_bricks replace #dvz:gothrough
execute if entity @s[tag=FLAILuse] run tellraw @s {"text":" * [Builder Wand] Poof!","color":"yellow"}
execute if entity @s[tag=FLAILuse] run execute as @s run particle minecraft:explosion ^ ^1 ^2 1.5 1 1.5 0.01 5
execute if entity @s[tag=FLAILuse] run execute as @s run playsound minecraft:block.nether_bricks.break master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=FLAILuse] run execute as @s run playsound minecraft:block.nether_bricks.break master @a ~ ~ ~ 1 0.7

execute if entity @s[tag=FLAILuse] run execute as @s run xp add @s -15 levels
execute if entity @s[tag=FLAILuse] run scoreboard players set @s DVZ.flail.cool 10
tag @s[tag=dwarves] remove FLAILuse