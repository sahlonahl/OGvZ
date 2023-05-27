# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: ocelotalch
# File Purpose: Spawn items for ocelot/alchemist classes
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.04.03
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add ocelot
team join zMONSTER @s[tag=ocelot,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=ocelot,tag=!selectedclass] cooked_beef 64
give @s[tag=ocelot,tag=!selectedclass] salmon{display:{Name:'{"text":"Fish Slapper"}',Lore:['[{"text":"SMACK!","color":"yellow"}]']},Enchantments:[{id:"knockback",lvl:2}]} 1
give @s[tag=ocelot,tag=!selectedclass] vine 24
give @s[tag=ocelot,tag=!selectedclass] carrot_on_a_stick{CustomModelData:11,Unbreakable:1b,display:{Name:'{"text":"Steal Mana","color":"blue"}',Lore:['[{"text":"Drains 100 mana from a dwarf in range."}]','[{"text":"10 second cooldown!","color":"red"}]']}} 1
give @s[tag=ocelot,tag=!selectedclass] carrot_on_a_stick{CustomModelData:26,Unbreakable:1b,display:{Name:'{"text":"Disarm Dwarves","color":"blue"}',Lore:['[{"text":"Inflicts weakness on dwarves near you."}]','[{"text":"10 second cooldown!","color":"red"}]']}} 1
item replace entity @s[tag=ocelot,tag=!selectedclass] armor.head with firework_star{CustomModelData:2,display:{Name:'{"text":"Ocelot Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=ocelot,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 16768372}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=ocelot,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 16180138}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=ocelot,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 9327914}, Enchantments: [{id: "feather_falling", lvl: 100}, {id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1

effect give @s[tag=ocelot,tag=!selectedclass] speed 1000000 1 true
#effect give @s[tag=ocelot,tag=!selectedclass] jump_boost 1000000 255 true

execute as @s[tag=ocelot] if predicate dvz:natchance run loot give @s loot dvz:mob_natures

#=========================================

tag @s[tag=!selectedclass] remove nomana
execute if entity @s[tag=dwarves,tag=!selectedclass] run tag @s add alchemist
team join dALCHEMIST @s[tag=alchemist,tag=!selectedclass]
give @s[tag=alchemist,tag=!selectedclass] cooked_porkchop 1
give @s[tag=alchemist,tag=!selectedclass] dark_prismarine 96
give @s[tag=alchemist,tag=!selectedclass] brewing_stand 2
give @s[tag=alchemist,tag=!selectedclass] blaze_powder 2
give @s[tag=alchemist,tag=!selectedclass] redstone 8
give @s[tag=alchemist,tag=!selectedclass] cauldron 1
give @s[tag=alchemist,tag=!selectedclass] glass 64
give @s[tag=alchemist,tag=!selectedclass] chest 2
give @s[tag=alchemist,tag=!selectedclass] oak_sign 3
give @s[tag=alchemist,tag=!selectedclass] carrot_on_a_stick{CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"Summoning Book","color":"aqua"}',Lore:['[{"text":"Makes potions and milk buckets."}]','[{"text":"Requires 3 mundane potions and 30 mana!","color":"red"}]']}}
execute if predicate dvz:50chance run give @s[tag=alchemist,tag=!selectedclass] carrot_on_a_stick{CustomModelData:1000,Unbreakable:1b,display:{Name:'{"text":"Legendary Book","color":"gold"}',Lore:['[{"text":"Used with 5 Legendary Shards to make Legendary Items.","color":"blue"}]','[{"text":"Single-use item!","color":"red"}]']}}
tag @s add selectedclass
tellraw @s[tag=alchemist,tag=selectedclass] ["",{"text":"\u25b6","bold":true},{"text":"You are an ","color":"gold"},{"text":"ALCHEMIST","color":"yellow"},{"text":". You make potions for the dwarves. Begin by using redstone in the brewing stand to create mundane potions. You get more redstone from the blacksmith.","color":"gold"}]
playsound block.note_block.pling master @s ~ ~ ~ 1 2
particle happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

execute if entity @e[type=marker,tag=dvztimer,tag=aidragonselected] run tellraw @s[tag=alchemist] ["",{"text":"The doom event is: "},{"text":"AI Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerdragonselected] run tellraw @s[tag=alchemist] ["",{"text":"The doom event is: "},{"text":"Player Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=aiwitherselected] run tellraw @s[tag=alchemist] ["",{"text":"The doom event is: "},{"text":"AI Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerwitherselected] run tellraw @s[tag=alchemist] ["",{"text":"The doom event is: "},{"text":"Player Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=assassinselected] run tellraw @s[tag=alchemist] ["",{"text":"The doom event is: "},{"text":"Assassin","bold":true,"color":"yellow"}]
execute if entity @e[type=marker,tag=dvztimer,tag=guardianselected] run tellraw @s[tag=alchemist] ["",{"text":"The doom event is: "},{"text":"Elder Guardian","bold":true,"color":"aqua"}]