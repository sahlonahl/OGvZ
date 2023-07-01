# -------------------------------------------
# Called By: MINECRAFT
# File Name: tick
# File Purpose: called every tick, serves as the main branch for all other functions
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.24
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

#Player Checks
schedule function dvz:unload 5s
execute as @a[tag=!DVZready] run function dvz:dvzready
execute at @e[type=marker,tag=zProtect] run effect give @a[tag=zombies,tag=!miniboss,distance=..25,nbt=!{ActiveEffects:[{Id:10,Amplifier:4b}]}] regeneration 2 4 true
execute as @a run execute store result score @s DVZ.lava run clear @s minecraft:lava_bucket
execute as @a[scores={DVZ.lava=1..}] run function dvz:lava
execute at @a[tag=!admin] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace nether_portal
execute at @a[tag=!admin] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace end_portal

xp set @a 0 points
function dvz:rightclick/detect
function dvz:itemeffects
function dvz:nodrop
execute as @a[tag=dwarves,scores={DVZ.death=1..}] at @s run function dvz:customdeath/customdeath

#Player Notices
execute at @e[type=marker,tag=zProtect] run kill @a[tag=dwarves,tag=!admin,distance=..30]
execute at @e[type=marker,tag=dSpawn] run kill @a[tag=dwarves,tag=!admin,distance=150..]
execute at @e[type=marker,tag=dSpawn] run execute at @a[tag=dwarves,tag=!admin,distance=130..] run particle minecraft:angry_villager ~ ~ ~ 1 2 1 0.2 5 force
execute at @e[type=marker,tag=dSpawn] run execute at @a[tag=dwarves,tag=!admin,distance=130..] run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.1 0.7

execute at @e[type=marker,tag=zProtect] if entity @a[tag=dwarves,distance=..45,tag=!mobnotice] run title @a[tag=dwarves,distance=..45,tag=!mobnotice] subtitle {"text":"You're too close to mobs' spawn!","color":"yellow"}
execute at @e[type=marker,tag=zProtect] if entity @a[tag=dwarves,distance=..45,tag=!mobnotice] run title @a[tag=dwarves,distance=..45,tag=!mobnotice] title ""
execute at @e[type=marker,tag=zProtect] if entity @a[tag=dwarves,distance=..45,tag=!mobnotice] run tag @a[tag=dwarves,distance=..45] add mobnotice

execute at @e[type=marker,tag=dSpawn] if entity @a[tag=dwarves,distance=100..,tag=!dfarnotice] run title @a[tag=dwarves,distance=100..,tag=!dfarnotice] subtitle {"text":"You're too far from the shrine!","color":"yellow"}
execute at @e[type=marker,tag=dSpawn] if entity @a[tag=dwarves,distance=100..,tag=!dfarnotice] run title @a[tag=dwarves,distance=100..,tag=!dfarnotice] title ""
execute at @e[type=marker,tag=dSpawn] if entity @a[tag=dwarves,distance=100..,tag=!dfarnotice] run tag @a[tag=dwarves,distance=100..] add dfarnotice

#execute as @a[tag=zombies] at @s at @e[type=marker,tag=zProtect,sort=nearest,limit=1] if entity @s[tag=zombies,distance=300..,tag=!zfarnotice] run title @s[tag=zombies,distance=300..,tag=!zfarnotice] subtitle {"text":"Return to battle!","color":"red"}
#execute as @a[tag=zombies] at @s at @e[type=marker,tag=zProtect,sort=nearest,limit=1] if entity @s[tag=zombies,distance=300..,tag=!zfarnotice] run title @s[tag=zombies,distance=300..,tag=!zfarnotice] title ""
#execute as @a[tag=zombies] at @s at @e[type=marker,tag=zProtect,sort=nearest,limit=1] if entity @s[tag=zombies,distance=300..,tag=!zfarnotice] run tag @s[tag=zombies,distance=300..] add zfarnotice

execute at @e[type=marker,tag=zProtect] run tag @a[tag=dwarves,distance=45..] remove mobnotice
execute at @e[type=marker,tag=dSpawn] run tag @a[tag=dwarves,distance=..100] remove dfarnotice
execute at @e[type=marker,tag=zProtect] run tag @a[tag=zombies,distance=..300] remove zfarnotice

#execute at @a[tag=dwarves,scores={DVZ.health=..9}] run particle minecraft:dust 0.961 0 0 1 ~ ~ ~ 0.3 1 0.3 0.02 1
execute at @a[tag=dwarves,predicate=dvz:lowxp] run particle minecraft:rain ~ ~1 ~ 0.2 0.5 0.2 0.02 1

