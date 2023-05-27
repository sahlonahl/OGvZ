# -------------------------------------------
# Called By: dvz:tick
# File Name: dragonwarrior
# File Purpose: Initial dwarf rebuild for Dragon Warrior
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.05.18
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Called when the dragon boss is slain
# -------------------------------------------

tag @s remove builder
tag @s remove alchemist
tag @s remove baker
tag @s remove blacksmith
tag @s remove tailor
tag @s remove nomana

tag @s add dragon
tag @s add hero
tag @a add fight
tag @e[tag=dvztimer] add fight

team leave @s
tellraw @a {"text":"\u25b6 THE MONSTERS HAVE BEEN RELEASED!!!","bold":true,"color":"light_purple"}
title @a subtitle ["",{"selector":"@s","color":"gold"},{"text":" is the Dragon Warrior!","color":"gold"}]
title @a title {"text":""}
team join dDRAGON @s
tellraw @s ["",{"text":"\u2022You've become the ","color":"gold"},{"text":"Dragon Warrior","color":"yellow"},{"text":" and gained new armor and items! You become more important the longer the game goes on, so stay alive! Right-click your ruby to give all other dwarves more mana!","color":"gold"}]

# start the miniboss timer
execute as @e[tag=dvztimer,tag=fight] run scoreboard players add @s DVZ.battletimer 1

execute as @a[tag=zombies] run effect clear @a[tag=zombies] blindness
execute as @a[tag=zombies] run effect clear @a[tag=zombies] slowness
execute as @a[tag=zombies] run effect clear @a[tag=zombies] jump_boost
execute as @a[tag=zombies] run effect clear @a[tag=zombies] invisibility

execute unless entity @a[tag=zombies] run kill @r[tag=dwarves,tag=!hero]

execute as @a[tag=dwarves] at @s run playsound minecraft:entity.ravager.roar master @s ~ ~ ~
execute as @a[tag=dwarves] at @s run playsound ambient.soul_sand_valley.mood master @s ~ ~ ~ 100 2
execute as @a[tag=zombies] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 50 1.2

kill @a[tag=playerboss]
kill @e[type=ender_dragon]
bossbar set dvz:dragonhealth visible false

gamerule mobGriefing true

clear @s carrot_on_a_stick

#loot give @s loot dvz:special/dragonwarrior
give @s carrot_on_a_stick{display:{Name:'{"text":"Golden Flail","color":"gold"}',Lore:['{"text":"Conjures walls in front of you!","color":"yellow"}','{"text":"Requires 10 mana!","color":"red"}','{"text":"10 second cooldown!","color":"red"}']},Unbreakable:1b,CustomModelData:9,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;1,1,-1,-1],Slot:"mainhand"}]} 1
give @s carrot_on_a_stick{CustomModelData:23,Unbreakable:1b,display:{Name:'{"text":"Ultimate Potion","color":"red"}',Lore:['[{"text":"Applies all of the effects."}]','[{"text":"Requires 30 mana!","color":"red"}]','[{"text":"NO cooldown!","color":"green"}]']}}
give @s carrot_on_a_stick{CustomModelData:24,Unbreakable:1b,display:{Name:'{"text":"Dwarven Ruby","color":"red"}',Lore:['[{"text":"Restore teammate mana."}]','[{"text":"Requires 30 mana!","color":"red"}]','[{"text":"1 minute cooldown!","color":"red"}]']}}

item replace entity @s armor.head with golden_helmet{AttributeModifiers: [{Slot: "head", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3.0d, Operation: 0, UUID: [I; -4804, 4804, 4804, 4804]}, {Slot: "head", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; -70264, 70264, 70264, 70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Dragon Helmet","color":"gold"}'}}
item replace entity @s armor.chest with golden_chestplate{AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 8.0d, Operation: 0, UUID: [I; 4804, -4804, 4804, 4804]}, {Slot: "chest", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, -70264, 70264, 70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Dragon Chestplate","color":"gold"}'}}
item replace entity @s armor.legs with golden_leggings{AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 4804, 4804, -4804, 4804]}, {Slot: "legs", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, 70264, -70264, 70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Dragon Leggings","color":"gold"}'}}
item replace entity @s armor.feet with golden_boots{AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3.0d, Operation: 0, UUID: [I; 4804, 4804, 4804, -4804]}, {Slot: "feet", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, 70264, 70264, -70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 5}, {id: "feather_falling", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Dragon Boots","color":"gold"}'}}

gamerule doMobSpawning true
gamerule doDaylightCycle true
gamerule doWeatherCycle true