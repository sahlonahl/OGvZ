# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: rally
# File Purpose: Dwarven Guard mana item effect when right clicked
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Stacks mana additions based on proximity to Dwarven Guard
# -------------------------------------------

execute as @s[tag=guardian,scores={DVZ.rally.cool=1..}] run title @s actionbar ["",{"text":" * [Rally] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.rally.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute if entity @s[tag=guardian,level=..29] run title @s actionbar {"text":" * [Rally] You need at least 30 Mana!","color":"dark_red"}
tag @s[tag=guardian,scores={DVZ.rally.cool=0},level=30..] add RALLYuse

execute as @s[tag=RALLYuse] run title @s actionbar {"text":" * [Rally] Poof!","color":"red"}

execute as @s if entity @s[tag=RALLYuse] run tag @a add overcharge
execute as @s if entity @s[tag=RALLYuse] run execute at @a[tag=dwarves] run xp add @a[tag=dwarves,distance=..5] 10 levels
execute as @s if entity @s[tag=RALLYuse] run execute at @a[tag=dwarves] run xp add @a[tag=dwarves,distance=5..10] 8 levels
execute as @s if entity @s[tag=RALLYuse] run execute at @a[tag=dwarves] run xp add @a[tag=dwarves,distance=10..15] 6 levels
execute as @s if entity @s[tag=RALLYuse] run execute at @a[tag=dwarves] run xp add @a[tag=dwarves,distance=15..20] 4 levels
execute as @s if entity @s[tag=RALLYuse] run execute at @a[tag=dwarves] run xp add @a[tag=dwarves,distance=20..25] 2 levels
tag @a[tag=overcharge,level=..100] remove overcharge

execute as @s if entity @s[tag=RALLYuse] run execute as @a[tag=dwarves] run playsound block.beacon.activate master @s ~ ~ ~ 1 2


execute as @s[tag=RALLYuse] run xp add @s -30 levels
execute as @s[tag=RALLYuse] run scoreboard players set @s DVZ.rally.cool 60
tag @s[tag=guardian,scores={DVZ.rally.cool=1..}] remove RALLYuse
