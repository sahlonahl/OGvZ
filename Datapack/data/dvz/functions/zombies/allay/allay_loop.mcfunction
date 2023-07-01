# -------------------------------------------
# Called By: dvz:tick
# File Name: allay_loop
# File Purpose: Loop for carried player
# Created By: Galactic
# 
# Created On: 2023.06.27
# Last Modified On: 2023.06.27
# Last Modified By: Galactic
#
# Credit to:
#
# 
# -------------------------------------------

effect give @s regeneration 5 0 true
effect give @s slow_falling 5 0 true
execute at @a[limit=1,sort=nearest,distance=..16,tag=allay] run tp @s ~ ~-2 ~