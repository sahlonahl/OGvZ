# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: zombie
# File Purpose: Branch for spawning in all zombie variants
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.08
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

#execute if entity @s[tag=zombies,tag=!selectedclass,nbt={SelectedItem:{tag:{Drowned:1b}}}] if predicate dvz:rain run function dvz:rightclick/zombie/drowned

execute if entity @s[tag=zombies,tag=!selectedclass] if entity @e[tag=dvztimer,tag=aiwitherselected] run tag @s add husk
execute if entity @s[tag=zombies,tag=!selectedclass] if entity @e[tag=dvztimer,tag=playerwitherselected] run tag @s add husk
execute if entity @s[tag=zombies,tag=!selectedclass] if entity @e[tag=dvztimer,tag=guardianselected] run tag @s add drowned
execute if entity @s[tag=zombies,tag=!selectedclass] if entity @e[tag=dvztimer,tag=assassinselected] run tag @s add vindicator
execute if entity @s[tag=zombies,tag=!husk,tag=!drowned,tag=!vindicator,tag=!selectedclass] run tag @s add zombie

execute if entity @s[tag=zombie,tag=!selectedclass] run function dvz:rightclick/zombie/zombie
execute if entity @s[tag=husk,tag=!selectedclass] run function dvz:rightclick/zombie/husk
execute if entity @s[tag=drowned,tag=!selectedclass] run function dvz:rightclick/zombie/drowned
execute if entity @s[tag=vindicator,tag=!selectedclass] run function dvz:rightclick/zombie/vindicator

tag @s add selectedclass