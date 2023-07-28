# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: wolftailor
# File Purpose: Spawn items for wolf/tailor classes
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.04.01
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add wolf
team join zMONSTER @s[tag=wolf,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=wolf,tag=!selectedclass] cooked_beef 64
give @s[tag=wolf,tag=!selectedclass] diamond_sword{Enchantments:[{id:"sharpness",lvl:5}]} 1
give @s[tag=wolf,tag=!selectedclass] golden_sword{Enchantments:[{id:"fire_aspect",lvl:2},{id:"knockback",lvl:2}]} 1
give @s[tag=wolf,tag=!selectedclass] bone 32
give @s[tag=wolf,tag=!selectedclass] wolf_spawn_egg 6
item replace entity @s[tag=wolf,tag=!selectedclass] armor.head with firework_star{CustomModelData:14,display:{Name:'{"text":"Wolf Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"protection",lvl:1},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=wolf,tag=!selectedclass] armor.chest with chainmail_chestplate{Unbreakable: 1b, display: {color: 14539483}, AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 5.0d, Operation: 0, UUID: [I; 64800, -64800, 64800, 64800]}], Enchantments: [{id: "blast_protection", lvl: 4}, {id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=wolf,tag=!selectedclass] armor.legs with chainmail_leggings{Unbreakable: 1b, display: {color: 13289416}, AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 4.0d, Operation: 0, UUID: [I; 64800, 64800, -64800, 64800]}], Enchantments: [{id: "blast_protection", lvl: 4}, {id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=wolf,tag=!selectedclass] armor.feet with chainmail_boots{Unbreakable: 1b, display: {color: 11578023}, AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 1.0d, Operation: 0, UUID: [I; 64800, 64800, 64800, -64800]}], Enchantments: [{id: "blast_protection", lvl: 4}, {id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
effect give @s[tag=wolf,tag=!selectedclass] speed 999999 1 true
effect give @s[tag=wolf,tag=!selectedclass] jump_boost 999999 1 true
#effect give @s[tag=wolf,tag=!selectedclass] strength 999999 0 true

execute as @s[tag=wolf] if predicate dvz:natchance run loot give @s loot dvz:mob_natures

#=========================================

tag @s[tag=!selectedclass] remove nomana
execute if entity @s[tag=dwarves,tag=!selectedclass] run tag @s add tailor
team join dTAILOR @s[tag=tailor,tag=!selectedclass]
give @s[tag=tailor,tag=!selectedclass] cooked_porkchop 1
give @s[tag=tailor,tag=!selectedclass] terracotta 96
give @s[tag=tailor,tag=!selectedclass] grass_block 20
give @s[tag=tailor,tag=!selectedclass] bone 10
give @s[tag=tailor,tag=!selectedclass] chest 2
give @s[tag=tailor,tag=!selectedclass] oak_sign 3
give @s[tag=tailor,tag=!selectedclass] carrot_on_a_stick{CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"Summoning Book","color":"aqua"}',Lore:['[{"text":"Makes armor and sheilds."}]','[{"text":"Requires 10 dyes and 30 mana!","color":"red"}]']}}
execute if predicate dvz:50chance run give @s[tag=tailor,tag=!selectedclass] carrot_on_a_stick{CustomModelData:1000,Unbreakable:1b,display:{Name:'{"text":"Legendary Book","color":"gold"}',Lore:['[{"text":"Used with 5 Legendary Shards to make Legendary Items.","color":"blue"}]','[{"text":"Single-use item!","color":"red"}]']}}
tag @s add selectedclass
tellraw @s[tag=tailor,tag=selectedclass] ["",{"text":"\u25b6","bold":true},{"text":"You are a ","color":"gold"},{"text":"TAILOR","color":"yellow"},{"text":". You make armor and shields for the dwarves. Begin by using your bonemeal to get flowers and craft them into dye. Once you have enough dye, right-click your book to conjure armor! You can acquire additional bones from the alchemist.","color":"gold"},{"text":"\n\n "}]
playsound block.note_block.pling master @s ~ ~ ~ 1 2
particle happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

execute if entity @e[type=marker,tag=dvztimer,tag=aidragonselected] run tellraw @s[tag=tailor] ["",{"text":"The doom event is: "},{"text":"AI Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerdragonselected] run tellraw @s[tag=tailor] ["",{"text":"The doom event is: "},{"text":"Player Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=aiwitherselected] run tellraw @s[tag=tailor] ["",{"text":"The doom event is: "},{"text":"AI Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerwitherselected] run tellraw @s[tag=tailor] ["",{"text":"The doom event is: "},{"text":"Player Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=assassinselected] run tellraw @s[tag=tailor] ["",{"text":"The doom event is: "},{"text":"Assassin","bold":true,"color":"yellow"}]
execute if entity @e[type=marker,tag=dvztimer,tag=guardianselected] run tellraw @s[tag=tailor] ["",{"text":"The doom event is: "},{"text":"Elder Guardian","bold":true,"color":"aqua"}]