###Unique Weapon Kills
#Whispersong
execute as @a[tag=zombies,scores={DVZ.killedby=1..}] at @s if entity @a[tag=wither,tag=dwarves,scores={DVZ.kills=1..},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run execute as @a[tag=wither,tag=dwarves,scores={DVZ.kills=1..},nbt={SelectedItem:{tag:{Whispersong:1b}}}] at @s run function dvz:dwarves/heros/witherwarrior/whispersong
execute as @a[tag=wither,tag=dwarves,scores={DVZ.bow=1..},nbt={SelectedItem:{tag:{Whispersong:1b}}}] at @s run tag @e[type=arrow,sort=nearest,limit=1] add whisperarrow
execute at @e[type=arrow,tag=whisperarrow,nbt={inGround:0b}] run particle minecraft:soul ~ ~ ~ 0 0 0 .01 1 force

###Variable Potions
#Luck
execute as @a[nbt={ActiveEffects:[{Id:26,Ambient:1b}]}] run tag @s add luck
execute as @a[tag=luck,tag=dwarves] run effect give @s regeneration 15 2
execute as @a[tag=luck,tag=zombies] run effect give @s poison 15 2
execute as @a[tag=luck] run effect clear @s luck
execute as @a[tag=luck] run tag @s remove luck

#Wither
execute as @a[tag=zombies,nbt={ActiveEffects:[{Id:20,Ambient:1b}]}] run tag @s add withering
execute as @a[tag=withering,tag=zombies] run effect give @s regeneration 10 1
execute as @a[tag=withering] run effect clear @s wither
execute as @a[tag=withering] run tag @s remove withering

###AoE Buffs
execute at @a[tag=zombie] run effect give @a[tag=zombie,distance=10..15,nbt=!{ActiveEffects:[{Id:10}]}] regeneration 2 0
execute at @a[tag=zombie] run effect give @a[tag=zombie,distance=5..10,nbt=!{ActiveEffects:[{Id:10}]}] regeneration 2 1
execute at @a[tag=zombie] run effect give @a[tag=zombie,distance=0.2..5,nbt=!{ActiveEffects:[{Id:10}]}] regeneration 2 2

execute at @a[tag=husk] run effect give @a[tag=husk,distance=10..15] speed 2 0
execute at @a[tag=husk] run effect give @a[tag=husk,distance=5..10] speed 2 1
execute at @a[tag=husk] run effect give @a[tag=husk,distance=0.2..5] speed 2 2

execute at @a[tag=drowned] run effect give @a[tag=!drowned,tag=!zlguardian,tag=zombies,distance=10..15] dolphins_grace 5 0
execute at @a[tag=drowned] run effect give @a[tag=!drowned,tag=!zlguardian,tag=zombies,distance=5..10] dolphins_grace 15 0
execute at @a[tag=drowned] run effect give @a[tag=!drowned,tag=!zlguardian,tag=zombies,distance=0.2..5] dolphins_grace 25 0

execute at @a[tag=vindicator] run effect give @a[tag=husk,distance=10..15] haste 2 0
execute at @a[tag=vindicator] run effect give @a[tag=husk,distance=5..10] haste 4 1
execute at @a[tag=vindicator] run effect give @a[tag=husk,distance=0.2..5] haste 6 2

effect give @a[tag=zombies] night_vision 1000000 1 true
effect give @a[tag=zombies] conduit_power 1000000 1 true
execute as @a[tag=blaze] at @s run effect give @a[tag=zombies,distance=..6] fire_resistance 4 1

#Boss Spawn Timer
scoreboard players add @e[tag=dvztimer,tag=begin] DVZ.timer 1
execute if entity @e[scores={DVZ.timer=12000}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 20m","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=24000}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 10m","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=30000}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 5m","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=32400}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 3m","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=33600}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 2m","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=34800}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 60s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35000}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 50s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35200}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 40s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35400}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 30s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35600}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 20s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35800}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 10s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35900}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 5s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35920}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 4s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35940}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 3s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35960}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 2s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=35980}] run title @a actionbar ["",{"text":"FIGHT STARTS IN:","bold":true,"color":"green"},{"text":" 1s","bold":true,"color":"yellow"}]
execute if entity @e[scores={DVZ.timer=..36000}] as @e[tag=dvztimer] store result bossbar dvz:bosstimer value run scoreboard players add @s DVZ.timer 0
execute if entity @e[scores={DVZ.timer=36000}] run bossbar set dvz:bosstimer visible false
execute if entity @e[scores={DVZ.timer=36000}] run function dvz:bosses/boss
execute if entity @e[scores={DVZ.timer=36000}] run gamerule doDaylightCycle false

