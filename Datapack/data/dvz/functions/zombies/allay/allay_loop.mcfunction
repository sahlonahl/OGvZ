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

effect give @s slow_falling 2 0 true
execute as @s at @s if entity @s[tag=golem] run tag @a[team=zMONSTER,distance=0.1..5] remove allay_carried
execute as @s at @s if entity @s[tag=miniboss] run tag @a[team=zMONSTER,distance=0.1..5] remove allay_carried
execute as @s at @s if entity @s[tag=slime] run tag @a[team=zMONSTER,distance=0.1..5] remove allay_carried
execute as @s at @s if entity @s[tag=evoker] run tag @a[team=zMONSTER,distance=0.1..5] remove allay_carried
execute as @s at @s if entity @s[tag=enderman] run tag @a[team=zMONSTER,distance=0.1..5] remove allay_carried
execute as @s at @s if entity @s[tag=chargecrp] run tag @a[team=zMONSTER,distance=0.1..5] remove allay_carried
execute as @s at @s if entity @s[tag=pig3] run tag @a[team=zMONSTER,distance=0.1..5] remove allay_carried
execute at @a[limit=1,sort=nearest,distance=..16,tag=allay] run tp @s ~ ~2 ~
