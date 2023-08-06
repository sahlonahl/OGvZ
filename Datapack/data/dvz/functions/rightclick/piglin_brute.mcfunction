# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: piglin brute
# File Purpose: Spawn items for piglin brute class
# Created By: GalacticAC
# 
# Created On: 2023.06.17
# Last Modified On: 2023.06.17
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add piglin_brute
team join zMONSTER @s[tag=piglin_brute,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=piglin_brute,tag=!selectedclass] cooked_porkchop 64
give @s[tag=piglin_brute,tag=!selectedclass] golden_axe{display:{Name:'{"text":"Piglin Brute Axe","color":"#A17C16","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:sharpness",lvl:9s},{id:"minecraft:unbreaking",lvl:9s}],Unbreakable:1b} 1
give @s[tag=piglin_brute,tag=!selectedclass] golden_sword{display:{Name:'{"text":"Piglin Brute Sword","color":"#A17C16","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:unbreaking",lvl:5s}],Unbreakable:1b} 1
item replace entity @s[tag=piglin_brute,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Piglin Brute Helmet","color":"#A17C16","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-1745159575,-176994643,-1807272378,29003847],Slot:"head"}],SkullOwner:{Id:[I;165817796,760103910,-1737906489,126655374],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThhNzBkZjhjNTMxZDBjYWMwNDY5NGYyYTJhYjVmNzU3YzczMmRlMmI2NTY3OTNlNTQ5YTc0Njc5YjQ1YzljMiJ9fX0="}]}}} 1
item replace entity @s[tag=piglin_brute,tag=!selectedclass] armor.chest with netherite_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;-481478882,862144652,-1864199318,-2003667046],Slot:"chest"}]} 1
item replace entity @s[tag=piglin_brute,tag=!selectedclass] armor.legs with golden_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-231678761,1746550923,-2011071355,-1777507496],Slot:"legs"}]} 1
item replace entity @s[tag=piglin_brute,tag=!selectedclass] armor.feet with netherite_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-103042456,156585798,-1849880588,-180586417],Slot:"feet"}]} 1
tag @s add selectedclass

execute as @s[tag=piglin_brute] if predicate dvz:natchance run loot give @s loot dvz:mob_natures