#Boss Spawn Timer Sounds
execute if entity @e[scores={DVZ.timer=12000}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if entity @e[scores={DVZ.timer=24000}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.1
execute if entity @e[scores={DVZ.timer=30000}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.2
execute if entity @e[scores={DVZ.timer=32400}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.3
execute if entity @e[scores={DVZ.timer=33600}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.4
execute if entity @e[scores={DVZ.timer=34800}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
execute if entity @e[scores={DVZ.timer=35000}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.6
execute if entity @e[scores={DVZ.timer=35200}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7
execute if entity @e[scores={DVZ.timer=35400}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.8
execute if entity @e[scores={DVZ.timer=35600}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.9
execute if entity @e[scores={DVZ.timer=35800}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
execute if entity @e[scores={DVZ.timer=35900}] as @a at @s run playsound minecraft:entity.armor_stand.break master @s ~ ~ ~ 1 2
execute if entity @e[scores={DVZ.timer=35920}] as @a at @s run playsound minecraft:entity.armor_stand.break master @s ~ ~ ~ 1 2
execute if entity @e[scores={DVZ.timer=35940}] as @a at @s run playsound minecraft:entity.armor_stand.break master @s ~ ~ ~ 1 2
execute if entity @e[scores={DVZ.timer=35960}] as @a at @s run playsound minecraft:entity.armor_stand.break master @s ~ ~ ~ 1 2
execute if entity @e[scores={DVZ.timer=35980}] as @a at @s run playsound minecraft:entity.armor_stand.break master @s ~ ~ ~ 1 2

#Miniboss spawn capability notification
execute as @e[tag=dvztimer,tag=fight,scores={DVZ.battletimer=..18000}] run scoreboard players add @s[scores={DVZ.battletimer=..12001}] DVZ.battletimer 1
execute if entity @e[tag=dvztimer,tag=fight,scores={DVZ.battletimer=18000}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 2
execute if entity @a[tag=dvztimer,tag=fight,scores={DVZ.battletimer=18000..}] run title @a actionbar ["",{"text":"Beware:","bold":true,"color":"gold"},{"text":" Minibosses can appear!","bold":true,"color":"red"}] 




###Boss Components
#Dragon
execute if entity @e[tag=tpdragon] at @p[tag=playerdragonpick] positioned ~ ~-1 ~ run tp @e[tag=tpdragon] ~ ~ ~ ~180 ~
execute if entity @e[type=ender_dragon] store result bossbar dvz:dragonhealth value run data get entity @e[type=ender_dragon,limit=1] Health
execute as @a[scores={DVZ.dragon=1..},tag=dwarves,tag=!dragon] run function dvz:dwarves/special/dragonwarrior
execute as @p[tag=dragon] at @s run effect give @a[tag=dwarves,tag=!hero,distance=..6] resistance 10 0 true

#Wither
execute if entity @e[tag=tpwither] at @p[tag=playerwitherpick] positioned ~ ~ ~ run tp @e[tag=tpwither] ~ ~ ~ ~ ~
execute if entity @e[type=wither] store result bossbar dvz:witherhealth value run data get entity @e[type=wither,limit=1] Health
execute if entity @e[type=wither] store result score @e[tag=dvztimer] DVZ.wither.heal run data get entity @e[tag=tpwither,limit=1] Health
execute if entity @e[tag=dvztimer,scores={DVZ.wither.heal=..149}] run gamemode survival @p[tag=playerwitherpick]
execute if entity @e[tag=dvztimer,scores={DVZ.wither.heal=150..}] run gamemode creative @p[tag=playerwitherpick]
execute as @a[scores={DVZ.wither=1..},tag=dwarves,tag=!wither] run function dvz:dwarves/special/witherwarrior
execute as @p[tag=wither] at @s run effect give @a[tag=dwarves,tag=!hero,distance=..4] regeneration 2 0 true


execute as @a[tag=playerwitherpick,predicate=dvz:sprinting,nbt={abilities:{flying:1b}}] run tag @s add speeding
execute as @a[tag=playerwitherpick,predicate=dvz:sprinting,nbt={abilities:{flying:1b}}] run effect give @s blindness 1
execute as @a[tag=playerwitherpick,predicate=dvz:sprinting,nbt={abilities:{flying:1b}}] run effect give @s nausea 1
execute as @a[tag=playerwitherpick,predicate=dvz:sprinting,nbt={abilities:{flying:1b}}] run effect give @s slowness 1 100
execute as @a[tag=playerwitherpick,predicate=dvz:sprinting,nbt={abilities:{flying:1b}}] run effect give @s minecraft:levitation 1 128
execute as @a[tag=playerwitherpick,predicate=!dvz:sprinting] run effect clear @s blindness
execute as @a[tag=playerwitherpick,predicate=!dvz:sprinting] run effect clear @s slowness
execute as @a[tag=playerwitherpick,predicate=!dvz:sprinting] run effect clear @s nausea
execute as @a[tag=playerwitherpick,predicate=!dvz:sprinting] run tag @s remove speeding

#Guardian
execute as @e[tag=tpguardian,limit=1] at @p[tag=playerguardianpick] positioned ~ ~ ~ run tp ^ ^ ^-2
execute if entity @e[type=elder_guardian,tag=tpguardian] store result bossbar dvz:guardianhealth value run data get entity @e[type=elder_guardian,tag=tpguardian,limit=1] Health 1.0 
execute as @a[scores={DVZ.guardian=1..},tag=dwarves,tag=!guardian] run function dvz:dwarves/special/dwarvenguard

#Assassin
kill @a[tag=assassinpick,scores={DVZ.timer=..0}]
execute if entity @a[tag=assassinpick] as @a[scores={DVZ.death=1..}] run team leave @s
execute if entity @a[tag=assassinpick] if entity @a[tag=dwarves,scores={DVZ.death=1..}] run team leave @a[scores={DVZ.death=1..}]
execute if entity @a[tag=assassinpick] if entity @a[tag=dwarves,tag=!assassinpick,scores={DVZ.death=1..}] run title @a subtitle ["",{"selector":"@a[scores={DVZ.death=1..}]","color":"red"},{"text":" is not the assassin!","color":"red"}]
execute if entity @a[tag=assassinpick] if entity @a[tag=dwarves,tag=!assassinpick,scores={DVZ.death=1..}] run scoreboard players set @a[tag=assassinpick] DVZ.timer 1200
execute if entity @a[tag=assassinpick] if entity @a[tag=dwarves,tag=assassinpick,scores={DVZ.death=1..}] run tellraw @a ["",{"text":" [*] ","color":"red","bold":"true"},{"selector":"@a[tag=assassinpick]","color":"dark_red"},{"text":" was the assassin!","color":"red"}]
execute if entity @a[tag=assassinpick] if entity @a[tag=dwarves,scores={DVZ.death=1..}] run title @a title ""
execute if entity @a[tag=assassinpick] if entity @a[tag=dwarves,tag=assassinpick,scores={DVZ.death=1..}] unless entity @a[tag=!assassinpick,scores={DVZ.kills=1},tag=dwarves] run execute as @r[tag=!assassinpick,tag=dwarves] run function dvz:dwarves/special/assassinslayer
execute if entity @a[tag=assassinpick] if entity @a[tag=dwarves,tag=assassinpick,scores={DVZ.death=1..}] run execute as @a[tag=!assassinpick,scores={DVZ.kills=1},tag=dwarves] run function dvz:dwarves/special/assassinslayer
execute if entity @a[tag=assassinpick] run scoreboard players remove @a[tag=assassinpick] DVZ.timer 1
execute if entity @a[tag=assassinpick,scores={DVZ.timer=1200}] run tellraw @a[tag=assassinpick] ["",{"text":" * [Assassin] 60 seconds left to kill!","color":"red"}]
execute if entity @a[tag=assassinpick,scores={DVZ.timer=600}] run tellraw @a[tag=assassinpick] ["",{"text":" * [Assassin] You have 30 seconds left to kill!","color":"red"}]
execute if entity @a[tag=assassinpick,scores={DVZ.timer=300}] run tellraw @a[tag=assassinpick] ["",{"text":" * [Assassin] You have 15 seconds left to kill!","color":"red"}]
execute if entity @a[tag=assassinpick,scores={DVZ.timer=200}] run tellraw @a[tag=assassinpick] ["",{"text":" * [Assassin] You have 10 seconds left to kill!","color":"red"}]
execute if entity @a[tag=assassinpick,scores={DVZ.timer=100}] run tellraw @a[tag=assassinpick] ["",{"text":" * [Assassin] You have 5 seconds left to kill!","color":"red"}]
execute if entity @a[tag=assassinpick] as @a[tag=playerboss] store result bossbar dvz:assassintimer value run scoreboard players add @s DVZ.timer 0




#Lobby Effects
#execute as @e[type=marker,tag=worldspawn] run effect give @a[distance=..15] weakness 10 0 true
execute as @e[type=marker,tag=worldspawn] run effect give @a[distance=..15] saturation 10 0 true

#Zombies Blindness
execute as @a[tag=zombies,tag=!fight] run effect give @s blindness 30 255 true
execute as @a[tag=zombies,tag=!fight] run effect give @s slowness 30 255 true
execute as @a[tag=zombies,tag=!fight] run effect give @s jump_boost 30 128 true
execute as @a[tag=zombies,tag=!fight] run effect give @s invisibility 30 255 true
execute as @a[tag=zombies,tag=!fight] run effect give @s mining_fatigue 30 255 true
execute as @a[tag=zombies,tag=nopill] run effect give @s blindness 30 255 true
execute as @a[tag=zombies,tag=nopill] run effect give @s slowness 30 255 true
execute as @a[tag=zombies,tag=nopill] run effect give @s jump_boost 30 128 true
execute as @a[tag=zombies,tag=nopill] run effect give @s invisibility 30 255 true
execute as @a[tag=zombies,tag=nopill] run effect give @s mining_fatigue 30 255 true

#Suicide Pill
execute as @a[scores={DVZ.suicide.cool=1..},tag=!nopill,tag=zombies] run scoreboard players add @s DVZ.suicide.tick 1
execute as @a[scores={DVZ.suicide.tick=20..},tag=zombies] run scoreboard players remove @s DVZ.suicide.cool 1
execute as @a[scores={DVZ.suicide.tick=20..},tag=zombies] run scoreboard players set @s DVZ.suicide.tick 0
execute as @a[scores={DVZ.suicide.cool=..0},tag=zombies] run item replace entity @s[tag=!dwarves] inventory.8 with carrot_on_a_stick{CustomModelData: 7, Unbreakable: 1b, display: {Name: '{"text":"Suicide Pill","color":"red"}', Lore: ['[{"text":"Caution: Keep out of reach of children!","color":"dark_red"}]']}} 1
execute as @a[scores={DVZ.suicide.cool=..0},tag=zombies] at @s run playsound item.bundle.insert master @s ~ ~ ~ 1
execute as @a[scores={DVZ.suicide.cool=..0},tag=zombies] run tellraw @s {"text":"[Suicide pill] Your suicide pill is ready.","color":"gray"}
execute as @a[scores={DVZ.suicide.cool=..0},tag=zombies] run scoreboard players reset @s DVZ.suicide.cool

#Shrine + Assassin Slayer + daytime mana regen
execute as @e[type=marker,tag=dSpawn] at @s run scoreboard players add @a[tag=dwarves,tag=nomana,level=..99,distance=..5] DVZ.mana.ticks 1
execute at @e[type=marker,tag=dSpawn] at @a[tag=dwarves,tag=nomana,level=..99,distance=..5] run particle minecraft:wax_on ~ ~0.5 ~ 0.1 0.5 0.1 0.01 1

execute as @a[tag=assassinslayer] run scoreboard players add @a[tag=dwarves,level=..99,distance=..4] DVZ.mana.ticks 1
execute as @a[tag=assassinslayer] at @a[tag=dwarves,level=..99,distance=..4] run particle minecraft:wax_on ~ ~0.5 ~ 0.1 0.5 0.1 0.01 1

#Daytime buffs
execute if entity @e[tag=dvztimer,tag=fight] if predicate dvz:daytime run scoreboard players add @a[tag=dwarves,tag=nomana,level=..99,distance=..5] DVZ.mana.ticks 1
execute if entity @e[tag=dvztimer,tag=fight] if predicate dvz:daytime at @a[tag=dwarves,tag=nomana,level=..99] run particle minecraft:wax_on ~ ~0.5 ~ 0.1 0.5 0.1 0.01 1
execute if entity @e[tag=dvztimer,tag=fight] if predicate dvz:daytime run effect give @a[tag=hero] speed 1 1


#Dwarves Mana
scoreboard players add @a[tag=dwarves,tag=!nomana,level=..99] DVZ.mana.ticks 1
execute as @a[tag=dwarves,tag=overcharge,level=..100] run tag @s remove overcharge
execute as @a[tag=dwarves,tag=!builder,tag=!enchanter,tag=!overcharge,level=101..] run xp set @s 100 levels
execute as @a[tag=dwarves,scores={DVZ.mana.ticks=20..},level=..99] run xp add @s 1 levels
execute as @a[tag=guardian,tag=dwarves,scores={DVZ.mana.ticks=10},level=..99] run xp add @s 1 levels
execute as @a[tag=dwarves,scores={DVZ.mana.ticks=20..}] run scoreboard players set @s DVZ.mana.ticks 0

#Scutum shield slowness
effect give @a[tag=dwarves,nbt={Inventory:[{Slot:-106b,tag:{Scutum:1b}}]}] slowness 1 0 true
effect give @a[tag=dwarves,nbt={Inventory:[{Slot:-106b,tag:{Scutum:1b}}]}] mining_fatigue 1 0 true

#JBG Prevention for dwarves
execute as @a[tag=dwarves,predicate=dvz:jbg] at @s if block ~ ~-5 ~ minecraft:air run effect give @s minecraft:levitation 1 128



#Golem JBG sound alert
execute as @a[tag=golem,nbt={HurtTime:1s}] at @s if block ~ ~-5 ~ minecraft:air run playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 40 0.7




#JBG Prevention for mobs
#execute as @a[tag=golem,predicate=dvz:jbg] at @s if block ~ ~-5 ~ minecraft:air run effect give @s minecraft:levitation 1 128
#execute as @a[tag=phantom,predicate=dvz:flyerjbg] at @s if block ~ ~-5 ~ minecraft:air run effect give @s minecraft:levitation 1 128
#execute as @a[tag=bee,predicate=dvz:flyerjbg] at @s if block ~ ~-5 ~ minecraft:air run effect give @s minecraft:levitation 1 128
#execute as @a[tag=chicken,predicate=dvz:flyerjbg] at @s if block ~ ~-5 ~ minecraft:air run effect give @s minecraft:levitation 1 128

#Enderman Invulnerability Penalty
effect give @a[tag=enderman,tag=ePortal] minecraft:instant_health 60 200 true
execute as @a[tag=enderman,tag=ePortal] at @a[tag=enderman,tag=ePortal] run execute as @e[type=!player,distance=..5] run effect give @s resistance 3 50
execute as @e[tag=ePortalStand] at @e[tag=ePortalStand] unless entity @p[tag=enderman,tag=ePortal,distance=..7] run function dvz:dwarves/closeportalfight

#Pigman Eating
execute as @a[tag=pigman,scores={DVZ.pigeat=1..}] run xp add @s 1 levels
execute as @a[tag=pigman,scores={DVZ.pigeat=1..}] at @s run particle large_smoke ~ ~ ~ 1 1 1 0.1 15
execute as @a[tag=pigman,scores={DVZ.pigeat=1..},tag=pig2] at @s run playsound entity.donkey.eat master @a ~ ~ ~ 1
execute as @a[tag=pigman,scores={DVZ.pigeat=1..},tag=pig1] at @s run playsound entity.fox.eat master @a ~ ~ ~ 1 1.2
execute as @a[tag=pigman,level=65..] run xp set @s 64 levels
execute as @a[tag=pigman,tag=!pig3,level=64] run function dvz:zombies/pigman/levelup
execute as @a[tag=pigman,scores={DVZ.pigeat=1..}] run scoreboard players set @s DVZ.pigeat 0

#Pigman hit detection
execute as @a[tag=pig3,nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Unbreakable:1b}}},scores={DVZ.attack.hit=1..}] at @s run playsound entity.hoglin.attack master @a ~ ~ ~ 1 1
execute as @a[tag=pig3,nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Unbreakable:1b}}},scores={DVZ.attack.hit=1..}] at @s run effect give @p[tag=dwarves,distance=..4,nbt={HurtTime:10s},limit=1] hunger 2 75

#Ravager weakness
execute if entity @a[tag=ravager] run function dvz:zombies/miniboss/ravagerpenalty

#Spider hit detection
execute as @a[tag=spider,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:25,Unbreakable:1b}}},scores={DVZ.attack.hit=1..}] at @s run playsound entity.spider.ambient master @a ~ ~ ~ 1 1.5
execute as @a[tag=spider,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:25,Unbreakable:1b}}},scores={DVZ.attack.hit=1..}] at @s run effect give @p[tag=dwarves,distance=..4,nbt={HurtTime:10s}] poison 4 2
execute as @a[tag=spider,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:25,Unbreakable:1b}}},scores={DVZ.attack.hit=1..}] at @s run effect give @p[tag=dwarves,distance=..4,nbt={HurtTime:10s}] nausea 4 2
execute as @a[tag=spider,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:25,Unbreakable:1b}}},scores={DVZ.attack.hit=1..}] at @s run effect give @p[tag=dwarves,distance=..4,nbt={HurtTime:10s}] blindness 4 2

