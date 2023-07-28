# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: smash
# File Purpose: Ravager item that can destroy regular and reinforced bricks 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.13
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=ravager,scores={DVZ.smash.cool=1..}] run title @s actionbar ["",{"text":" * [Smash] You can' smash that fast!","color":"dark_purple"}]
execute if entity @s[tag=ravager,scores={DVZ.smash.cool=0},tag=!smashable] run title @s actionbar {"text":" * [Smash] You can't smash here!","color":"dark_purple"}

execute as @s[tag=ravager] at @s[tag=ravager,scores={DVZ.smash.cool=0}] store result score @s DVZ.smash.check run fill ~-1 ~0 ~-1 ~1 ~2 ~1 air replace #dvz:builderblocks
execute as @s[tag=ravager,scores={DVZ.smash.check=1..}] run tag @s add smashable
execute as @s[tag=ravager] at @s[tag=ravager,scores={DVZ.smash.cool=0}] store result score @s DVZ.smash.check run fill ~-1 ~0 ~-1 ~1 ~2 ~1 stone_bricks replace end_stone_bricks
execute as @s[tag=ravager,scores={DVZ.smash.check=1..}] run tag @s add smashable

execute if entity @s[tag=ravager,scores={DVZ.smash.cool=0},tag=smashable] run title @s actionbar {"text":" * [Smash] Poof!","color":"light_purple"}
execute if entity @s[tag=ravager,scores={DVZ.smash.cool=0},tag=smashable] run playsound entity.ravager.attack master @a ~ ~ ~ 1 0.9 0
execute if entity @s[tag=ravager,scores={DVZ.smash.cool=0},tag=smashable] run playsound block.stone.break master @a[distance=..7] ~ ~ ~ 1 1 0

execute as @s[tag=ravager,scores={DVZ.smash.cool=0}] run scoreboard players set @s DVZ.smash.cool 2
tag @s[tag=ravager] remove smashable