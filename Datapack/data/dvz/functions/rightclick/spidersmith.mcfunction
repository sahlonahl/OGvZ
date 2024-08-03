# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: spidersmith
# File Purpose: Spawn items for spider/blacksmith classes
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.06.14
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add spider
team join zSPIDER @s[tag=spider,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=spider,tag=!selectedclass] cooked_beef 64
give @s[tag=spider,tag=!selectedclass] carrot_on_a_stick{CustomModelData:25,Unbreakable:1b,display:{Name:'{"text":"Poison","color":"dark_green"}',Lore:['[{"text":"Debuffs dwarves on hit."}]']}}
give @s[tag=spider,tag=!selectedclass] carrot_on_a_stick{CustomModelData:39,Unbreakable:1b,display:{Name:'{"text":"Web","color":"gray"}',Lore:['[{"text":"Throw webs and trap dwarves."}]','[{"text":"15 second cooldown.","color":"red"}]']}}
give @s[tag=spider,tag=!selectedclass] shears{display:{Name:'{"text":"Web cleaner"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
item replace entity @s[tag=spider,tag=!selectedclass] armor.head with player_head{SkullOwner:"MHF_CaveSpider",display:{Name:'{"text":"Spider Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id: "protection", lvl: 1},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=spider,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 1391156}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=spider,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 11826}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=spider,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 727832}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "feather_falling", lvl: 10}, {id: "binding_curse", lvl: 1}]} 1

effect give @s[tag=spider,tag=!selectedclass] jump_boost 1000000 4 true
effect give @s[tag=spider,tag=!selectedclass] speed 1000000 2 true
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run scoreboard players set @s DVZ.web.cool 2

execute as @s[tag=spider] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures

#=========================================

tag @s[tag=!selectedclass] remove nomana
tag @s[tag=dwarves,tag=!selectedclass] add blacksmith
team join dBLACKSMITH @s[tag=blacksmith,tag=!selectedclass]
give @s[tag=blacksmith,tag=!selectedclass] cooked_porkchop 1
give @s[tag=blacksmith,tag=!selectedclass] nether_bricks 96
give @s[tag=blacksmith,tag=!selectedclass] iron_pickaxe
give @s[tag=blacksmith,tag=!selectedclass] redstone_ore 12
give @s[tag=blacksmith,tag=!selectedclass] gold_ore 24
give @s[tag=blacksmith,tag=!selectedclass] furnace 4
give @s[tag=blacksmith,tag=!selectedclass] coal{display:{Lore:['[{"text":"Give to the Baker!","color":"blue"}]']}} 10
give @s[tag=blacksmith,tag=!selectedclass] chest 2
give @s[tag=blacksmith,tag=!selectedclass] oak_sign 3
give @s[tag=blacksmith,tag=!selectedclass] flint_and_steel 1
give @s[tag=blacksmith,tag=!selectedclass] netherrack 1
give @s[tag=blacksmith,tag=!selectedclass] carrot_on_a_stick{CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"Summoning Book","color":"aqua"}',Lore:['[{"text":"Makes redstone, weapons, and tools."}]','[{"text":"Requires 5 clocks and 30 mana!","color":"red"}]']}}
execute if predicate dvz:50chance run give @s[tag=blacksmith,tag=!selectedclass] carrot_on_a_stick{CustomModelData:1000,Unbreakable:1b,display:{Name:'{"text":"Legendary Book","color":"gold"}',Lore:['[{"text":"Used with 5 Legendary Shards to make Legendary Items.","color":"blue"}]','[{"text":"Single-use item!","color":"red"}]']}}
tag @s add selectedclass
tellraw @s[tag=blacksmith,tag=selectedclass] ["",{"text":"\u25b6","bold":true},{"text":"You are a ","color":"gold"},{"text":"BLACKSMITH","color":"yellow"},{"text":". You make weapons and tools for the dwarves. Begin by smelting gold and combining it with redstone and craft clocks. You can get more gold ore from the tailor.","color":"gold"}]
playsound block.note_block.pling master @s ~ ~ ~ 1 2
particle happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

execute if entity @e[type=marker,tag=dvztimer,tag=aidragonselected] run tellraw @s[tag=blacksmith] ["",{"text":"The doom event is: "},{"text":"AI Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerdragonselected] run tellraw @s[tag=blacksmith] ["",{"text":"The doom event is: "},{"text":"Player Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=aiwitherselected] run tellraw @s[tag=blacksmith] ["",{"text":"The doom event is: "},{"text":"AI Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerwitherselected] run tellraw @s[tag=blacksmith] ["",{"text":"The doom event is: "},{"text":"Player Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=assassinselected] run tellraw @s[tag=blacksmith] ["",{"text":"The doom event is: "},{"text":"Assassin","bold":true,"color":"yellow"}]
execute if entity @e[type=marker,tag=dvztimer,tag=guardianselected] run tellraw @s[tag=blacksmith] ["",{"text":"The doom event is: "},{"text":"Elder Guardian","bold":true,"color":"aqua"}]