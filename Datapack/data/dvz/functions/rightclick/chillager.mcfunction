# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: chillager
# File Purpose: Spawn items for chillager class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.05
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add chillager
team join zMONSTER @s[tag=chillager,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=chillager,tag=!selectedclass] cooked_beef 64
give @s[tag=chillager,tag=!selectedclass] stick{Enchantments:[{id:"knockback",lvl:2}],display:{Name:'{"text":"Knockback Stick"}',Lore:['[{"text":"SMACK","color":"yellow"}]']}} 1
give @s[tag=chillager,tag=!selectedclass] carrot_on_a_stick{CustomModelData:53,Unbreakable:1b,display:{Name:'{"text":"Icy","color":"aqua"}',Lore:['[{"text":"[RC] - ","color":"gold"},{"text":"Makes a short icy bridge in a straight line."}]','[{"text":"[DROP] - ","color":"gold"},{"text":"Dwarves who pick up this mine are encased in ice."}]','[{"text":"20 second cooldown!","color":"red"}]','[{"text":"Consumable!","color":"red"}]']}} 5
give @s[tag=chillager,tag=!selectedclass] carrot_on_a_stick{CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"Invisibility","color":"light_purple"}',Lore:['[{"text":"True invisibility for 60 seconds."}]','[{"text":"Take more damage while invis.","color":"red"}]','[{"text":"Single-use item!","color":"red"}]']}} 1
item replace entity @s[tag=chillager,tag=!selectedclass] armor.head with firework_star{CustomModelData:4,display:{Name:'{"text":"Chillager Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=chillager,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 1456243}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=chillager,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 1456243}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=chillager,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 1456243}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
effect give @s[tag=chillager,tag=!selectedclass] jump_boost 1000000 2 true
effect give @s[tag=chillager,tag=!selectedclass] speed 1000000 1 true
tag @s add selectedclass

execute as @s[tag=chillager] if predicate dvz:natchance run loot give @s loot dvz:mob_natures