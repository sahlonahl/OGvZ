# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: blaze
# File Purpose: Spawn items for blaze class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.07.06
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add blaze
execute if entity @s[tag=blaze,tag=!selectedclass] run tag @s add ghastflight
team join zMONSTER @s[tag=blaze,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=blaze,tag=!selectedclass] cooked_beef 64
give @s[tag=blaze,tag=!selectedclass] stick{display:{Name:'{"text":"Fire Aspect","color":"gold"}',Lore:['[{"text":"Burn, baby, burn!","color":"red"}]']},Enchantments:[{id:"fire_aspect",lvl:10},{id:"knockback",lvl:2}],Blaze:1} 1
give @s[tag=blaze,tag=!selectedclass] carrot_on_a_stick{CustomModelData:2,Unbreakable:1b,display:{Name:'{"text":"Firefly","color":"gold"}',Lore:['[{"text":"Briefly fly where you are looking."}]','[{"text":"15 second cooldown!","color":"red"}]']}} 1
give @s[tag=blaze,tag=!selectedclass] carrot_on_a_stick{CustomModelData:22,Unbreakable:1b,display:{Name:'{"text":"Fireball","color":"gold"}',Lore:['[{"text":"Fires 9 fireballs."}]','[{"text":"5 second cooldown!","color":"red"}]']}} 1
give @s[tag=blaze,tag=!selectedclass] fire_charge 64
give @s[tag=blaze,tag=!selectedclass] stick{CustomModelData:36,Descend:1b,display:{Name:'[{"text":"Slow descent","color":"red"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
item replace entity @s[tag=blaze,tag=!selectedclass] armor.head with player_head{SkullOwner:"MHF_Blaze",display:{Name:'{"text":"Blaze Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=blaze,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 16775239}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=blaze,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 16553472}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=blaze,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 9122817}, Enchantments: [{id: "feather_falling", lvl: 100}, {id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1

effect give @s[tag=blaze,tag=!selectedclass] jump_boost 1000000 255 true
effect give @s[tag=blaze,tag=!selectedclass] fire_resistance 1000000 4 true
#effect give @s[tag=blaze,tag=!selectedclass] mining_fatigue 1000000 4 true
tag @s add selectedclass

execute as @s[tag=blaze] if predicate dvz:natchance run loot give @s loot dvz:mob_natures