# -------------------------------------------
# Called By: dvz:dwarves/tools/ez_fix_slab_test
# File Name: ez_fix_slab
# File Purpose: function for the EZ fix slabs, creating a wall of blocks instantly
# Created By: Zaffre
# 
# Created On: 2022.04.09
# Last Modified On: 2022.09.17
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

#tellraw @s[tag=dwarves,scores={DVZ.slab.cool=1..}] ["",{"text":" * [EZ-Fix Slab] You have ","color":"light_purple"},{"score":{"name":"@s","objective":"DVZ.prod.cool"},"color":"light_purple"},{"text":" seconds remaining!","color":"light_purple"}]
#tellraw @s[tag=dwarves,level=..29] ["",{"text":" * [EZ-Fix Slab] you need at least 30 mana to use this!","color":"light_purple"}]

execute as @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] at @s run fill ^-5 ^3 ^3 ^5 ^-2 ^3 minecraft:end_stone_bricks replace #dvz:gothrough
execute as @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] run tellraw @s {"text":" * [EZ-Fix Slab] Poof!","color":"light_purple"}
execute as @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] run tellraw @a ["",{"text":" * [EZ-Fix Slab] ","color":"light_purple"},{"selector":"@s","color":"light_purple"},{"text":" uses their EZ-Fix Slab!","color":"light_purple"}]
execute as @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] run particle minecraft:explosion ^ ^1 ^2 4 2 4 0.01 15
execute as @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] run playsound minecraft:block.nether_bricks.break master @a ~ ~ ~ 10 0.7
execute as @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] run playsound minecraft:block.chain.break master @a ~ ~ ~ 10 0.6
execute as @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] run playsound minecraft:block.anvil.destroy master @a ~ ~ ~ 10 0.7

clear @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] carrot_on_a_stick{CustomModelData:67,Unbreakable:1b} 1
execute as @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] run execute as @s run xp add @s -30 levels
execute as @s if entity @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] run scoreboard players set @s DVZ.slab.cool 10
execute as @s if entity @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] run scoreboard players set @s DVZ.rclick 0