# -------------------------------------------
# Called By: dvz:tick
# File Name: assassinslayer
# File Purpose: Initial dwarf rebuild for Assassin Slayer
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.05.18
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Called when the assassin boss is dies whether by execution or naturally
# -------------------------------------------

tag @s remove builder
tag @s remove alchemist
tag @s remove baker
tag @s remove blacksmith
tag @s remove tailor
tag @s remove nomana

tag @s add assassinslayer
tag @s add hero
tag @a add fight
tag @e[tag=dvztimer] add fight

team leave @s
tellraw @a {"text":"\u25b6 THE MONSTERS HAVE BEEN RELEASED!!!","bold":true,"color":"light_purple"}
title @a subtitle ["",{"selector":"@s","color":"gold"},{"text":" is the Assassin Slayer!","color":"gold"}]
tellraw @s ["",{"text":"\u2022You've become the ","color":"gold"},{"text":"Assassin Slayer","color":"yellow"},{"text":" and gained new armor and items! You become more important the longer the game goes on. You are weaker than other heroes, so stay back and stay alive! Right-click your regrowth star to give a dwarf you're looking at more mana!","color":"gold"}]
team join dSLAYER @s

# start the miniboss timer
execute as @e[tag=dvztimer,tag=fight] run scoreboard players add @s DVZ.battletimer 1

execute as @a[tag=zombies] run effect clear @a[tag=zombies] blindness
execute as @a[tag=zombies] run effect clear @a[tag=zombies] slowness
execute as @a[tag=zombies] run effect clear @a[tag=zombies] jump_boost
execute as @a[tag=zombies] run effect clear @a[tag=zombies] invisibility

execute as @a[tag=dwarves] at @s run playsound minecraft:entity.ravager.roar master @s ~ ~ ~
execute as @a[tag=dwarves] at @s run playsound ambient.soul_sand_valley.mood master @s ~ ~ ~ 100 2
execute as @a[tag=zombies] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 50 1.2

kill @a[tag=playerboss]
gamerule mobGriefing true
bossbar set dvz:assassintimer visible false

clear @s carrot_on_a_stick{CustomModelData:1000,Unbreakable:1b}
clear @s carrot_on_a_stick{CustomModelData:3,Unbreakable:1b}
clear @s minecraft:carrot_on_a_stick{CustomModelData:13,Unbreakable:1b} 1 

give @s carrot_on_a_stick{display:{Name:'{"text":"Regrowth Star","color":"gold"}',Lore:['{"text":"[R-Click] Heals and restores mana for targeted dwarves.","color":"yellow"}','{"text":"[R-click + Shift] Teleports targeted dwarf to you.","color":"yellow"}','{"text":"Requires 5 mana!","color":"red"}','{"text":"5 second cooldown!","color":"red"}']},Unbreakable:1b,CustomModelData:50} 1
#loot give @s loot dvz:special/assassinslayer

item replace entity @s armor.head with iron_helmet{AttributeModifiers: [{Slot: "head", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3.0d, Operation: 0, UUID: [I; -4804, 4804, 4804, 4804]}, {Slot: "head", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; -70264, 70264, 70264, 70264]}], Enchantments: [{id: "protection", lvl: 3}, {id: "blast_protection", lvl: 3}, {id: "binding_curse", lvl: 1}], Unbreakable: 1b, display: {Name: '{"text":"Slayer Helmet","color":"gold"}'}}
item replace entity @s armor.chest with iron_chestplate{AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 8.0d, Operation: 0, UUID: [I; 4804, -4804, 4804, 4804]}, {Slot: "chest", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, -70264, 70264, 70264]}], Enchantments: [{id: "protection", lvl: 3}, {id: "blast_protection", lvl: 3}, {id: "binding_curse", lvl: 1}], Unbreakable: 1b, display: {Name: '{"text":"Slayer Chestplate","color":"gold"}'}}
item replace entity @s armor.legs with iron_leggings{AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 4804, 4804, -4804, 4804]}, {Slot: "legs", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, 70264, -70264, 70264]}], Enchantments: [{id: "protection", lvl: 3}, {id: "blast_protection", lvl: 3}, {id: "binding_curse", lvl: 1}], Unbreakable: 1b, display: {Name: '{"text":"Slayer Leggings","color":"gold"}'}}
item replace entity @s armor.feet with iron_boots{AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3.0d, Operation: 0, UUID: [I; 4804, 4804, 4804, -4804]}, {Slot: "feet", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, 70264, 70264, -70264]}], Enchantments: [{id: "protection", lvl: 3}, {id: "blast_protection", lvl: 3}, {id: "binding_curse", lvl: 1}, {id: "feather_falling", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Slayer Boots","color":"gold"}'}}

gamerule doMobSpawning true
gamerule doDaylightCycle true
gamerule doWeatherCycle true