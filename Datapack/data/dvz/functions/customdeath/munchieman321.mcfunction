# -------------------------------------------
# Called By: dvz:customdeath/customdeath
# File Name: MunchieMan321
# File Purpose: Custom death animation for MunchieMan321 (large sum donation)
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.06.21
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: "Celebration of the Munchie%"
# -------------------------------------------

execute as @a[name="MunchieMan321",scores={DVZ.timer=0}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 1 .5 1 0 5
execute as @a[name="MunchieMan321",scores={DVZ.timer=2}] at @s run playsound entity.evoker.celebrate master @a ~ ~ ~ 1 1 0
execute as @a[name="MunchieMan321",scores={DVZ.timer=6}] at @s run playsound entity.piglin.celebrate master @a ~ ~ ~ 1 1 0
execute as @a[name="MunchieMan321",scores={DVZ.timer=10}] at @s run playsound entity.pillager.celebrate master @a ~ ~ ~ 1 1 0
execute as @a[name="MunchieMan321",scores={DVZ.timer=14}] at @s run playsound entity.ravager.celebrate master @a ~ ~ ~ 1 1 0
execute as @a[name="MunchieMan321",scores={DVZ.timer=18}] at @s run playsound entity.vindicator.celebrate master @a ~ ~ ~ 1 1 0
execute as @a[name="MunchieMan321",scores={DVZ.timer=22}] at @s run playsound entity.witch.celebrate master @a ~ ~ ~ 1 1 0
execute as @a[name="MunchieMan321",scores={DVZ.timer=24}] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;4312372],FadeColors:[I;3887386]}]}}}}
execute as @a[name="MunchieMan321",scores={DVZ.timer=24}] run title @a actionbar {"text":"Impressed he lasted that long...","color":"dark_green","italic":true}
execute as @a[name="MunchieMan321",scores={DVZ.timer=24}] run title @a title ""
execute as @a[name="MunchieMan321"] at @s run scoreboard players add @s DVZ.timer 1
execute as @a[name="MunchieMan321",scores={DVZ.timer=..24}] at @s run schedule function dvz:customdeath/munchieman321 1t
execute as @a[name="MunchieMan321",scores={DVZ.timer=25}] at @s run scoreboard players reset @s DVZ.timer