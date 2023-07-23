# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: vex
# File Purpose: Spawn items for vex class
# Created By: GalacticAC
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add vex
team join zMONSTER @s[tag=vex,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=vex,tag=!selectedclass] cooked_beef 64
give @s[tag=vex,tag=!selectedclass] diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:unbreaking",lvl:1s}],Unbreakable:1b} 1
give @s[tag=vex,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Etheral Form","color":"#B5E4FF"}',Lore:['{"text":"Briefly fly where you are looking,","color":"gray","bold":false,"italic":false}','{"text":"passing through walls!","color":"gray","bold":false,"italic":false}','{"text":"15 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:84} 1
give @s[tag=vex,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Phantom Killer","color":"#B5E4FF"}',Lore:['{"text":"Triples the damage of your","color":"gray","bold":false,"italic":false}','{"text":"next melee attack you deal","color":"gray","bold":false,"italic":false}','{"text":"10 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:85} 1
give @s[tag=vex,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Materalize","color":"#B5E4FF"}',Lore:['{"text":"Instantly exits flying","color":"gray","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:87} 1
item replace entity @s[tag=vex,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Vex Head","color":"#A3D1FF","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-1021240126,1172916127,-1204925882,315789223],Slot:"head"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-6,Operation:0,UUID:[I;70189575,1734496152,-2017704068,1400989588],Slot:"head"}],SkullOwner:{Id:[I;-130297919,34818391,-2003905566,-85519869],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU3MzMwYzdkNWNkOGEwYTU1YWI5ZTk1MzIxNTM1YWM3YWUzMGZlODM3YzM3ZWE5ZTUzYmVhN2JhMmRlODZiIn19fQ=="}]}}} 1
item replace entity @s[tag=vex,tag=!selectedclass] armor.chest with leather_chestplate{display:{color:10736127},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s[tag=vex,tag=!selectedclass] armor.legs with leather_leggings{display:{color:10736127},Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=vex,tag=!selectedclass] armor.feet with leather_boots{display:{color:10736127},Unbreakable: 1b, Enchantments: [{id: "feather_falling", lvl: 10},{id: "blast_protection", lvl: 4},{id: "binding_curse", lvl: 1}]} 1
tag @s add selectedclass

execute as @s[tag=vex] if predicate dvz:natchance run loot give @s loot dvz:mob_natures