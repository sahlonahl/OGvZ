# -------------------------------------------
# Called By: rightclick/detect
# File Name: brew_debuff
# File Purpose: Create Debuff potion for witch class
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[tag=witch,scores={DVZ.witchdebuff.cool=1..}] run title @s actionbar ["",{"text":" * [Brutal Alchemy] You have ","color":"#510080"},{"score":{"name":"@s","objective":"DVZ.witchdebuff.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#510080"}]

execute as @s if entity @s[tag=witch,scores={DVZ.witchdebuff.cool=0}] run title @s actionbar {"text":" * [Brutal Alchemy] Poof!","color":"#510080"}
execute as @s if entity @s[tag=witch,scores={DVZ.witchdebuff.cool=0}] run playsound minecraft:block.brewing_stand.brew player @s ~ ~ ~ 1 1
execute as @s if entity @s[tag=witch,scores={DVZ.witchdebuff.cool=0}] run clear @s splash_potion{witch_debuff:1}

execute as @s if entity @s[tag=witch,scores={DVZ.witchdebuff.cool=0}] run loot give @s loot dvz:classes/witch_debuff
execute as @s if entity @s[tag=witch,scores={DVZ.witchdebuff.cool=0}] run scoreboard players set @s DVZ.witchdebuff.cool 8
execute as @s if entity @s[tag=witch,scores={DVZ.witchdebuff.cool=0}] run scoreboard players set @s DVZ.rclick 0