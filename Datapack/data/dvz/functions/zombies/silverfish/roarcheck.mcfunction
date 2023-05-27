# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: roarchech
# File Purpose: replaces nearby infested bricks with air and starts the next function
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=silverfish] store result score @s DVZ.roar.check run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace infested_stone

execute if entity @s[tag=silverfish,scores={DVZ.roar.check=0}] run tellraw @s {"text":" * [Roar] You don't have any eggs to hatch!","color":"dark_purple"}
execute if entity @s[tag=silverfish,scores={DVZ.roar.check=1..}] run tellraw @a {"text":" * ROAR!","color":"light_purple"}

clear @s[tag=silverfish,scores={DVZ.roar.check=1..}] carrot_on_a_stick{CustomModelData:36,Unbreakable:1b} 1
execute as @s if entity @s[tag=silverfish,scores={DVZ.roar.check=1..}] run function dvz:zombies/silverfish/roar