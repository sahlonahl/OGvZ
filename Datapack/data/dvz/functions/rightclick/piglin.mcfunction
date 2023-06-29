# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: piglin
# File Purpose: Spawn items for piglin class
# Created By: GalacticAC
# 
# Created On: 2023.06.17
# Last Modified On: 2023.06.17
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add piglin
team join zMONSTER @s[tag=piglin,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=piglin,tag=!selectedclass] cooked_porkchop 64
give @s[tag=piglin,tag=!selectedclass] wooden_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:unbreaking",lvl:1s}],Unbreakable:1b} 1
give @s[tag=piglin,tag=!selectedclass] weeping_vines 1
give @s[tag=piglin,tag=!selectedclass] twisting_vines 1
give @s[tag=piglin,tag=!selectedclass] bone_meal 16
give @s[tag=piglin,tag=!selectedclass] dirt 3
give @s[tag=piglin,tag=!selectedclass] wither_rose 3
give @s[tag=piglin,tag=!selectedclass] tnt 2
give @s[tag=piglin,tag=!selectedclass] flint_and_steel{Damage:61} 1
item replace entity @s[tag=piglin,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Piglin Head","color":"#FFBF87","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;1363741687,-1938078882,-1197410962,-358289607],Slot:"head"}],SkullOwner:{Id:[I;1152851878,765807432,-2009458832,-237408897],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDcxYjNhZWUxODJiOWE5OWVkMjZjYmY1ZWNiNDdhZTkwYzJjM2FkYzA5MjdkZGUxMDJjN2IzMGZkZjdmNDU0NSJ9fX0="}]}}} 1
item replace entity @s[tag=piglin,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=piglin,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=piglin,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, Enchantments: [{id: "feather_falling", lvl: 2},{id: "blast_protection", lvl: 4},{id: "binding_curse", lvl: 1}]} 1
tag @s add selectedclass

execute as @s[tag=piglin] if predicate dvz:natchance run loot give @s loot dvz:mob_natures