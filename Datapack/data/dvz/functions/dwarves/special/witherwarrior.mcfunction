# -------------------------------------------
# Called By: dvz:tick
# File Name: witherwarrior
# File Purpose: Initial dwarf rebuild for Wither Warrior
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Called when the wither boss is slain
# -------------------------------------------

tag @s remove builder
tag @s remove alchemist
tag @s remove baker
tag @s remove blacksmith
tag @s remove tailor
tag @s remove nomana

tag @s add wither
tag @s add hero
tag @a add fight
tag @e[tag=dvztimer] add fight

team leave @s
tellraw @a {"text":"\u25b6 THE MONSTERS HAVE BEEN RELEASED!!!","bold":true,"color":"light_purple"}
title @a subtitle ["",{"selector":"@s","color":"gold"},{"text":" is the Wither Warrior!","color":"gold"}]
title @a title {"text":""}
tellraw @s ["",{"text":"\u2022You've become the ","color":"gold"},{"text":"Wither Warrior","color":"yellow"},{"text":" and gained new armor and items! You become more important the longer the game goes on, so stay alive! Right-click your drain ability to give all other dwarves more mana! But be wary, it will also damage you!","color":"gold"}]
team join dWARRIOR @s

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
kill @e[type=wither]

gamerule mobGriefing true

clear @s carrot_on_a_stick{CustomModelData:1000,Unbreakable:1b}
clear @s minecraft:carrot_on_a_stick{CustomModelData:3,Unbreakable:1b} 1

#loot give @s loot dvz:special/witherwarrior
give @s bow{display:{Name:'{"text":"Whispersong","color":"gold"}',Lore:['{"text":"Levels up with each kill you get.","color":"yellow"}']},Unbreakable:1b,CustomModelData:803,Whispersong:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]} 1
give @s carrot_on_a_stick{CustomModelData:45,Unbreakable:1b,display:{Name:'{"text":"Drain","color":"red"}',Lore:['[{"text":"Scrafice some health to restore your teammates mana."}]','[{"text":"Requires 30 mana!","color":"red"}]','[{"text":"1 minute cooldown!","color":"red"}]']}}
give @s carrot_on_a_stick{CustomModelData:46,Unbreakable:1b,display:{Name:'{"text":"Sunfury","color":"red"}',Lore:['[{"text":"Teleport behind a targeted enemy."}]','[{"text":"Temporarily cannot attack, but grants invulnerability."}]','[{"text":"Requires 30 mana!","color":"red"}]','[{"text":"3 second cooldown!","color":"red"}]']}}
give @s spyglass

item replace entity @s armor.head with netherite_helmet{AttributeModifiers: [{Slot: "head", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3.0d, Operation: 0, UUID: [I; -4804, 4804, 4804, 4804]}, {Slot: "head", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; -70264, 70264, 70264, 70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Warrior Helmet","color":"gold"}'}}
item replace entity @s armor.chest with netherite_chestplate{AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 8.0d, Operation: 0, UUID: [I; 4804, -4804, 4804, 4804]}, {Slot: "chest", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; -70264, 70264, 70264, 70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 4}], Unbreakable: 1b, display: {Name: '{"text":"Warrior Chestplate","color":"gold"}'}}
item replace entity @s armor.legs with netherite_leggings{AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 4804, 4804, -4804, 4804]}, {Slot: "legs", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, 70264, -70264, 70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 4}], Unbreakable: 1b, display: {Name: '{"text":"Warrior Leggings","color":"gold"}'}}
item replace entity @s armor.feet with netherite_boots{AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3.0d, Operation: 0, UUID: [I; 4804, 4804, 4804, -4804]}, {Slot: "feet", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, 70264, 70264, -70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "protection", lvl: 4}, {id: "feather_falling", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Warrior Boots","color":"gold"}'}}

#gamerule doMobSpawning true
gamerule doDaylightCycle true
gamerule doWeatherCycle true