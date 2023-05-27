# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: ravagerpenalty
# File Purpose: Penalizes ravagers while holding a weapon
# Created By: Zaffre
# 
# Created On: 2022.06.30
# Last Modified On: 2022.06.30
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------
execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run effect give @s weakness 1 2
execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run effect give @s mining_fatigue 1 4

execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect give @s weakness 1 2
execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect give @s mining_fatigue 1 4

execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run effect give @s weakness 1 2
execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run effect give @s mining_fatigue 1 4

execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run effect give @s weakness 1 2
execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run effect give @s mining_fatigue 1 4

execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run effect give @s weakness 1 2
execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run effect give @s mining_fatigue 1 4

execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run effect give @s weakness 1 2
execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run effect give @s mining_fatigue 1 4

execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run effect give @s weakness 1 2
execute as @s[tag=ravager,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run effect give @s mining_fatigue 1 4