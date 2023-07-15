# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: allay_drop
# File Purpose: drops carried player
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

execute as @s if entity @s[tag=allay] run title @s actionbar {"text":" * [Drop] Poof!","color":"aqua"}
execute as @s if entity @s[tag=allay] run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.1
execute as @s if entity @s[tag=allay] run tag @a[distance=..5] remove allay_carried
execute as @s if entity @s[tag=allay] run scoreboard players set @s DVZ.rclick 0