#Snow Golem Snowball
execute as @e[tag=customsnowball] at @s if entity @a[tag=dwarves,distance=..1.5] run effect give @p[tag=dwarves,distance=..1.5] instant_damage 1 1 true
execute as @e[tag=customsnowball] at @s if entity @a[tag=dwarves,distance=..1.5] run kill @s

#Snow Golem ice permanance
execute as @a[tag=snowman] at @s run fill ~4 ~-1 ~4 ~-4 ~-1 ~-4 ice replace frosted_ice

#Phantom Delirium
execute as @e[tag=deliriumeffect] at @s if entity @a[tag=dwarves,distance=..1.5] run effect give @p[tag=dwarves,distance=..2.5] nausea 10 1 true
execute as @e[tag=deliriumeffect] at @s if entity @a[tag=dwarves,distance=..1.5] run effect give @p[tag=dwarves,distance=..2.5] slowness 10 1 true
execute as @e[tag=deliriumeffect] at @s if entity @a[tag=dwarves,distance=..1.5] run effect give @p[tag=dwarves,distance=..2.5] mining_fatigue 10 1 true
execute as @e[tag=deliriumeffect] at @s if entity @a[tag=dwarves,distance=..1.5] run effect give @p[tag=dwarves,distance=..2.5] weakness 10 9 true
execute as @e[tag=deliriumeffect] at @s if entity @a[tag=dwarves,distance=..1.5] run kill @s

