# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: shulker
# File Purpose: Spawn items for shulker class
# Created By: GalacticAC
# 
# Created On: 2023.07.08
# Last Modified On: 2023.07.08
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add shulker
team join zMONSTER @s[tag=shulker,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=shulker,tag=!selectedclass] cooked_beef 64
give @s[tag=shulker,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Conjure Wall","color":"#CE8FFF","bold":false,"italic":false}',Lore:['{"text":"Throw a projectile that spawns","color":"gray","bold":false,"italic":false}','{"text":"a temporary wall","color":"gray","bold":false,"italic":false}','{"text":"15 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:111} 1
give @s[tag=shulker,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Summon Bullets","color":"#CE8FFF","bold":false,"italic":false}',Lore:['{"text":"Summon a hailstorm of","color":"gray","bold":false,"italic":false}','{"text":"shulker bullets","color":"gray","bold":false,"italic":false}','{"text":"22 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:112} 1
give @s[tag=shulker,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Conjure Bomb","color":"#CE8FFF","bold":false,"italic":false}',Lore:['{"text":"Throw a projectile that spawns","color":"gray","bold":false,"italic":false}','{"text":"a bomb that can levitate players","color":"gray","bold":false,"italic":false}','{"text":"15 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:113} 1
item replace entity @s[tag=shulker,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Shulker Head","color":"#CE8FFF","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-577448861,185288407,-1113216384,1904599080],Slot:"head"}],SkullOwner:{Id:[I;-1778823362,-434352489,-1592043985,1155190429],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTM3YTI5NGY2YjdiNGJhNDM3ZTVjYjM1ZmIyMGY0Njc5MmU3YWMwYTQ5MGE2NjEzMmE1NTcxMjRlYzVmOTk3YSJ9fX0="}]}}} 1
item replace entity @s[tag=shulker,tag=!selectedclass] armor.chest with leather_chestplate{display:{color:13537279},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s[tag=shulker,tag=!selectedclass] armor.legs with leather_leggings{display:{color:13537279},Unbreakable: 1b, Enchantments: [{id:"minecraft:protection",lvl:1s},{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=shulker,tag=!selectedclass] armor.feet with leather_boots{display:{color:13537279},Unbreakable: 1b, Enchantments: [{id:"minecraft:protection",lvl:1s},{id: "blast_protection", lvl: 4},{id: "binding_curse", lvl: 1}]} 1
tag @s add selectedclass
execute as @s[tag=shulker] if predicate dvz:natchance run loot give @s loot dvz:mob_natures