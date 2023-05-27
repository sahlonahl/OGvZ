# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: creeperbaker
# File Purpose: Spawn items for creeper/baker class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add creeper
team join zMONSTER @s[tag=creeper,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=creeper,tag=!selectedclass] cooked_beef 64
give @s[tag=creeper,tag=!selectedclass] carrot_on_a_stick{CustomModelData:10,Unbreakable:1b,display:{Name:'{"text":"Explode!","color":"red"}',Lore:['[{"text":"Obvisouly a single-use item!","color":"dark_red"}]']}}
item replace entity @s[tag=creeper,tag=!selectedclass] armor.head with creeper_head{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=creeper,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 42240}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=creeper,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 10082192}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=creeper,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 1854485}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1

execute as @s[tag=creeper] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @s[tag=creeper] if predicate dvz:chargedchance run function dvz:zombies/creeper/charged

#=========================================

tag @s[tag=!selectedclass] remove nomana
execute if entity @s[tag=dwarves,tag=!selectedclass] run tag @s add baker
team join dBAKER @s[tag=baker,tag=!selectedclass]
#give @s[tag=baker,tag=!selectedclass] cow_spawn_egg{display:{Name:'{"text":"Conjure Milk Dispenser"}'},EntityTag:{Invulnerable:0b,CustomNameVisible:0b,Health:40f,CustomName:'{"text":"Magic Milk Dispenser","color":"white","italic":true}',ActiveEffects:[{Id:10,Amplifier:0b,Duration:199999980,ShowParticles:0b},{Id:11b,Amplifier:3b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:40}]}} 1
give @s[tag=baker,tag=!selectedclass] cooked_porkchop 1
give @s[tag=baker,tag=!selectedclass] bricks 96
give @s[tag=baker,tag=!selectedclass] chest 2
give @s[tag=baker,tag=!selectedclass] oak_sign 3
give @s[tag=baker,tag=!selectedclass] clay_ball 40
give @s[tag=baker,tag=!selectedclass] furnace 4
give @s[tag=baker,tag=!selectedclass] coal{display:{Lore:['[{"text":"Give to the Baker!","color":"blue"}]']}} 25
give @s[tag=baker,tag=!selectedclass] carrot_on_a_stick{CustomModelData:3,Unbreakable:1b,display:{Name:'{"text":"Summoning Book","color":"aqua"}',Lore:['[{"text":"Makes bread, cake, cookies, and pie."}]','[{"text":"Requires 10 bricks (not blocks) and 30 mana!","color":"red"}]']}}
execute if predicate dvz:50chance run give @s[tag=baker,tag=!selectedclass] carrot_on_a_stick{CustomModelData:1000,Unbreakable:1b,display:{Name:'{"text":"Legendary Book","color":"gold"}',Lore:['[{"text":"Used with 5 Legendary Shards to make Legendary Items.","color":"blue"}]','[{"text":"Single-use item!","color":"red"}]']}}
tag @s add selectedclass
tellraw @s[tag=baker,tag=selectedclass] ["",{"text":"\u25b6","bold":true},{"text":"You are a ","color":"gold"},{"text":"BAKER","color":"yellow"},{"text":". You make food for the dwarves. Begin by smelting clay into bricks. You can get more coal from the blacksmith.","color":"gold"}]
playsound block.note_block.pling master @s ~ ~ ~ 1 2
particle happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

execute if entity @e[type=marker,tag=dvztimer,tag=aidragonselected] run tellraw @s[tag=baker] ["",{"text":"The doom event is: "},{"text":"AI Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerdragonselected] run tellraw @s[tag=baker] ["",{"text":"The doom event is: "},{"text":"Player Dragon","bold":true,"color":"light_purple"}]
execute if entity @e[type=marker,tag=dvztimer,tag=aiwitherselected] run tellraw @s[tag=baker] ["",{"text":"The doom event is: "},{"text":"AI Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=playerwitherselected] run tellraw @s[tag=baker] ["",{"text":"The doom event is: "},{"text":"Player Wither","bold":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=dvztimer,tag=assassinselected] run tellraw @s[tag=baker] ["",{"text":"The doom event is: "},{"text":"Assassin","bold":true,"color":"yellow"}]
execute if entity @e[type=marker,tag=dvztimer,tag=guardianselected] run tellraw @s[tag=baker] ["",{"text":"The doom event is: "},{"text":"Elder Guardian","bold":true,"color":"aqua"}]