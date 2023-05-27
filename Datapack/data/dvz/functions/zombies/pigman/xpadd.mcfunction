# -------------------------------------------
# Called By: dvz:zombies/pigman/eat
# File Name: eat
# File Purpose: Adds xp for each block the hoglin eats
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.08.18
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Originally, the code used "pigman" as a class before they were removed in 1.16; was retrofitted to display "hoglin," but the code does not reflect the change.
# -------------------------------------------

execute as @s[tag=pigman,scores={DVZ.pigeat.check=1..}] run particle large_smoke ~ ~ ~ 0.25 1 0.25 1 5
execute as @s[tag=pigman,scores={DVZ.pigeat=1..},tag=pig2] run playsound entity.donkey.eat master @a ~ ~ ~ 1
execute as @s[tag=pigman,scores={DVZ.pigeat=1..},tag=pig1] run playsound entity.fox.eat master @a ~ ~ ~ 1 1.2
execute as @s[tag=pigman] run xp add @s 1 levels
execute if entity @s[tag=pigman,scores={DVZ.pigeat.check=1..}] run scoreboard players remove @s DVZ.pigeat.check 1
execute if entity @s[tag=pigman,scores={DVZ.pigeat.check=1..}] run function dvz:zombies/pigman/xpadd