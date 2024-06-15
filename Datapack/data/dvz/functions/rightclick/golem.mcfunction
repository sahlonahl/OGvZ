# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: golem
# File Purpose: Spawn items for iron golem class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.09.08
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

playsound entity.iron_golem.repair master @a ~ ~ ~ 200
tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add golem
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add purplemob
tellraw @a ["",{"text":"ALERT:","bold":true,"color":"red"},{"text":" A ","color":"gold"},{"text":"Golem ","italic":true,"color":"gray"},{"text":"(","color":"gray"},{"selector":"@s[tag=golem,tag=!selectedclass]","color":"gray"},{"text":")","color":"gray"},{"text":" approaches!","color":"gold"}]
team join zGOLEM @s[tag=golem,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=golem,tag=!selectedclass] cooked_beef 64
give @s[tag=golem,tag=!selectedclass] carrot_on_a_stick{CustomModelData:57,Unbreakable:1b,display:{Name:'{"text":"Fissure","color":"gold"}',Lore:['[{"text":"Raise the dirt in a straight line."}]','[{"text":"Good for making cover."}]','[{"text":"5 second cooldown!","color":"red"}]']}} 1
#give @s[tag=golem,tag=!selectedclass] carrot_on_a_stick{CustomModelData:75,Unbreakable:1b,display:{Name:'{"text":"Leap","color":"gold"}',Lore:['[{"text":"Leap into the air!."}]','[{"text":"Good for overcoming obstacles."}]','[{"text":"30 second cooldown!","color":"red"}]']}} 1
item replace entity @s[tag=golem,tag=!selectedclass] armor.head with firework_star{CustomModelData:8,display:{Name:'{"text":"Golem Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"protection",lvl:1},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=golem,tag=!selectedclass] armor.chest with iron_chestplate{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "protection", lvl: 2}, {id: "binding_curse", lvl: 1}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.5,Operation:0,UUID:[I;-795877646,-574667296,-1983472701,-341701748]}]} 1
item replace entity @s[tag=golem,tag=!selectedclass] armor.legs with iron_leggings{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 2}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=golem,tag=!selectedclass] armor.feet with iron_boots{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 2}, {id: "binding_curse", lvl: 1}, {id: "feather_falling", lvl: 10}]} 1

effect give @s[tag=golem,tag=!selectedclass] jump_boost 1000000 128 true
effect give @s[tag=golem,tag=!selectedclass] slowness 1000000 4 true
effect give @s[tag=golem,tag=!selectedclass] strength 1000000 255 true
effect give @s[tag=golem,tag=!selectedclass] mining_fatigue 1000000 255 true
effect give @s[tag=golem,tag=!selectedclass] regeneration 1000000 2 true
tag @s add selectedclass
execute as @e[tag=dvztimer,tag=fight] run scoreboard players add @s DVZ.purplemob 1

execute as @s[tag=golem] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures