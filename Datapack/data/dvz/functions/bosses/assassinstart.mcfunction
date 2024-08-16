# -------------------------------------------
# Called By: dvz:bosses/boss
# File Name: assassinstart
# File Purpose: sets a random dwarf as the assassin
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.02.19
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

function dvz:bosses/monster_volunteer

function dvz:bosses/boss_select

tag @a[tag=playerboss] add assassinpick
scoreboard players set @a[tag=assassinpick] DVZ.Akill.cool 0

title @a subtitle {"text":"Find the Assassin!","color":"green"}
title @a[tag=playerboss] subtitle {"text":"You are the Assassin!","color":"red"}
title @a title ""
execute as @a at @s run playsound ambient.cave master @s ~ ~ ~ 1 1.5
execute as @a at @s run playsound entity.villager.trade master @s ~ ~ ~ 1 0.8
scoreboard players set @a[tag=playerboss] DVZ.timer 2400
bossbar set dvz:assassintimer visible true

tellraw @s[tag=playerboss] ["",{"text":"\u25b6","bold":true},{"text":"You're the ASSASSIN! KILL THE OTHER DWARVES!","color":"dark_red"}]
clear @a[tag=playerboss] carrot_on_a_stick{CustomModelData:38}
clear @a[tag=playerboss] carrot_on_a_stick{CustomModelData:27}
give @a[tag=playerboss] carrot_on_a_stick{CustomModelData:40,Unbreakable:1b,display:{Name:'{"text":"Knife - Right-click to instantly KILL a nearby dwarf!","color":"red","bold":true,"italic":true}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1,1,-1,-1],Slot:"mainhand"}]}
