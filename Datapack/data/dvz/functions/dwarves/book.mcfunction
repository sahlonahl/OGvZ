# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: alchemist
# File Purpose: Main branch for each dwarf class' summoning books
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.05.17
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: this branch does not include legendary transmutes, see dvz:dwarves\yellowbook
#            This function currently gives builders the same loot table at all times, but keeps the old lines of code
# -------------------------------------------

execute as @s[tag=alchemist] store result score @s DVZ.alch.potions run clear @s minecraft:potion{Potion:"minecraft:mundane"} 0
execute as @s[tag=baker] store result score @s DVZ.baker.bricks run clear @s minecraft:brick 0
execute as @s[tag=blacksmith] store result score @s DVZ.smith.clocks run clear @s minecraft:clock 0
execute as @s[tag=enchanter] store result score @s DVZ.ench.emerald run clear @s emerald 0
execute as @s[tag=tailor] store result score @s DVZ.tailor.dyes run clear @s #dvz:dyes 0


execute as @s[tag=builder,scores={DVZ.book.cool=1..}] run title @s actionbar ["",{"text":" * [Summoning Book] You have ","color":"dark_aqua"},{"score":{"name":"@s","objective":"DVZ.book.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"dark_aqua"}]

execute if entity @s[tag=enchanter,scores={DVZ.ench.emerald=0}] run title @s actionbar {"text":" * [Summoning Book] You need at least 1 emerald!","color":"dark_aqua"}

execute if entity @s[tag=alchemist,level=..29] run title @s actionbar {"text":" * [Summoning Book] You need at least 30 Mana!","color":"dark_aqua"}
execute if entity @s[tag=alchemist,scores={DVZ.alch.potions=..2}] run title @s actionbar {"text":" * [Summoning Book] You need at least 3 potions!","color":"dark_aqua"}
execute if entity @s[tag=baker,level=..29] run title @s actionbar {"text":" * [Summoning Book] You need at least 30 Mana!","color":"dark_aqua"}
execute if entity @s[tag=baker,scores={DVZ.baker.bricks=..9}] run title @s actionbar {"text":" * [Summoning Book] You need at least 10 bricks!","color":"dark_aqua"}
execute if entity @s[tag=blacksmith,level=..29] run title @s actionbar {"text":" * [Summoning Book] You need at least 30 Mana!","color":"dark_aqua"}
execute if entity @s[tag=blacksmith,scores={DVZ.smith.clocks=..4}] run title @s actionbar {"text":" * [Summoning Book] You need at least 5 clocks!","color":"dark_aqua"}
execute if entity @s[tag=tailor,level=..29] run title @s actionbar {"text":" * [Summoning Book] You need at least 30 Mana!","color":"dark_aqua"}
execute if entity @s[tag=tailor,scores={DVZ.tailor.dyes=..9}] run title @s actionbar {"text":" * [Summoning Book] You need at least 10 dyes!","color":"dark_aqua"}

# standard builder loot
execute as @s if entity @s[tag=builder,tag=!fight,scores={DVZ.book.cool=0}] run function dvz:dwarves/book/builder
# fight builder loot
execute as @s if entity @s[tag=builder,tag=fight,scores={DVZ.book.cool=0}] run function dvz:dwarves/book/builderfight

execute as @s if entity @s[tag=alchemist,level=30..,scores={DVZ.alch.potions=3..}] run function dvz:dwarves/book/alchemist
execute as @s if entity @s[tag=baker,level=30..,scores={DVZ.baker.bricks=10..}] run function dvz:dwarves/book/baker
execute as @s if entity @s[tag=blacksmith,level=30..,scores={DVZ.smith.clocks=5..}] run function dvz:dwarves/book/blacksmith
execute as @s if entity @s[tag=enchanter,scores={DVZ.ench.emerald=1..}] run function dvz:dwarves/book/enchanter
execute as @s if entity @s[tag=tailor,level=30..,scores={DVZ.tailor.dyes=10..}] run function dvz:dwarves/book/tailor