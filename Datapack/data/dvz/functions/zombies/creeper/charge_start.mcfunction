# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: charge_start
# File Purpose: Plays warning sound and schedules charged creeper explosion
# Created By: Zaffre
# 
# Created On: 2023.03.08
# Last Modified On: 2023.03.08
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=creeper] at @s[tag=creeper] run playsound entity.creeper.primed hostile @a ~ ~ ~ 30 0.5
execute as @s[tag=creeper] at @s[tag=creeper] run particle large_smoke ^ ^1 ^ 0.3 0.5 0.3 0.01 250
execute as @s[tag=creeper] at @s[tag=creeper] run schedule function dvz:zombies/creeper/charge_boom 4s replace
effect give @s[tag=creeper] slowness 99 100 true