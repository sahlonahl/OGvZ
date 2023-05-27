# -------------------------------------------
# Called By: dvz:barrieritemtest
# File Name: invis
# File Purpose: Applies invisibility for stealth but weakens chillager  
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.08.19
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

item replace entity @s[tag=chillager] armor.head with air
item replace entity @s[tag=chillager] armor.chest with air
item replace entity @s[tag=chillager] armor.legs with air
item replace entity @s[tag=chillager] armor.feet with air

execute at @s run execute as @s run playsound entity.wither.hurt master @a ~ ~ ~ 1 0.5
execute as @s at @s run particle cloud ^ ^1 ^ 0.5 0.5 0.5 1 50
effect give @s[tag=chillager] invisibility 60 0
clear @s[tag=chillager] carrot_on_a_stick{CustomModelData:1}
tag @s[tag=chillager] add invis