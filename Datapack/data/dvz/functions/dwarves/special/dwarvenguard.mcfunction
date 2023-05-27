# -------------------------------------------
# Called By: dvz:tick
# File Name: dwarvenguard
# File Purpose: Initial dwarf rebuild for Dwarven Guard
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.05.18
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Called when the elder_guardian boss is slain
# -------------------------------------------

tag @s remove builder
tag @s remove alchemist
tag @s remove baker
tag @s remove blacksmith
tag @s remove tailor
tag @s remove nomana

tag @s add guardian
tag @s add hero
tag @a add fight
tag @e[tag=dvztimer] add fight

team leave @s
tellraw @a {"text":"\u25b6 THE MONSTERS HAVE BEEN RELEASED!!!","bold":true,"color":"light_purple"}
title @a subtitle ["",{"selector":"@s","color":"gold"},{"text":" is the Dwarven Guard!","color":"gold"}]
title @a title {"text":""}
tellraw @s ["",{"text":"\u2022You've become the ","color":"gold"},{"text":"Dwarven Guard","color":"yellow"},{"text":" and gained new armor and items! You become more important the longer the game goes on, so stay alive! Right-click your rally ability to give dwarves more mana, but it works best when dwarves are grouped closely together!","color":"gold"}]
team join dGUARD @s

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
kill @e[type=elder_guardian]
kill @e[type=guardian]
bossbar set dvz:guardianhealth visible false

gamerule mobGriefing true

clear @s carrot_on_a_stick{CustomModelData:1000,Unbreakable:1b}
clear @s minecraft:carrot_on_a_stick{CustomModelData:3,Unbreakable:1b} 1

#loot give @s loot dvz:special/dwarvenguard
give @s carrot_on_a_stick{CustomModelData:49,Unbreakable:1b,display:{Name:'{"text":"Beam","color":"gold"}',Lore:['{"text":"Major damage to monsters in range.","color":"yellow"}','{"text":"Requires 10 mana!","color":"red"}','{"text":"3 second cooldown!","color":"red"}']}} 1
give @s carrot_on_a_stick{CustomModelData:47,Unbreakable:1b,display:{Name:'{"text":"Rally","color":"red"}',Lore:['[{"text":"Restores all teammates mana, including you."}]','[{"text":"The closer they are, the more mana restored."}]','[{"text":"Requires 30 mana!","color":"red"}]','[{"text":"1 minute cooldown!","color":"red"}]']}}
give @s carrot_on_a_stick{CustomModelData:48,Unbreakable:1b,display:{Name:'{"text":"Minds Eye","color":"red"}',Lore:['[{"text":"Blinds yourself, but highlights monsters."}]','[{"text":"Requires 30 mana!","color":"red"}]','[{"text":"NO cooldown!","color":"green"}]']}}

item replace entity @s armor.head with chainmail_helmet{AttributeModifiers: [{Slot: "head", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3.0d, Operation: 0, UUID: [I; -4804, 4804, 4804, 4804]}, {Slot: "head", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; -70264, 70264, 70264, 70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Guard Helmet","color":"gold"}'}}
item replace entity @s armor.chest with chainmail_chestplate{AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 8.0d, Operation: 0, UUID: [I; 4804, -4804, 4804, 4804]}, {Slot: "chest", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, -70264, 70264, 70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Guard Chestplate","color":"gold"}'}}
item replace entity @s armor.legs with chainmail_leggings{AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 4804, 4804, -4804, 4804]}, {Slot: "legs", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, 70264, -70264, 70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Guard Leggings","color":"gold"}'}}
item replace entity @s armor.feet with chainmail_boots{AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3.0d, Operation: 0, UUID: [I; 4804, 4804, 4804, -4804]}, {Slot: "feet", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, 70264, 70264, -70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 5}, {id: "feather_falling", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Guard Boots","color":"gold"}'}}

gamerule doMobSpawning true
gamerule doDaylightCycle true
gamerule doWeatherCycle true