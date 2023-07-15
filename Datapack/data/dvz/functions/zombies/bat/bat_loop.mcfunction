# -------------------------------------------
# Called By: tick.mcfunction
# File Name: bat_loop
# File Purpose: displays health particle
# Created By: Galactic
# 
# Created On: 2023.07.08
# Last Modified On: 2023.07.08
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute if entity @s[tag=dwarves,scores={DVZ.health=..5}] run particle dust 0.671 0.000 0.000 1.5 ~ ~0.9 ~ 0.4 1.2 0.4 0.02 2 force @a[team=zMONSTER]
execute if entity @s[tag=dwarves,scores={DVZ.health=5..10}] run particle dust 0.780 0.416 0.000 1.5 ~ ~0.9 ~ 0.4 1.2 0.4 0.02 2 force @a[team=zMONSTER]
execute if entity @s[tag=dwarves,scores={DVZ.health=10..15}] run particle dust 0.780 0.729 0.000 1.5 ~ ~0.9 ~ 0.4 1.2 0.4 0.02 2 force @a[team=zMONSTER]
execute if entity @s[tag=dwarves,scores={DVZ.health=15..20}] run particle dust 0.027 0.780 0.000 1.5 ~ ~0.9 ~ 0.4 1.2 0.4 0.02 2 force @a[team=zMONSTER]