#Blaze Firefly
execute as @a[tag=fireflyactive] at @s run function dvz:zombies/blaze/fireflytest
execute as @a[tag=fireflyactive,scores={DVZ.ffly.airtime=40}] run tag @s add fireflyremove
execute as @a[tag=fireflyremove] at @s run scoreboard players reset @s DVZ.ffly.airtime
execute as @a[tag=fireflyremove] at @s run tag @s remove fireflyactive
execute as @a[tag=fireflyremove] at @s run gamemode survival
execute as @a[tag=fireflyremove] at @s run tag @s remove fireflyremove

#Blaze fire buffs
execute as @e[tag=blaze,predicate=dvz:onfire] run effect give @s strength 5 0

#Chicken Fly test
execute as @a[tag=flyactive] at @s run function dvz:zombies/chicken/flytest
execute as @a[tag=flyactive,scores={DVZ.fly.airtime=100}] run tag @s add flyremove
execute as @a[tag=flyremove] at @s run scoreboard players reset @s DVZ.fly.airtime
execute as @a[tag=flyremove] at @s run tag @s remove flyactive
execute as @a[tag=flyremove] at @s run gamemode survival
execute as @a[tag=flyremove] at @s run tag @s remove flyremove

#Chicken eggsplosion
execute as @e[type=egg,tag=!eggsplode,nbt={Item:{tag:{team:"zMONSTER"}}}] run function dvz:zombies/chicken/eggready
execute as @e[type=egg,tag=eggsplode] at @s run tp @e[type=marker,tag=eggsplode,sort=nearest,limit=1] @s
execute as @e[type=marker,tag=eggsplode] at @s unless entity @e[type=egg,tag=eggsplode,distance=..0.5] run function dvz:zombies/chicken/eggsplode

