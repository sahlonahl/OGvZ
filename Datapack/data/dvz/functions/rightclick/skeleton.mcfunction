# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: skeleton
# File Purpose: Branch for spawning in all skeleton variants
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

#execute if entity @s[tag=zombies,tag=!selectedclass,nbt={SelectedItem:{tag:{Guardian:1b}}}] if predicate dvz:rain run function dvz:rightclick/skeleton/zlguardian

execute if entity @s[tag=zombies,tag=!selectedclass] if entity @e[tag=dvztimer,tag=aiwitherselected] run tag @s add witherskeleton
execute if entity @s[tag=zombies,tag=!selectedclass] if entity @e[tag=dvztimer,tag=playerwitherselected] run tag @s add witherskeleton
execute if entity @s[tag=zombies,tag=!selectedclass] if entity @e[tag=dvztimer,tag=guardianselected] run tag @s add zlguardian
execute if entity @s[tag=zombies,tag=!selectedclass] if entity @e[tag=dvztimer,tag=assassinselected] run tag @s add pillager
execute if entity @s[tag=zombies,tag=!witherskeleton,tag=!zlguardian,tag=!pillager,tag=!selectedclass] run tag @s add skeleton

execute if entity @s[tag=skeleton,tag=!selectedclass] run function dvz:rightclick/skeleton/skeleton
execute if entity @s[tag=witherskeleton,tag=!selectedclass] run function dvz:rightclick/skeleton/witherskeleton
execute if entity @s[tag=zlguardian,tag=!selectedclass] run function dvz:rightclick/skeleton/zlguardian
execute if entity @s[tag=pillager,tag=!selectedclass] run function dvz:rightclick/skeleton/pillager

tag @s add selectedclass