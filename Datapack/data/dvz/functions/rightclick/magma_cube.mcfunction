# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: magma_cube
# File Purpose: Spawn items for magma_cube class
# Created By: GalacticAC
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.25
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add magma_cube
team join zMONSTER @s[tag=magma_cube,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=magma_cube,tag=!selectedclass] cooked_beef 64
give @s[tag=magma_cube,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Infernal Grenade","color":"#451000"}',Lore:['{"text":"Throw a projectile that spawns","color":"gray","bold":false,"italic":false}','{"text":"3 large magma cubes","color":"gray","bold":false,"italic":false}','{"text":"20 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:94} 1
give @s[tag=magma_cube,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Meltdown","color":"#451000"}',Lore:['{"text":"Kill yourself and spawn a","color":"gray","bold":false,"italic":false}','{"text":"gigantic magma cube","color":"gray","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:95} 1
item replace entity @s[tag=magma_cube,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Magma Cube Head","color":"#451000","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-577448861,185288407,-1113216384,1904599080],Slot:"head"}],SkullOwner:{Id:[I;-783380762,-309113330,-2006895573,1994652983],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTFjOTdhMDZlZmRlMDRkMDAyODdiZjIwNDE2NDA0YWIyMTAzZTEwZjA4NjIzMDg3ZTFiMGMxMjY0YTFjMGYwYyJ9fX0="}]}}} 1
item replace entity @s[tag=magma_cube,tag=!selectedclass] armor.chest with leather_chestplate{display:{color:4526080},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s[tag=magma_cube,tag=!selectedclass] armor.legs with leather_leggings{display:{color:4526080},Unbreakable: 1b, Enchantments: [{id:"minecraft:protection",lvl:1s},{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=magma_cube,tag=!selectedclass] armor.feet with leather_boots{display:{color:4526080},Unbreakable: 1b, Enchantments: [{id:"minecraft:protection",lvl:1s},{id: "blast_protection", lvl: 4},{id: "binding_curse", lvl: 1}]} 1
effect give @s[tag=magma_cube,tag=!selectedclass] fire_resistance 99999 0 true
tag @s add selectedclass
execute as @s[tag=magma_cube] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