#Chicken egg regeneration
execute as @a[tag=chicken,scores={DVZ.attack.hit=1..}] at @s if entity @a[tag=dwarves,distance=..5,nbt={HurtTime:10s},limit=1] run playsound entity.chicken.step hostile @a ~ ~ ~ 1
#execute as @a[tag=chicken,scores={DVZ.attack.hit=1..}] if entity @a[tag=dwarves,distance=..5,nbt={HurtTime:10s},limit=1] run give @s egg{team:"zMONSTER"} 2
execute as @a[tag=chicken,scores={DVZ.attack.hit=1..}] if entity @a[tag=dwarves,nbt={HurtTime:10s},limit=1] run give @s egg{team:"zMONSTER"} 2

#Creeper effect cloud killer
#kill @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:1},{Id:10},{Id:30}]}]

#Chillager Armor/Ice Bomb
execute as @a[tag=chillager,tag=invis,nbt=!{ActiveEffects:[{Id:14}]}] run function dvz:zombies/chillager/armor
execute as @a[tag=dwarves] store result score @s DVZ.icy.check run clear @s carrot_on_a_stick{CustomModelData:53} 0
execute as @a[tag=dwarves] at @s if entity @e[distance=..1.4,type=item,limit=1,sort=nearest,nbt={Item:{tag:{CustomModelData:53}}}] run scoreboard players set @s DVZ.icy.check 1
execute as @a[tag=dwarves,scores={DVZ.icy.check=1..}] at @s run kill @e[distance=..2,type=item,limit=1,sort=nearest,nbt={Item:{tag:{CustomModelData:53}}}]
execute as @a[tag=dwarves,scores={DVZ.icy.check=1..}] at @s run function dvz:zombies/chillager/icebomb

#GhastFlight
effect give @a[tag=ghastflight,nbt={Inventory:[{Slot:-106b,tag:{Levitate:1b}}]}] minecraft:levitation 1 1 true
effect give @a[tag=ghastflight,nbt={Inventory:[{Slot:-106b,tag:{Descend:1b}}]}] minecraft:slow_falling 1 253 true

#Ghast fireball power reduction 
scoreboard players add @e[type=fireball,tag=fballage] DVZ.fballage.cool 1
execute as @e[type=fireball,tag=fballage,scores={DVZ.fballage.cool=40}] run data merge entity @s {ExplosionPower:3b}
execute as @e[type=fireball,tag=fballage,scores={DVZ.fballage.cool=60}] run data merge entity @s {ExplosionPower:2b}
execute as @e[type=fireball,tag=fballage,scores={DVZ.fballage.cool=80}] run kill @s

#Ghast fireball particles
execute as @e[type=fireball,tag=fballage,scores={DVZ.fballage.cool=..39}] at @s run particle dust 0 0 0 3 ^ ^ ^ 1.000 0.000 0.000 0.01 2 normal
execute as @e[type=fireball,tag=fballage,scores={DVZ.fballage.cool=40..59}] at @s run particle dust 0.275 0.275 0.275 3 ^ ^ ^ 1.000 0.000 0.000 0.01 2 normal
execute as @e[type=fireball,tag=fballage,scores={DVZ.fballage.cool=60..}] at @s run particle dust 1 1 1 3 ^ ^ ^ 1.000 0.000 0.000 0.01 2 normal

