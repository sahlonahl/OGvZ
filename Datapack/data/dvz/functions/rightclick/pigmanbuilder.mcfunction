# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: pigmanbuilder
# File Purpose: Spawn items for hoglin/builder classes
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.08.04
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Originally, the code used "pigman" as a class before they were removed in 1.16; was retrofitted to display "hoglin," but the code does not reflect the change.
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add pigman
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add pig1
team join zMONSTER @s[tag=pigman,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=pigman,tag=!selectedclass] cooked_beef 64
give @s[tag=pigman,tag=!selectedclass] golden_pickaxe{CanDestroy:["minecraft:terracotta","minecraft:stone_bricks","minecraft:stone_brick_slab","minecraft:stone_brick_stairs","minecraft:stone_brick_wall","minecraft:mossy_stone_bricks","minecraft:cracked_stone_bricks","minecraft:chiseled_stone_bricks","minecraft:mossy_stone_brick_slab","minecraft:mossy_stone_brick_wall","minecraft:mossy_stone_brick_stairs","minecraft:infested_stone_bricks","minecraft:infested_mossy_stone_bricks","minecraft:infested_cracked_stone_bricks","minecraft:infested_chiseled_stone_bricks","minecraft:smooth_quartz","minecraft:smooth_quartz_slab","minecraft:smooth_quartz_stairs","minecraft:bricks","minecraft:brick_slab","minecraft:brick_stairs","minecraft:brick_wall","minecraft:nether_bricks","minecraft:nether_brick_slab","minecraft:nether_brick_stairs","minecraft:nether_brick_fence","minecraft:nether_brick_wall","minecraft:dark_prismarine","minecraft:dark_prismarine_slab","minecraft:dark_prismarine_stairs"],display:{Name:'{"text":"Eat/Destroy block","color":"yellow"}'},Unbreakable:1b,CustomModelData:1} 1
#give @s[tag=pigman,tag=!selectedclass] carrot_on_a_stick{CustomModelData:37,Unbreakable:1b,display:{Name:'{"text":"Eat","color":"red"}',Lore:['[{"text":"Eat 50 blocks to level up!"}]','[{"text":"Your level reflects your current block count."}]','[{"text":"Level 2 - sword!"}]','[{"text":"Level 3 - armor!"}]','[{"text":"You must be standing next to stone bricks!","color":"red"}]']}} 1
item replace entity @s[tag=pigman,tag=!selectedclass] armor.head with player_head{SkullOwner:"MHF_Pig",display:{Name:'{"text":"Hoglin Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=pigman,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 14516085}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=pigman,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 14516085}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=pigman,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 14516085}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
effect give @s[tag=pigman] weakness infinite 1 true
gamemode adventure @s[tag=pigman]

execute as @s[tag=pigman] if predicate dvz:natchance run loot give @s loot dvz:mob_natures

#=========================================

execute if entity @s[tag=dwarves,tag=!selectedclass] run tag @s add builder
team join dBUILDER @s[tag=builder,tag=!selectedclass]

item replace entity @s[tag=builder,tag=!selectedclass] armor.head with leather_helmet{Enchantments: [{id: "aqua_affinity", lvl: 1},{id: "respiration", lvl: 3}], display: {Name: '{"text":"Builder Helmet","color":"green"}'}}
item replace entity @s[tag=builder,tag=!selectedclass] armor.chest with leather_chestplate{Enchantments: [{id: "protection", lvl: 3}], display: {Name: '{"text":"Builder Chestplate","color":"green"}'}}
item replace entity @s[tag=builder,tag=!selectedclass] armor.legs with leather_leggings{Enchantments: [{id: "swift_sneak", lvl: 3}], display: {Name: '{"text":"Builder Leggings","color":"green"}'}}
item replace entity @s[tag=builder,tag=!selectedclass] armor.feet with leather_boots{Enchantments: [{id: "feather_falling", lvl: 4}], display: {Name: '{"text":"Builder Boots","color":"green"}'}}

give @s[tag=builder,tag=!selectedclass] cooked_porkchop 1
give @s[tag=builder,tag=!selectedclass] stone_bricks 64
give @s[tag=builder,tag=!selectedclass] stone_bricks 64
give @s[tag=builder,tag=!selectedclass] carrot_on_a_stick{CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"Summoning Book","color":"aqua"}',Lore:['[{"text":"Conjures blocks for the keep."}]','[{"text":"duh...","color":"dark_gray"}]','[{"text":"30 second cooldown!","color":"red"}]']}}
give @s[tag=builder,tag=!selectedclass] torch 32
give @s[tag=builder,tag=!selectedclass] iron_pickaxe{display:{Name:'{"text":"Builder Pickaxe","color":"green"}'},Enchantments:[{id:"minecraft:efficiency",lvl:4s}]} 1
give @s[tag=builder,tag=!selectedclass] iron_shovel{display:{Name:'{"text":"Builder Shovel","color":"green"}'},Enchantments:[{id:"minecraft:efficiency",lvl:4s}]} 1
give @s[tag=builder,tag=!selectedclass] iron_axe{Enchantments:[{id:"silk_touch",lvl:1},{id:"minecraft:efficiency",lvl:4s}],display:{Name:'{"text":"Builder Axe","color":"green"}'}}
give @s[tag=builder,tag=!selectedclass] fire_charge 32
execute if predicate dvz:50chance run give @s[tag=builder,tag=!selectedclass] carrot_on_a_stick{CustomModelData:1000,Unbreakable:1b,display:{Name:'{"text":"Legendary Book","color":"gold"}',Lore:['[{"text":"Used with 5 Legendary Shards to make Legendary Items.","color":"blue"}]','[{"text":"Single-use item!","color":"red"}]']}}
tag @s add selectedclass
tellraw @s[tag=builder,tag=selectedclass] ["",{"text":"\u25b6","bold":true},{"text":"You are a ","color":"gold"},{"text":"BUILDER","color":"yellow"},{"text":". You make the fort for the dwarves.","color":"gold"}]
playsound block.note_block.pling master @s ~ ~ ~ 1 2
particle happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

execute as @s[tag=builder,tag=!selectedclass] if predicate dvz:buildchance run loot give @s loot dvz:starter_buildings

execute if entity @e[type=marker,tag=dvztimer,tag=aidragonselected] run tellraw @s[tag=builder] ["",{"text":"The doom event is: "},{"text":"AI Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerdragonselected] run tellraw @s[tag=builder] ["",{"text":"The doom event is: "},{"text":"Player Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=aiwitherselected] run tellraw @s[tag=builder] ["",{"text":"The doom event is: "},{"text":"AI Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerwitherselected] run tellraw @s[tag=builder] ["",{"text":"The doom event is: "},{"text":"Player Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=assassinselected] run tellraw @s[tag=builder] ["",{"text":"The doom event is: "},{"text":"Assassin","bold":true,"color":"yellow"}]
execute if entity @e[type=marker,tag=dvztimer,tag=guardianselected] run tellraw @s[tag=builder] ["",{"text":"The doom event is: "},{"text":"Elder Guardian","bold":true,"color":"aqua"}]