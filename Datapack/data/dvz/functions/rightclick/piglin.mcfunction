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
give @s[tag=piglin,tag=!selectedclass] mooshroom_spawn_egg{display:{Name:'{"text":"Explosive Charge","color":"dark_purple","bold":false}',Lore:['{"text":"Can be detonated with a detonator","color":"gray","bold":false,"italic":false}','{"text":"takes 10 seconds to set up!","color":"red","bold":false,"italic":false}']},EntityTag:{id:"minecraft:zombie",NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["piglin_charge","endermine_explode"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,-100.000F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:99999,ShowParticles:0b},{Id:18,Amplifier:0b,Duration:200,ShowParticles:1b}]}} 8
give @s[tag=piglin,tag=!selectedclass] mooshroom_spawn_egg_spawn_egg{display:{Name:'{"text":"Enchanted Explosive Charge","color":"dark_purple","bold":false}',Lore:['{"text":"WARNING: EXPOSES ITSELF WHEN PLACED","color":"red","bold":false,"italic":false}','{"text":"Can be detonated with a detonator","color":"gray","bold":false,"italic":false}','{"text":"takes 15 seconds to set up!","color":"red","bold":false,"italic":false}']},EntityTag:{id:"minecraft:zombie",NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["piglin_charge","endermine_explode_big"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,-100.000F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:99999,ShowParticles:0b},{Id:18,Amplifier:0b,Duration:300,ShowParticles:1b},{Id:24,Amplifier:0b,Duration:60,ShowParticles:0b}]}} 2
give @s[tag=piglin,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Detonate Single","color":"red","bold":false,"italic":false}',Lore:['{"text":"Detonates nearest primed","color":"gray","bold":false,"italic":false}','{"text":"explosive charge","color":"gray","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:118} 1
give @s[tag=piglin,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Detonate All","color":"red","bold":false,"italic":false}',Lore:['{"text":"Detonates all primed","color":"gray","bold":false,"italic":false}','{"text":"explosive charges","color":"gray","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:117} 1
give @s[tag=piglin,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Refill","color":"red","bold":false,"italic":false}',Lore:['{"text":"Clears all charges in inventory and","color":"gray","bold":false,"italic":false}','{"text":"Grants 4 primed chanrges","color":"gray","bold":false,"italic":false}','{"text":"30 seconds cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:119} 1
item replace entity @s[tag=piglin,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Piglin Head","color":"#FFBF87","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;1363741687,-1938078882,-1197410962,-358289607],Slot:"head"}],SkullOwner:{Id:[I;1152851878,765807432,-2009458832,-237408897],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDcxYjNhZWUxODJiOWE5OWVkMjZjYmY1ZWNiNDdhZTkwYzJjM2FkYzA5MjdkZGUxMDJjN2IzMGZkZjdmNDU0NSJ9fX0="}]}}} 1
item replace entity @s[tag=piglin,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=piglin,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=piglin,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, Enchantments: [{id: "feather_falling", lvl: 2},{id: "blast_protection", lvl: 4},{id: "binding_curse", lvl: 1}]} 1
tag @s add selectedclass

execute as @s[tag=piglin] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
