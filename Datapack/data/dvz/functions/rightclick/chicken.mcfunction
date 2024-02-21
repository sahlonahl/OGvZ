# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: chicken
# File Purpose: Spawn items for chicken class
# Created By: Zaffre
# 
# Created On: 2022.03.18
# Last Modified On: 2023.09.08
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add chicken
execute if entity @s[tag=chicken,tag=!selectedclass] run tag @s add ghastflight
team join zCHICKEN @s[tag=chicken,tag=!selectedclass]
clear @s[tag=!selectedclass]
gamemode adventure @s[tag=chicken]

give @s[tag=chicken,tag=!selectedclass] cooked_chicken 64
give @s[tag=chicken,tag=!selectedclass] carrot_on_a_stick{CustomModelData:69,Unbreakable:1b,display:{Name:'[{"text":"Fly","color":"gold"}]',Lore:['[{"text":"Fly for a short time."}]']}} 1
give @s[tag=chicken,tag=!selectedclass] egg{team:"zMONSTER"} 16
give @s[tag=chicken,tag=!selectedclass] chicken{display:{Name:'{"text":"NUGGET NUDGE","color":"gold"}',Lore:['{"text":"ITZ DA CHIKIN NUGGY! Really though, just slap people. That\'s it.","color":"gold"}']},AttributeModifiers:[{Slot:"mainhand", AttributeName:"generic.attack_damage", Name:"generic.attack_damage", Amount:1.0, Operation:0, UUID:[I; 1, 1, -1, -1]}] ,Enchantments:[{id:"minecraft:knockback",lvl:2s}]}
give @s[tag=chicken,tag=!selectedclass] stick{CustomModelData:36,Descend:1b,display:{Name:'[{"text":"Descend","color":"red"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
#give @s[tag=chicken,tag=!selectedclass] stick{CustomModelData:70,Levitate:1b,display:{Name:'[{"text":"Levitate","color":"green"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1

item replace entity @s[tag=chicken,tag=!selectedclass] armor.head with firework_star{CustomModelData:15,display:{Name:'{"text":"Chicken Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=chicken,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 16777215}, Enchantments: [{id: "blast_protection", lvl: 10}, {id: "binding_curse", lvl: 1}], AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-3,Operation:0,UUID:[I;-1840866818,-221950756,-1828424277,-1758675542]}]} 1
item replace entity @s[tag=chicken,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 16775239}, Enchantments: [{id: "blast_protection", lvl: 10}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=chicken,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 16775239}, Enchantments: [{id: "feather_falling", lvl: 100}, {id: "blast_protection", lvl: 10}, {id: "binding_curse", lvl: 1}]} 1

#effect give @s[tag=chicken,tag=!selectedclass] jump_boost 1000000 255 true
tag @s add selectedclass

execute as @s[tag=chicken] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures