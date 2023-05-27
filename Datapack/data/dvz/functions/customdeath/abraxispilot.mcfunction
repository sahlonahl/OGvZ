# -------------------------------------------
# Called By: dvz:customdeath/customdeath
# File Name: abraxispilot
# File Purpose: Custom death animation for AbraxisPilot (large sum donation)
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.06.21
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: "Canon death is a broken flying machine"
# -------------------------------------------

execute as @a[name="AbraxisPilot",scores={DVZ.timer=0}] at @s run particle minecraft:dust 1 0 0 1 ~ ~1 ~ .5 .5 .5 1 100 force
execute as @a[name="AbraxisPilot",scores={DVZ.timer=2}] at @s run playsound block.piston.extend master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=6}] at @s run playsound block.piston.extend master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=10}] at @s run playsound block.piston.extend master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=14}] at @s run playsound block.piston.extend master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=18}] at @s run playsound block.piston.extend master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=22}] at @s run playsound block.piston.extend master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=4}] at @s run playsound block.dispenser.fail master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=8}] at @s run playsound block.dispenser.fail master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=12}] at @s run playsound block.dispenser.fail master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=16}] at @s run playsound block.dispenser.fail master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=20}] at @s run playsound block.dispenser.fail master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=24}] at @s run playsound block.dispenser.fail master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=24}] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1 1 0
execute as @a[name="AbraxisPilot",scores={DVZ.timer=24}] at @s run particle minecraft:explosion ~ ~1 ~ .5 .5 .5 0 4 force
title @a actionbar {"text":"Abraxis made a critical error and pilots no more.","color":"light_purple","italic":true}
title @a title ""
execute as @a[name="AbraxisPilot"] at @s run scoreboard players add @s DVZ.timer 1
execute as @a[name="AbraxisPilot",scores={DVZ.timer=..24}] at @s run schedule function dvz:customdeath/abraxispilot 1t
execute as @a[name="AbraxisPilot",scores={DVZ.timer=25}] run scoreboard players reset @s DVZ.timer