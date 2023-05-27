# -------------------------------------------
# Called By: dvz:tick
# File Name: summon_notcrouch2
# File Purpose: 
# Created By: Zaffre
# 
# Created On: 2023.03.14
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

loot spawn ~ ~0.1 ~ loot dvz:blargh
summon firework_rocket ~ ~1.5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;16768396]}]}}}}
playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 1
kill @s