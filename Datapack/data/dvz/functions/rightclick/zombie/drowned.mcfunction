# -------------------------------------------
# Called By: dvz:rightclick\zombie
# File Name: drowned
# File Purpose: Spawn items for drowned variant-zombie class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.08.04
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
tag @s[tag=!selectedclass] add drowned
team join zMONSTER @s[tag=drowned,tag=!selectedclass]
clear @s[tag=!selectedclass]
effect give @s[tag=drowned,tag=!selectedclass] conduit_power 1000000 0

give @s[tag=drowned,tag=!selectedclass] cooked_beef 64
give @s[tag=drowned,tag=!selectedclass] iron_sword{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:2}]}
loot give @s[tag=drowned,tag=!selectedclass] loot dvz:classes/drownedtrident
give @s[tag=drowned,tag=!selectedclass] splash_potion{Potion:"minecraft:strong_healing"} 2
loot give @s[tag=drowned,tag=!selectedclass] loot dvz:classes/zombiepotion
loot give @s[tag=drowned,tag=!selectedclass] loot dvz:classes/zombietoys
give @s[tag=drowned,tag=!selectedclass] shield

#item replace entity @s[tag=drowned,tag=!selectedclass] armor.head with pumpkin{display:{Name:'{"text":"Drowned Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1},{id:"protection",lvl:2}],AttributeModifiers:[{Slot:"head",AttributeName:"generic.armor", Name:"generic.armor", Amount:2.0, Operation:0, UUID:[I; -64585, 64804, 64804, 64804]}]}
item replace entity @s[tag=drowned,tag=!selectedclass] armor.head with player_head{SkullOwner:{Id:[I;790009440,1639859901,-1397417282,-100772047],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNmN2NjZjYxZGJjM2Y5ZmU5YTYzMzNjZGUwYzBlMTQzOTllYjJlZWE3MWQzNGNmMjIzYjNhY2UyMjA1MSJ9fX0="}]}},display:{Name:'{"text":"Drowned Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1},{id:"protection",lvl:2}],AttributeModifiers:[{Slot:"head",AttributeName:"generic.armor", Name:"generic.armor", Amount:2.0, Operation:0, UUID:[I; -64585, 64804, 64804, 64804]}]}
item replace entity @s[tag=drowned,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 6571569}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 64585, -64804, 64804, 64804]}]}
item replace entity @s[tag=drowned,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 5782827}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 5.0d, Operation: 0, UUID: [I; 64585, 64804, -64804, 64804]}]}
item replace entity @s[tag=drowned,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 5670014}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}, {id: "feather_falling", lvl: 4}], AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 2.0d, Operation: 0, UUID: [I; 64585, 64804, 64804, -64804]}]}

execute as @s[tag=drowned] if predicate dvz:natchance run loot give @s loot dvz:mob_natures