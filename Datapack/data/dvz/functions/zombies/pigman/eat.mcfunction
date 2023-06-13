# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: eat
# File Purpose: Destroys builder bricks and levels up hoglin
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.13
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Originally, the code used "pigman" as a class before they were removed in 1.16; was retrofitted to display "hoglin," but the code does not reflect the change.
# -------------------------------------------

execute if entity @s[tag=pigman,scores={DVZ.pigeat.cool=0}] at @s[tag=pigman] store result score @s DVZ.pigeat.check run fill ~-1 ~ ~-1 ~1 ~1 ~1 air replace #dvz:builderblocks

execute if entity @s[tag=pigman,scores={DVZ.pigeat.check=0,DVZ.pigeat.cool=0}] run title @s actionbar {"text":" * [Eat] You can't eat this!","color":"dark_red"}
execute as @s[tag=pigman,scores={DVZ.pigeat.cool=1..}] run title @s actionbar ["",{"text":" * [Eat] You can't eat that fast!","color":"dark_red"}]

execute if entity @s[tag=pigman,scores={DVZ.pigeat.check=1..,DVZ.pigeat.cool=0}] run title @s actionbar {"text":" * [Eat] Nom!","color":"red"}
execute if entity @s[tag=pigman,scores={DVZ.pigeat.check=1..,DVZ.pigeat.cool=0}] as @s run playsound entity.fox.eat master @a[tag=zombies] ~ ~ ~ 1 0.7
execute if entity @s[tag=pigman,scores={DVZ.pigeat.check=1..,DVZ.pigeat.cool=0}] run function dvz:zombies/pigman/xpadd
execute as @s[tag=pigman] run scoreboard players set @s DVZ.pigeat.cool 1