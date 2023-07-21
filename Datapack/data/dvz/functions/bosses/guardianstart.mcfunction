# -------------------------------------------
# Called By: dvz:bosses/boss
# File Name: guardianstart
# File Purpose: summons guardian boss
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.07.21
# Last Modified By: wilkekids
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

team leave @a[tag=playerboss]
tag @a[tag=playerboss] add playerguardianpick

title @a subtitle ["",{"selector":"@a[tag=playerboss]","color":"red"},{"text":" is the guardian!","color":"red"}]
title @a title ""
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1.5
bossbar set dvz:guardianhealth visible true
team join zGUARDIAN @a[tag=playerboss]

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
gamemode survival @a[tag=playerboss]
effect give @a[tag=playerboss] invisibility 1000000 2 true
effect give @a[tag=playerboss] conduit_power 1000000 2 true
effect give @a[tag=playerboss] dolphins_grace 1000000 0 true
effect give @a[tag=playerboss] regeneration 1000000 9 true

give @a[tag=playerboss] carrot_on_a_stick{CustomModelData:43,Unbreakable:1b,display:{Name:'{"text":"Guardian Beam","color":"red"}'}}
# give @a[tag=playerboss] carrot_on_a_stick{CustomModelData:44,Unbreakable:1b,display:{Name:'{"text":"Invisibility","color":"red"}'}}
give @a[tag=playerboss] trident{ Unbreakable:1b , Enchantments: [{id: "riptide", lvl: 3}] }
item replace entity @s armor.feet with chainmail_boots{AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3.0d, Operation: 0, UUID: [I; 4804, 4804, 4804, -4804]}, {Slot: "feet", AttributeName: "generic.armor_toughness", Name: "generic.armor_toughness", Amount: 2.0d, Operation: 0, UUID: [I; 70264, 70264, 70264, -70264]}], Enchantments: [{id: "binding_curse", lvl: 1}, {id: "feather_falling", lvl: 5}], Unbreakable: 1b, display: {Name: '{"text":"Guard Boots","color":"gold"}'}}
give @a[tag=playerboss] guardian_spawn_egg 16
give @a[tag=playerboss] drowned_spawn_egg 16
give @a[tag=playerboss] pufferfish_spawn_egg 16

execute at @r[tag=dwarves] positioned ~30 ~30 ~30 run summon minecraft:elder_guardian ~ ~ ~ {Tags:[tpguardian],NoAI:1b,Health:200f,Attributes:[{Name:generic.max_health,Base:200}]}
tp @a[tag=playerboss] @e[tag=tpguardian,limit=1]