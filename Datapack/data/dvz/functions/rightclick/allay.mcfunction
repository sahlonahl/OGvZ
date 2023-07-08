# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: allay
# File Purpose: Spawn items for allay class
# Created By: Galactic
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.27
# Last Modified By: Galactic
#
# Credit to:
#
# Comments: flight items are controlled by "ghastflight" via dvz:tick
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add allay
execute if entity @s[tag=allay,tag=!selectedclass] run tag @s add ghastflight
team join zMONSTER @s[tag=allay,tag=!selectedclass]
clear @s[tag=!selectedclass]
gamemode adventure @s[tag=allay]

give @s[tag=allay,tag=!selectedclass] stick{CustomModelData:70,Levitate:1b,display:{Name:'[{"text":"Levitate","color":"green"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
give @s[tag=allay,tag=!selectedclass] stick{CustomModelData:36,Descend:1b,display:{Name:'[{"text":"Descend","color":"red"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
give @s[tag=allay,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Fly","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"Rapidly dash in one direction","color":"gray","bold":false,"italic":false}','{"text":"16 second cooldown","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:97} 1
give @s[tag=allay,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Pick Up","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"Pick up a monster player","color":"gray","bold":false,"italic":false}','{"text":"18 second cooldown","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:98} 1
give @s[tag=allay,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Drop","color":"aqua","bold":false,"italic":false}',Lore:['{"text":"Drop carried player","color":"gray","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:100} 1

give @s[tag=allay,tag=!selectedclass] cooked_beef 64

item replace entity @s[tag=allay,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Allay Head","color":"aqua","bold":true,"italic":false}'},CustomModelData:1,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;853329629,-266648593,-1753336815,-507494641],Slot:"head"}],SkullOwner:{Id:[I;115351623,-181647520,-2077434469,513339198],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmVlYTg0NWNjMGI1OGZmNzYzZGVjZmZlMTFjZDFjODQ1YzVkMDljM2IwNGZlODBiMDY2M2RhNWM3YzY5OWViMyJ9fX0="}]}}} 1
item replace entity @s[tag=allay,tag=!selectedclass] armor.chest with leather_chestplate{display:{color:65535},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s[tag=allay,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 65535}, Enchantments: [{id: "blast_protection", lvl: 4},{id:"minecraft:projectile_protection",lvl:1s},{id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=allay,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 65535}, Enchantments: [{id: "feather_falling", lvl: 10},{id:"minecraft:projectile_protection",lvl:1s},{id: "blast_protection", lvl: 4},{id: "binding_curse", lvl: 1}]} 1

tag @s add selectedclass

execute as @s[tag=allay] if predicate dvz:natchance run loot give @s loot dvz:mob_natures