#Ambient Particles
execute as @a[tag=hero] at @s run particle end_rod ~ ~0.1 ~ 0.1 0 0.1 0.01 1
execute as @a[tag=blaze] at @s run particle smoke ^ ^0.1 ^-0.7 0.1 0 0.1 0.01 1
execute as @a[tag=enderman] at @s run particle minecraft:portal ^ ^1 ^-0.5 0.5 0.5 0.5 0.5 1
execute as @a[tag=phantom] at @s run particle minecraft:mycelium ~ ~1 ~ 0.2 0.2 0.2 0.01 5
execute as @a[tag=creeper,tag=chargecrp] at @s run particle end_rod ~ ~1 ~ 0.3 0.5 0.3 0.05 1 normal
execute as @a[tag=creeper,tag=chargecrp] at @s run particle dust 0.000 0.800 1.000 1 ~ ~1 ~ 0.3 0.5 0.3 0.1 2 normal
execute as @a[tag=creeper,tag=chargecrp] at @s run particle firework ~ ~1 ~ 0.2 0.5 0.2 0.01 1

#Dwarf soul effect
execute as @e[tag=soul] at @s run particle dust 0.000 0.867 1.000 2 ~ ~0.9 ~ 0.1 0.1 0.1 0.01 0 normal
tp @e[tag=soulbody] @e[tag=soul,limit=1,sort=nearest]
execute as @e[tag=soulbody] unless entity @e[tag=soul,distance=..2] run kill @s

#Mob Sound
execute as @a[nbt={DeathTime:19s}] at @s run playsound minecraft:entity.shulker_bullet.hit player @a ~ ~ ~ 1 1
execute if entity @a[scores={DVZ.death=1..}] run function dvz:zombies/mob_death
execute if entity @a[nbt={HurtTime:10s}] run function dvz:zombies/mob_hurt

#AI mob stuff
execute as @e[type=#dvz:aimob,type=!player,tag=!AIbuffed] run function dvz:zombies/ai_buff
effect clear @e[type=creeper,nbt={ignited:1b}]

#AI mob aggro
#execute as @e[type=#dvz:ai_monster,tag=!aggro] at @s run function dvz:zombies/ai_aggro 

#Mob nature giving
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures



##Core Branch
tag @a[gamemode=!survival,tag=!admin] add admin
execute as @a[tag=admin,tag=!messaged] unless entity @e[tag=begin] run tellraw @s ["",{"text":"=---------------------- \u0020OGvZ Menu \u0020----------------------=\n\n \u0020 \u0020 Click "},{"text":"[HERE]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function dvz:lobby"},"hoverEvent":{"action":"show_text","value":{"text":"Spawn-in Lobby","color":"green"}}},{"text":" to make the "},{"text":"spawn-in lobby","color":"green"},{"text":"\n\n \u0020 \u0020 Click "},{"text":"[HERE]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function dvz:shrine"},"hoverEvent":{"action":"show_text","value":{"text":"Bare Shrine","color":"aqua"}}},{"text":" to make the "},{"text":"Bare shrine","color":"aqua"},{"text":"\n \u0020 \u0020 Click "},{"text":"[HERE]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function dvz:shrine_temple"},"hoverEvent":{"action":"show_text","value":{"text":"Temple Dwarf Shrine","color":"aqua"}}},{"text":" to make the "},{"text":"Temple Dwarf Shrine","color":"aqua"},{"text":"\n \u0020 \u0020 Click "},{"text":"[HERE]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function dvz:shrine_tower"},"hoverEvent":{"action":"show_text","value":{"text":"Tower Dwarf Shrine","color":"aqua"}}},{"text":" to make the "},{"text":"Tower dwarf shrine","color":"aqua"},{"text":"\n \u0020 \u0020 Click "},{"text":"[HERE]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function dvz:shrine_fort"},"hoverEvent":{"action":"show_text","value":{"text":"Fort Dwarf Shrine","color":"aqua"}}},{"text":" to make the "},{"text":"fort dwarf shrine","color":"aqua"},{"text":"\n\n \u0020 \u0020 Click "},{"text":"[HERE]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function dvz:zombiespawn"},"hoverEvent":{"action":"show_text","value":{"text":"Zombie Spawn","color":"red"}}},{"text":" to make the "},{"text":"zombie's spawn","color":"red"},{"text":"\n\n \u0020 \u0020 Click "},{"text":"[HERE]","color":"gold","clickEvent":{"action":"run_command","value":"/function dvz:begintest"},"hoverEvent":{"action":"show_text","value":{"text":"Start the Game!","color":"yellow"}}},{"text":" to "},{"text":"start the game!","color":"yellow"},{"text":"\n\n \u0020 \u0020 Select Mob Boss "},{"text":"[AI dragon]","color":"gray","clickEvent":{"action":"run_command","value":"/tag @e[tag=dvztimer] add aidragon"},"hoverEvent":{"action":"show_text","value":{"text":"OGvZ's Default!","color":"white"}}},{"text":", "},{"text":"[Player Dragon]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/tag @e[tag=dvztimer] add playerdragon"},"hoverEvent":{"action":"show_text","value":{"text":"A player controlled dragon!","color":"light_purple"}}},{"text":", "},{"text":"[AI Wither]","color":"gray","clickEvent":{"action":"run_command","value":"/tag @e[tag=dvztimer] add aiwither"},"hoverEvent":{"action":"show_text","value":{"text":"OGvZ's second pick!","color":"white"}}},{"text":", "},{"text":"[Player Wither]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/tag @e[tag=dvztimer] add playerwither"},"hoverEvent":{"action":"show_text","value":{"text":"A player controlled wither!","color":"gray"}}},{"text":", "},{"text":"[Guardian]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/tag @e[tag=dvztimer] add guardian"},"hoverEvent":{"action":"show_text","value":{"text":"An aquatic boss!","color":"aqua"}}},{"text":", "},{"text":"[Assassin]","color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @e[tag=dvztimer] add assassin"},"hoverEvent":{"action":"show_text","value":{"text":"A dwarf turned evil!","color":"red"}}},{"text":"\n\n=--------------------------------------------------------="}]
tag @a[tag=admin] add messaged
tag @a[gamemode=survival,tag=admin] remove admin
tag @a[gamemode=survival,tag=messaged] remove messaged

