# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: witch
# File Purpose: Spawn items for witch class
# Created By: GalacticAC
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.25
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add witch
team join zMONSTER @s[tag=witch,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=witch,tag=!selectedclass] cooked_beef 64
give @s[tag=witch,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Brutal Alchemy","color":"dark_purple"}',Lore:['{"text":"Brew a potion with","color":"gray","bold":false,"italic":false}','{"text":"random negative effects","color":"gray","bold":false,"italic":false}','{"text":"8 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:88} 1
give @s[tag=witch,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Soothing Alchemy","color":"dark_purple"}',Lore:['{"text":"Brew a potion with random","color":"gray","bold":false,"italic":false}','{"text":"positive effects for everyone!","color":"gray","bold":false,"italic":false}','{"text":"15 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:89} 1
give @s[tag=witch,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Transmutation","color":"dark_purple"}',Lore:['{"text":"Turn nearest monster","color":"gray","bold":false,"italic":false}','{"text":"into frog!","color":"gray","bold":false,"italic":false}','{"text":"25 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:90} 1
item replace entity @s[tag=witch,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"witch Head","color":"dark_purple","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;1562552718,-1564914957,-1706359304,1560220886],Slot:"head"}],SkullOwner:{Id:[I;-805727641,296764545,-1227633676,-1637861893],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2U3MWE2ZWIzMDNhYjdlNmY3MGVkNTRkZjkxNDZhODBlYWRmMzk2NDE3Y2VlOTQ5NTc3M2ZmYmViZmFkODg3YyJ9fX0="}]}}} 1
item replace entity @s[tag=witch,tag=!selectedclass] armor.chest with leather_chestplate{display:{color:5308544},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s[tag=witch,tag=!selectedclass] armor.legs with leather_leggings{display:{color:5308544},Unbreakable: 1b, Enchantments: [{id:"minecraft:protection",lvl:1s},{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=witch,tag=!selectedclass] armor.feet with leather_boots{display:{color:5308544},Unbreakable: 1b, Enchantments: [{id:"minecraft:protection",lvl:1s},{id: "feather_falling", lvl: 2},{id: "blast_protection", lvl: 4},{id: "binding_curse", lvl: 1}]} 1
tag @s add selectedclass

execute as @s[tag=witch] if predicate dvz:natchance run loot give @s loot dvz:mob_natures