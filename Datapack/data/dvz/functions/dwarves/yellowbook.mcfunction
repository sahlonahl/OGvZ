# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: yellowbook
# File Purpose: Main branch for the dwarves' legendary transmute book
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=dwarves,tag=!lbookused] store result score @s DVZ.legend.shard run clear @s minecraft:nether_star{CustomModelData:16575} 0

execute if entity @s[tag=dwarves,scores={DVZ.legend.shard=..4},tag=!lbookused] run title @s actionbar {"text":" * [Legendary Book] You need at least 5 Legendary Shards!","color":"gold"}
execute if entity @s[tag=lbookused] run title @s actionbar {"text":" * [Legendary Book] You can only craft Legendary items once!","color":"gold"}

execute as @s if entity @s[tag=builder,scores={DVZ.legend.shard=5..},tag=!lbookused] run function dvz:dwarves/yellowbook/builder
execute as @s if entity @s[tag=alchemist,scores={DVZ.legend.shard=5..},tag=!lbookused] run function dvz:dwarves/yellowbook/alchemist
execute as @s if entity @s[tag=baker,scores={DVZ.legend.shard=5..},tag=!lbookused] run function dvz:dwarves/yellowbook/baker
execute as @s if entity @s[tag=blacksmith,scores={DVZ.legend.shard=5..},tag=!lbookused] run function dvz:dwarves/yellowbook/blacksmith
execute as @s if entity @s[tag=enchanter,scores={DVZ.legend.shard=5..},tag=!lbookused] run function dvz:dwarves/yellowbook/enchanter
execute as @s if entity @s[tag=tailor,scores={DVZ.legend.shard=5..},tag=!lbookused] run function dvz:dwarves/yellowbook/tailor