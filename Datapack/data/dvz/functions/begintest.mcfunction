# -------------------------------------------
# Called By: ADMINMENU
# File Name: begintest
# File Purpose: Tests for required criteria and calls the next function if all are met
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.06.14
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

scoreboard players set @s DVZ.begintest 0
execute if entity @e[tag=worldspawn] store success score @s DVZ.begintest run tellraw @s {"text":"Found Spawn-in Lobby.","color":"green"}
execute if entity @s[scores={DVZ.begintest=0}] run tellraw @s {"text":"COULD NOT FIND Spawn-in Lobby.","bold":true,"color":"dark_green"}
tag @s[scores={DVZ.begintest=0}] add begintestfail

scoreboard players set @s DVZ.begintest 0
execute if entity @e[tag=dSpawn] store success score @s DVZ.begintest run tellraw @s {"text":"Found Dwarf Spawn.","color":"aqua"}
execute if entity @s[scores={DVZ.begintest=0}] run tellraw @s {"text":"COULD NOT FIND Dwarf Spawn.","bold":true,"color":"dark_aqua"}
tag @s[scores={DVZ.begintest=0}] add begintestfail

execute if entity @e[type=marker,tag=dSpawn] run scoreboard players set @s DVZ.begintest 0
execute store success score @s DVZ.begintest at @e[tag=dSpawn] if block ~ ~-1 ~ minecraft:gold_block if block ~-1 ~-1 ~ minecraft:gold_block if block ~ ~-1 ~-1 minecraft:gold_block if block ~-1 ~-1 ~-1 minecraft:gold_block if block ~1 ~-2 ~ minecraft:gold_block if block ~1 ~-2 ~-1 minecraft:gold_block if block ~ ~-2 ~-2 minecraft:gold_block if block ~-1 ~-2 ~-2 minecraft:gold_block if block ~-2 ~-2 ~-1 minecraft:gold_block if block ~-2 ~-2 ~ minecraft:gold_block if block ~-1 ~-2 ~1 minecraft:gold_block if block ~ ~-2 ~1 minecraft:gold_block run tellraw @s {"text":"Found Valid Shrine.","color":"gold"}
execute if entity @s[scores={DVZ.begintest=0}] if entity @e[tag=dSpawn] run tellraw @s {"text":"COULD NOT FIND Valid Shrine.","bold":true,"color":"yellow"}
execute if entity @e[type=marker,tag=dSpawn] run tag @s[scores={DVZ.begintest=0}] add begintestfail

scoreboard players set @s DVZ.begintest 0
execute if entity @e[tag=zSpawn] store success score @s DVZ.begintest run tellraw @s {"text":"Found Zombie Spawn.","color":"red"}
execute if entity @s[scores={DVZ.begintest=0}] run tellraw @s {"text":"COULD NOT FIND Zombie Spawn.","bold":true,"color":"dark_red"}
tag @s[scores={DVZ.begintest=0}] add begintestfail

scoreboard players set @s DVZ.begintest 0
execute if entity @e[tag=dvztimer,tag=selected] store success score @s DVZ.begintest run tellraw @s {"text":"Found Boss Selection.","color":"gray"}
execute if entity @s[scores={DVZ.begintest=0}] run tellraw @s {"text":"COULD NOT FIND Boss selection.","bold":true,"color":"dark_gray"}
tag @s[scores={DVZ.begintest=0}] add begintestfail

execute if entity @s[tag=!begintestfail] run tellraw @s {"text":"Found all required components. Game starting now!","italic":true,"color":"yellow"}
execute if entity @s[tag=begintestfail] run tellraw @s {"text":"COULD NOT FIND all required components.","bold":true,"italic":true,"color":"gold"}
execute if entity @s[tag=!begintestfail] run function dvz:begin

tag @a remove begintestfail