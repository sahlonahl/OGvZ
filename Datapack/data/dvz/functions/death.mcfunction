# -------------------------------------------
# Called By: dvz:tick
# File Name: death
# File Purpose: called to removed tags from players when they die, getting them ready for zombies or respawn
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

##Death messages
#Removing dwarves is neccessary for proper counting in dvz:death_message function.
tag @s[tag=dwarves] add deathmessage
tag @s remove dwarves
execute as @a[scores={DVZ.death=1..}] at @s run function dvz:death_message

##Main
gamemode survival @s

clear @s
xp set @s 0 levels

tag @s add zombies
scoreboard players set @s DVZ.suicide.cool 30
scoreboard players reset @s DVZ.portal.cool
team join zDEAD @s
tag @s add nopill

give @s carrot_on_a_stick{CustomModelData:8,Unbreakable:1b,display:{Name:'{"text":"Gold Nugget","italic":"false"}',Lore:['[{"text":"Right click to spawn-in after the boss has died."}]','[{"text":"Your missions (pick one):"}]','[{"text":"1.) Kill all the dwarves,"}]','[{"text":"2.) Break the gold shrine."}]']}}

tag @s remove builder
tag @s remove alchemist
tag @s remove baker
tag @s remove blacksmith
tag @s remove enchanter
tag @s remove tailor
tag @s remove nomana
tag @s remove slay

tag @s remove dragon
tag @s remove wither
tag @s remove assassinslayer
tag @s remove guardian
tag @s remove hero
tag @s remove lbookused

tag @s remove zombie
tag @s remove drowned
tag @s remove skeleton
tag @s remove creeper
tag @s remove spider
tag @s remove wolf
tag @s remove ocelot
tag @s remove silverfish
tag @s remove pigman
tag @s remove pig1
tag @s remove pig2
tag @s remove pig3
tag @s remove blaze
tag @s remove enderman
tag @s remove ePortal
tag @s remove zlguardian
tag @s remove snowman
tag @s remove chillager
tag @s remove golem
tag @s remove husk
tag @s remove witherskeleton
tag @s remove pillager
tag @s remove vindicator
tag @s remove bee
tag @s remove ghastflight
tag @s remove chicken
tag @s remove phantom
tag @s remove chargecrp
tag @s remove natured
tag @s remove evoker
tag @s remove evoker
tag @s remove piglin
tag @s remove piglin_brute
tag @s remove endermite
tag @s remove vex
tag @s remove witch
tag @s remove zenchanter
tag @s remove magma_cube
tag @s remove allay
tag @s remove slime
tag @s remove evoker
tag @s remove allay_carried
tag @s remove shulker
tag @s remove bat

tag @s remove ghast
tag @s remove johnny
tag @s remove ravager
tag @s remove miniboss

tag @s remove playerdragonpick
tag @s remove playerwitherpick
tag @s remove playerguardianpick
tag @s remove assassinpick
tag @s remove playerboss

tag @s remove noboss
tag @s remove selectedclass

attribute @s minecraft:generic.attack_damage modifier remove d2578518-1f7c-4c10-9145-ff7145eae37b

execute as @s at @e[type=marker,tag=zSpawn,sort=random] run spawnpoint @s ~ ~ ~

scoreboard players set @s DVZ.death 0