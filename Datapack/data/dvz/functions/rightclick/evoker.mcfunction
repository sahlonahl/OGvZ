# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: evoker
# File Purpose: Spawn items for evoker class
# Created By: GalacticAC
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.27
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add evoker
playsound entity.evoker.ambient master @a ~ ~ ~ 200
tellraw @a ["",{"text":"ALERT:","bold":true,"color":"red"},{"text":" A ","color":"gold"},{"text":"evoker ","italic":true,"color":"gray"},{"text":"(","color":"gray"},{"selector":"@s[tag=evoker]","color":"gray"},{"text":")","color":"gray"},{"text":" approaches!","color":"gold"}]
team join zMONSTER @s[tag=evoker,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=evoker,tag=!selectedclass] cooked_beef 64
give @s[tag=evoker,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Cursed Bolt","color":"#D7B740"}',Lore:['{"text":"Fire a bolt that heavily","color":"gray","bold":false,"italic":false}','{"text":"debuffs dwarves hit","color":"gray","bold":false,"italic":false}','{"text":"7 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:106} 1
give @s[tag=evoker,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Summon Legion","color":"#D7B740"}',Lore:['{"text":"Summon 8 illager legionaries","color":"gray","bold":false,"italic":false}','{"text":"35 second cooldown!","color":"red","bold":false,"italic":false}','{"text":"Recast during cooldown to","color":"aqua","bold":false,"italic":false}','{"text":"teleport legionaries to you","color":"aqua","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:105} 1
give @s[tag=evoker,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Enchanted Ward","color":"#D7B740"}',Lore:['{"text":"Grant every allies nearby","color":"gray","bold":false,"italic":false}','{"text":"resistance and absorption","color":"gray","bold":false,"italic":false}','{"text":"45 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:107} 1
item replace entity @s[tag=evoker,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Evoker Head","color":"#D7B740","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;1800270964,855392417,-1161676964,835049133],Slot:"head"}],SkullOwner:{Id:[I;-1695604743,2120698196,-1934226442,-2062254106],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjMwY2U3NzVlZGI2NWRiOGMyNzQxYmRmYWU4NGYzYzBkMDI4NWFiYTkzYWZhZGM3NDkwMGQ1NWRmZDk1MDRhNSJ9fX0="}]}}} 1
item replace entity @s[tag=evoker,tag=!selectedclass] armor.chest with leather_chestplate{display:{color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;-1608972337,360663721,-1892408177,-1507998250],Slot:"chest"}]} 1
item replace entity @s[tag=evoker,tag=!selectedclass] armor.legs with leather_leggings{display:{color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-901999363,-1768928511,-2059730753,2084723041],Slot:"legs"}]} 1
item replace entity @s[tag=evoker,tag=!selectedclass] armor.feet with leather_boots{display:{color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-1112946177,306726155,-1585353291,2071380578],Slot:"feet"}]} 1
tag @s add selectedclass
execute as @s[tag=evoker] if predicate dvz:natchance run loot give @s loot dvz:mob_natures