execute as @a[tag=dwarves,scores={DVZ.build.struc=1..}] run function dvz:dwarves/tools/builder_structures

execute as @a[tag=enderman,tag=!ePortal] run title @s actionbar ["",{"text":"Time until Portal available: ","color":"red"},{"score":{"name":"@s","objective":"DVZ.portal.cool"},"bold":true,"italic":true,"color":"red"}]
execute as @e[type=marker,tag=aidragon] run function dvz:bosses/aidragon
execute as @e[type=marker,tag=playerdragon] run function dvz:bosses/playerdragon
execute as @e[type=marker,tag=assassin] run function dvz:bosses/assassin
execute as @e[type=marker,tag=aiwither] run function dvz:bosses/aiwither
execute as @e[type=marker,tag=playerwither] run function dvz:bosses/playerwither
execute as @e[type=marker,tag=guardian] run function dvz:bosses/guardian

execute as @a[scores={DVZ.death=1..}] run function dvz:death
execute as @a[scores={DVZ.spawn=1..}] run function dvz:spawn
execute as @a[scores={DVZ.leave=1..}] if entity @e[tag=dvztimer,tag=fight] run kill @s
execute as @a[scores={DVZ.leave=1..}] run scoreboard players set @s DVZ.leave 0

execute as @e[type=silverfish] run scoreboard players add @s DVZ.silver.kill 1
execute as @e[type=silverfish,scores={DVZ.silver.kill=2400..}] run kill @s

#Player Counter & Game overs
execute store result score Dwarves DVZ.playercount if entity @a[tag=dwarves]
execute store result score Mobs DVZ.playercount if entity @a[tag=zombies]

execute as @e[tag=!gameover,tag=dvztimer,tag=fight] store result score @s DVZ.playertest run scoreboard players get Dwarves DVZ.playercount
execute as @e[tag=!gameover,tag=dvztimer,tag=fight,scores={DVZ.playertest=0}] at @e[tag=dSpawn] run function dvz:gameoverkill
#Game over with typical shrine
execute as @e[tag=!gameover,tag=dvztimer,tag=fight] at @e[tag=dSpawn] unless block ~ ~-1 ~ minecraft:gold_block unless block ~-1 ~-1 ~ minecraft:gold_block unless block ~ ~-1 ~-1 minecraft:gold_block unless block ~-1 ~-1 ~-1 minecraft:gold_block unless block ~1 ~-2 ~ minecraft:gold_block unless block ~1 ~-2 ~-1 minecraft:gold_block unless block ~ ~-2 ~-2 minecraft:gold_block unless block ~-1 ~-2 ~-2 minecraft:gold_block unless block ~-2 ~-2 ~-1 minecraft:gold_block unless block ~-2 ~-2 ~ minecraft:gold_block unless block ~-1 ~-2 ~1 minecraft:gold_block unless block ~ ~-2 ~1 minecraft:gold_block run function dvz:gameovershrine

#Last dwarf stuff
execute if entity @e[tag=!gameover,tag=dvztimer,tag=fight,scores={DVZ.playertest=1}] as @a[tag=dwarves,limit=1,tag=!lastdwarf,tag=!dragon,tag=!guardian,tag=!wither] run function dvz:dwarves/lastdwarf

#End Plague Early
scoreboard players operation #total DVZ.playertest = Dwarves DVZ.playercount
scoreboard players operation #total DVZ.playertest += Mobs DVZ.playercount
scoreboard players operation #testnum DVZ.playertest = #total DVZ.playertest
scoreboard players operation #testnum DVZ.playertest *= #percentdead DVZ.playertest
scoreboard players operation #testnum DVZ.playertest /= #100 DVZ.playertest
scoreboard players operation #testnum DVZ.playertest -= Mobs DVZ.playercount
execute if entity @e[tag=dvztimer,tag=!fight,scores={DVZ.timer=36000..}] if score #testnum DVZ.playertest matches 0 run function dvz:bosses/endall

#DVZ resets
scoreboard players set @a[scores={DVZ.crouch=1..}] DVZ.crouch 0
scoreboard players set @a[scores={DVZ.kills=1..}] DVZ.kills 0
scoreboard players set @a[scores={DVZ.killedby=1..}] DVZ.killedby 0
scoreboard players set @a[scores={DVZ.bow=1..}] DVZ.bow 0
scoreboard players set @a[scores={DVZ.attack.hit=1..}] DVZ.attack.hit 0

#Enchanter Loop
execute as @a[team=zMONSTER] at @s run function dvz:zombies/enchanter/enchant_loop

#Magma Cube Loop
execute as @e[type=armor_stand,tag=magma_grenade] at @s run function dvz:zombies/magma_cube/magma_loop
team join zMONSTER @e[type=minecraft:magma_cube]
tp @e[type=minecraft:magma_cube,nbt={Size:0}] ~ -1000 ~

#Slime Loop
execute as @e[type=armor_stand,tag=slime_spit] at @s run function dvz:zombies/slime/slime_spit_loop
execute as @e[type=armor_stand,tag=slime_bomb] at @s run function dvz:zombies/slime/slime_bomb_loop

#Evoker Loop
execute as @e[type=armor_stand,tag=evoker_bolt] at @s run function dvz:zombies/evoker/evoker_bolt_loop
execute as @a at @s run function dvz:zombies/evoker/evoker_loop
execute as @a[tag=evoker,nbt={HurtTime:9s}] at @s run execute at @a[tag=dwarves,distance=..7.7] run summon evoker_fangs ~ ~ ~

#Allay Loop
execute as @a[tag=allay_carried] at @s run function dvz:zombies/allay/allay_loop

