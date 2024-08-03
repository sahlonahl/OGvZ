# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: silverench
# File Purpose: Spawn items for silverfish/enchanter classes
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
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add silverfish
team join zSILVERFISH @s[tag=silverfish,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=silverfish,tag=!selectedclass] carrot_on_a_stick{CustomModelData:35,Unbreakable:1b,display:{Name:'{"text":"Lay Egg","color":"light_purple"}',Lore:['[{"text":"Lay eggs and infest dwarven stone."}]','[{"text":"You must be standing next to stone bricks.","color":"red"}]']}} 1
give @s[tag=silverfish,tag=!selectedclass] carrot_on_a_stick{CustomModelData:36,Unbreakable:1b,display:{Name:'{"text":"Roar","color":"dark_purple"}',Lore:['[{"text":"Hatch your laid eggs to attack the dwarves!"}]','[{"text":"Single-use item!","color":"red"}]']}} 2
give @s[tag=silverfish,tag=!selectedclass] silverfish_spawn_egg 3
give @s[tag=silverfish,tag=!selectedclass] iron_shovel 1
give @s[tag=silverfish,tag=!selectedclass] cooked_beef 64
give @s[tag=silverfish,tag=!selectedclass] iron_nugget{display:{Name:'{"text":"Silverfish Eggs"}',Lore:['[{"text":"Use these with your other tools!"}]','[{"text":"Ammunition!","color":"red"}]']}} 20
item replace entity @s[tag=silverfish,tag=!selectedclass] armor.head with player_head{SkullOwner:{Id:[I;816106844,1465142712,-1990191102,712270461],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGE5MWRhYjgzOTFhZjVmZGE1NGFjZDJjMGIxOGZiZDgxOWI4NjVlMWE4ZjFkNjIzODEzZmE3NjFlOTI0NTQwIn19fQ=="}]}},display:{Name:'{"text":"Silverfish Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id: "protection", lvl: 1},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=silverfish,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 8816262}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=silverfish,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 8816262}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=silverfish,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 8816262}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1

execute as @s[tag=silverfish] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures

#=========================================

tag @s[tag=!selectedclass] remove nomana
tag @s[tag=dwarves,tag=!selectedclass] add enchanter
team join dENCHANTER @s[tag=enchanter,tag=!selectedclass]
give @s[tag=enchanter,tag=!selectedclass] cooked_porkchop 1
give @s[tag=enchanter,tag=!selectedclass] smooth_quartz 96
give @s[tag=enchanter,tag=!selectedclass] bookshelf 18
give @s[tag=enchanter,tag=!selectedclass] grindstone 1
give @s[tag=enchanter,tag=!selectedclass] enchanting_table 1
give @s[tag=enchanter,tag=!selectedclass] emerald 4
give @s[tag=enchanter,tag=!selectedclass] anvil 2
give @s[tag=enchanter,tag=!selectedclass] chest 14
give @s[tag=enchanter,tag=!selectedclass] oak_sign 3
give @s[tag=enchanter,tag=!selectedclass] carrot_on_a_stick{CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"Summoning Book","color":"aqua"}',Lore:['[{"text":"Turns emeralds into lapis and blaze powder."}]']}}
execute if predicate dvz:50chance run give @s[tag=enchanter,tag=!selectedclass] carrot_on_a_stick{CustomModelData:1000,Unbreakable:1b,display:{Name:'{"text":"Legendary Book","color":"gold"}',Lore:['[{"text":"Used with 5 Legendary Shards to make Legendary Items.","color":"blue"}]','[{"text":"Single-use item!","color":"red"}]']}}
tag @s add selectedclass
tellraw @s[tag=enchanter,tag=selectedclass] ["",{"text":"\u25b6","bold":true},{"text":"You are an ","color":"gold"},{"text":"ENCHANTER","color":"yellow"},{"text":". You enchant armor, weapons, and tools for the dwarves.","color":"gold"}]
playsound block.note_block.pling master @s ~ ~ ~ 1 2
particle happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

execute if entity @e[type=marker,tag=dvztimer,tag=aidragonselected] run tellraw @s[tag=enchanter] ["",{"text":"The doom event is: "},{"text":"AI Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerdragonselected] run tellraw @s[tag=enchanter] ["",{"text":"The doom event is: "},{"text":"Player Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=aiwitherselected] run tellraw @s[tag=enchanter] ["",{"text":"The doom event is: "},{"text":"AI Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerwitherselected] run tellraw @s[tag=enchanter] ["",{"text":"The doom event is: "},{"text":"Player Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=assassinselected] run tellraw @s[tag=enchanter] ["",{"text":"The doom event is: "},{"text":"Assassin","bold":true,"color":"yellow"}]
execute if entity @e[type=marker,tag=dvztimer,tag=guardianselected] run tellraw @s[tag=enchanter] ["",{"text":"The doom event is: "},{"text":"Elder Guardian","bold":true,"color":"aqua"}]