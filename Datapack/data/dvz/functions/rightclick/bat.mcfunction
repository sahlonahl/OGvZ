# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: bat
# File Purpose: Spawn items for bat class
# Created By: GalacticAC
# 
# Created On: 2023.07.08
# Last Modified On: 2023.07.08
# Last Modified By: GalacticAC
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add bat
execute if entity @s[tag=bat,tag=!selectedclass] run tag @s add ghastflight
team join zMONSTER @s[tag=bat,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=bat,tag=!selectedclass] stick{CustomModelData:70,Levitate:1b,display:{Name:'[{"text":"Levitate","color":"green"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
give @s[tag=bat,tag=!selectedclass] stick{CustomModelData:36,Descend:1b,display:{Name:'[{"text":"Descend","color":"red"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
give @s[tag=bat,tag=!selectedclass] cooked_beef 64
give @s[tag=bat,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Echolocation","color":"#331A00","bold":false,"italic":false}',Lore:['{"text":"Mark players and make them glow,","color":"gray","bold":false,"italic":false}','{"text":"also indicates their current hp","color":"gray","bold":false,"italic":false}','{"text":"13 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:115} 1
give @s[tag=bat,tag=!selectedclass] carrot_on_a_stick{display:{Name:'{"text":"Shroud of Night","color":"#331A00","bold":false,"italic":false}',Lore:['{"text":"Give nearby dwarves blindness and darkness","color":"gray","bold":false,"italic":false}','{"text":"30 second cooldown!","color":"red","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:116} 1
item replace entity @s[tag=bat,tag=!selectedclass] armor.head with player_head{display:{Name:'{"text":"Bat Head","color":"#331A00","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-1466252325,-323793255,-1216236352,1756632011],Slot:"head"}],SkullOwner:{Id:[I;1331404383,-1076739259,-1376811539,1267859806],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjY4MWE3MmRhNzI2M2NhOWFlZjA2NjU0MmVjY2E3YTE4MGM0MGUzMjhjMDQ2M2ZjYjExNGNiM2I4MzA1NzU1MiJ9fX0="}]}}} 1
item replace entity @s[tag=bat,tag=!selectedclass] armor.chest with leather_chestplate{display:{color:3348992},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s[tag=bat,tag=!selectedclass] armor.legs with leather_leggings{display:{color:3348992},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s[tag=bat,tag=!selectedclass] armor.feet with leather_boots{display:{color:3348992},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:10s}]} 1
tag @s add selectedclass
execute as @s[tag=bat] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
