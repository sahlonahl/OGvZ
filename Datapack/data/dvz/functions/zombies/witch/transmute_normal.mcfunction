# -------------------------------------------
# Called By: dvz:zombies/witch/transmute_start
# File Name: transmute_normal
# File Purpose: Transmutation
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.25
# Last Modified By: Galactic
#
# Credit to:
#
# Comments: 
# -------------------------------------------

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Frog Head","color":"green","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;1155727929,-127712743,-1762331860,-1392814469],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;806320319,1606435637,-1453358447,-343585815],Slot:"head"}],SkullOwner:{Id:[I;-1933369080,1296123246,-1543933044,-873023755],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2U2MmU4YTA0OGQwNDBlYjA1MzNiYTI2YTg2NmNkOWMyZDA5MjhjOTMxYzUwYjQ0ODJhYzNhMzI2MWZhYjZmMCJ9fX0="}]}}} 1
give @s potion{display:{Name:'{"text":"Frog Potion","color":"green","bold":false,"italic":false}'},CustomPotionEffects:[{Id:1,Amplifier:0b,Duration:1200,ShowParticles:0b},{Id:8,Amplifier:1b,Duration:1200,ShowParticles:0b}],CustomPotionColor:65280} 1
give @s crossbow{display:{Name:'{"text":"Tongue Launcher","color":"green","bold":false,"italic":false}'},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
give @s tipped_arrow{display:{Name:'{"text":"Sticky Tongue","color":"green","bold":false,"italic":false}'},CustomPotionEffects:[{Id:2,Amplifier:2b,Duration:100},{Id:19,Amplifier:0b,Duration:60}],CustomPotionColor:16735838} 5
tellraw @s {"text":"You have been turned into a frog!","color":"green","bold":false,"italic":false}