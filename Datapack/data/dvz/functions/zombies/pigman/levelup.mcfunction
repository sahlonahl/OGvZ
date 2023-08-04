# -------------------------------------------
# Called By: dvz:tick
# File Name: levelup
# File Purpose: Adds items and effects to hoglin after eating enough bricks
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

# level up number 2
item replace entity @s[tag=pigman,tag=pig2] armor.head with firework_star{CustomModelData:10,display:{Name:'{"text":"Hoglin Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:5},{id: "protection", lvl: 4},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=pigman,tag=pig2] armor.chest with iron_chestplate{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "protection", lvl: 3}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=pigman,tag=pig2] armor.legs with iron_leggings{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=pigman,tag=pig2] armor.feet with iron_boots{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
execute as @s[tag=pigman,tag=pig2] run effect clear @s weakness
execute as @s[tag=pigman,tag=pig2] run effect give @s health_boost 999999 2
execute as @s[tag=pigman,tag=pig2] run effect give @s instant_health 1 10
execute if entity @s[tag=pigman,tag=pig2] run clear @s carrot_on_a_stick{CustomModelData:37,Unbreakable:1b}
#execute if entity @s[tag=pigman,tag=pig2] run effect give @s minecraft:regeneration 1000000 0 true
execute if entity @s[tag=pigman,tag=pig2] run clear @s golden_pickaxe{CustomModelData:1,Unbreakable:1b}
execute as @s[tag=pigman,tag=pig2] run summon lightning_bolt ~ ~64 ~
execute as @s[tag=pigman,tag=pig2] at @s run playsound block.chorus_flower.grow master @a ~ ~ ~ 2
execute as @s[tag=pigman,tag=pig2] at @s run playsound entity.player.burp master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=pigman,tag=pig2] as @a run playsound entity.zoglin.angry master @s ~ ~ ~ 100 0.8
execute if entity @s[tag=pigman,tag=pig2] as @a run playsound entity.zoglin.angry master @s ~ ~ ~ 100 1.5
execute as @s[tag=pigman,tag=pig2] run gamemode survival @s
execute as @s[tag=pigman,tag=pig2] run clear @s #dvz:builderblocks
execute if entity @s[tag=pigman,tag=pig2] run tag @s add pig3
execute if entity @s[tag=pigman,tag=pig2] run tag @s remove pig2
execute if entity @s[tag=pigman,tag=pig3] run tellraw @a ["",{"text":"ALERT:","bold":true,"color":"red"},{"text":" A ","color":"gold"},{"text":"Hoglin ","italic":true,"color":"#FAB6A1"},{"text":"(","color":"#FAB6A1"},{"selector":"@s","color":"#FAB6A1"},{"text":")","color":"#FAB6A1"},{"text":" has risen!","color":"gold"}]

# level up number 1
execute as @s[tag=pigman,tag=pig1] at @s run playsound block.chorus_flower.grow master @a ~ ~ ~ 2
execute as @s[tag=pigman,tag=pig1] at @s run playsound entity.player.burp master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=pigman,tag=pig1] run give @s iron_sword{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:5}]} 1
execute if entity @s[tag=pigman,tag=pig1] run enchant @s efficiency 4
execute if entity @s[tag=pigman,tag=pig1] run tag @s add pig2
execute if entity @s[tag=pigman,tag=pig1] run tag @s remove pig1

# xp reset
xp set @s 0 levels