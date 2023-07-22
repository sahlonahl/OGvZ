# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: slime
# File Purpose: Spawn items for slime class
# Created By: GalacticAC
# 
# Created On: 2023.06.24
# Last Modified On: 2023.07.04
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add slime
playsound entity.slime.ambient master @a ~ ~ ~ 200
tellraw @a ["",{"text":"ALERT:","bold":true,"color":"red"},{"text":" A ","color":"gold"},{"text":"Slime ","italic":true,"color":"gray"},{"text":"(","color":"gray"},{"selector":"@s[tag=slime]","color":"gray"},{"text":")","color":"gray"},{"text":" approaches!","color":"gold"}]
team join zMONSTER @s[tag=slime,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=slime,tag=!selectedclass] cooked_beef 64
give @s[tag=slime,tag=!selectedclass] slime_ball{display:{Name:'{"text":"Bouncy Slime","color":"#63FF78","bold":false,"italic":false}',Lore:['{"text":"Boink!","color":"gray","bold":false,"italic":false}']},Enchantments:[{id:"minecraft:sharpness",lvl:10s},{id:"minecraft:knockback",lvl:3s}]} 1
give @s[tag=slime,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Slime Spit","color":"#63FF78"}',Lore:['{"text":"Shoot a damaging projectile","color":"gray","bold":false,"italic":false}','{"text":"that also damages walls","color":"gray","bold":false,"italic":false}','{"text":"1 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:101} 1
give @s[tag=slime,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Corrosive Blast","color":"#63FF78"}',Lore:['{"text":"Fire a slime bomb that","color":"gray","bold":false,"italic":false}','{"text":"damages dwarves and walls","color":"gray","bold":false,"italic":false}','{"text":"20 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:102} 1
give @s[tag=slime,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Corrosive Virus","color":"#63FF78"}',Lore:['{"text":"Grant a nearby monster the","color":"gray","bold":false,"italic":false}','{"text":"ability to self-detonate","color":"gray","bold":false,"italic":false}','{"text":"12 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:103} 1
item replace entity @s[tag=slime,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Slime Head","color":"#63FF78","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-1022769805,-501854429,-1848319763,304805224],Slot:"head"}],SkullOwner:{Id:[I;-2094978945,1481330305,-2101253845,-849097528],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIwZTg0ZDMyZDFlOWM5MTlkM2ZkYmI1M2YyYjM3YmEyNzRjMTIxYzU3YjI4MTBlNWE0NzJmNDBkYWNmMDA0ZiJ9fX0="}]}}} 1
item replace entity @s[tag=slime,tag=!selectedclass] armor.chest with leather_chestplate{display:{color:6553464},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;-316994994,751061151,-1986384293,-1368749813],Slot:"chest"}]} 1
item replace entity @s[tag=slime,tag=!selectedclass] armor.legs with leather_leggings{display:{color:6553464},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1560872269,-1101968558,-1904990484,-869999700],Slot:"legs"}]} 1
item replace entity @s[tag=slime,tag=!selectedclass] armor.feet with leather_boots{display:{color:6553464},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-670458275,-140295036,-1299415045,-289988724],Slot:"feet"}]} 1
effect give @s[tag=slime,tag=!selectedclass] slowness 99999 1 true
effect give @s[tag=slime,tag=!selectedclass] regeneration 99999 0 true
tag @s add selectedclass
execute as @s[tag=slime] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
