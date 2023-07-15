# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: zenchanter
# File Purpose: Spawn items for Mooshroom class
# Created By: GalacticAC
# 
# Created On: 2023.06.24
# Last Modified On: 2023.07.05
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add zenchanter
team join zMONSTER @s[tag=zenchanter,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=zenchanter,tag=!selectedclass] cooked_beef 64
give @s[tag=zenchanter,tag=!selectedclass] golden_apple 2
give @s[tag=zenchanter,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Fungal Ritual","color":"#FF0000"}',Lore:['{"text":"Press down rightclick to empower a nearby","color":"gray","bold":false,"italic":false}','{"text":"monster (at a certain price...)","color":"gray","bold":false,"italic":false}','{"text":"2 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:93,Enchantments:[{id:"minecraft:sharpness",lvl:6s},{id:"minecraft:knockback",lvl:2s}]} 1
item replace entity @s[tag=zenchanter,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Mooshroom Head","color":"#FF0000","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;76168503,-126792359,-1369299893,98686726],Slot:"head"}],SkullOwner:{Id:[I;-1486815081,-874953860,-1531698238,-326677948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzY3YWM4NDJhOGQxMmMwMmQ4YTlmMGQ4MDNlZGE5MThkYzRkMGM4MGUwZjJlYTAyYjRiOWE3NTgxY2Q3YTRiNSJ9fX0="}]}}} 1
item replace entity @s[tag=zenchanter,tag=!selectedclass] armor.chest with leather_chestplate{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s[tag=zenchanter,tag=!selectedclass] armor.legs with leather_leggings{display:{color:16711680},Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=zenchanter,tag=!selectedclass] armor.feet with leather_boots{display:{color:16711680},Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4},{id: "binding_curse", lvl: 1}]} 1
tag @s add selectedclass

execute as @s[tag=zenchanter] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
