# -------------------------------------------
# Called By: dvz:bosses/boss
# File Name: playerdragonstart
# File Purpose: summons player dragon boss
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.07.29
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

function dvz:bosses/monster_volunteer

function dvz:bosses/boss_select

team leave @a[tag=playerboss]
tag @a[tag=playerboss] add playerdragonpick

title @a subtitle ["",{"selector":"@a[tag=playerboss]","color":"red"},{"text":" is the dragon!","color":"red"}]
title @a title ""
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1.5
bossbar set dvz:dragonhealth visible true
team join zDRAGON @a[tag=playerboss]

tag @a[tag=playerboss] remove admin
tag @a[tag=playerboss] remove messaged
tag @a[tag=playerboss] remove dwarves
tag @a[tag=playerboss] remove builder
tag @a[tag=playerboss] remove alchemist
tag @a[tag=playerboss] remove baker
tag @a[tag=playerboss] remove blacksmith
tag @a[tag=playerboss] remove enchanter
tag @a[tag=playerboss] remove tailor
tag @a[tag=playerboss] remove nomana
tag @a[tag=playerboss] remove dragon
tag @a[tag=playerboss] remove zombies
tag @a[tag=playerboss] remove zombie
tag @a[tag=playerboss] remove skeleton
tag @a[tag=playerboss] remove creeper
tag @a[tag=playerboss] remove spider
tag @a[tag=playerboss] remove wolf
tag @a[tag=playerboss] remove ocelot
tag @a[tag=playerboss] remove silverfish
tag @a[tag=playerboss] remove pigman
tag @a[tag=playerboss] remove pig1
tag @a[tag=playerboss] remove pig2
tag @a[tag=playerboss] remove pig3
tag @a[tag=playerboss] remove blaze
tag @a[tag=playerboss] remove enderman
tag @a[tag=playerboss] remove ePortal

clear @a[tag=playerboss]
effect clear @a[tag=playerboss]
gamemode creative @a[tag=playerboss]
effect give @a[tag=playerboss] invisibility infinite 2 true

give @a[tag=playerboss] carrot_on_a_stick{CustomModelData:31,Unbreakable:1b,display:{Name:'{"text":"Dragon Breath","color":"light_purple"}'}}
give @a[tag=playerboss] carrot_on_a_stick{CustomModelData:32,Unbreakable:1b,display:{Name:'{"text":"World Cracker","color":"red"}'}}

execute at @r[tag=dwarves] positioned ~ ~30 ~ run summon minecraft:ender_dragon ~ ~ ~ {DragonPhase:10,Tags:[tpdragon]}
tp @a[tag=playerboss] @e[tag=tpdragon,limit=1]