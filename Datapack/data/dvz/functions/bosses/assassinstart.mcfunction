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
kill @a[tag=slay]
tellraw @a[tag=slay] {"text":"\u2620 You have died because you chose to become mob!","color":"gray"}
tag @a[tag=slay] remove slay

data merge entity @e[type=marker,tag=dSpawn,limit=1] {Rotation:[90F,0F]}
tag @r[tag=dwarves,tag=override] add playerboss
execute unless entity @a[tag=playerboss] run tag @r[tag=dwarves,tag=!noboss] add playerboss
execute unless entity @a[tag=playerboss] run tag @r[tag=dwarves] add playerboss
tag @a[tag=override] remove override

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
give @a[tag=playerboss] carrot_on_a_stick{CustomModelData:40,Unbreakable:1b,display:{Name:'{"text":"Knife - Right-click to instantly KILL a nearby dwarf!","color":"red","bold":"true","italic":"true"}'}}