# -------------------------------------------
# Called By: dvz:tick
# File Name: shulker_loop
# File Purpose: controls shulker explosives
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.27
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

scoreboard players add @s bullet_age 1
execute if entity @s[scores={bullet_age=20}] run data merge entity @s {Color:2b}
execute if entity @s[scores={bullet_age=40}] run data merge entity @s {Color:6b}
execute if entity @s[scores={bullet_age=60}] run data merge entity @s {Color:0b}
execute if entity @s[scores={bullet_age=70..}] run function dvz:zombies/shulker/shulker_explode