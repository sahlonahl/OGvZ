# -------------------------------------------
# Called By: dvz:begintest
# File Name: begin
# File Purpose: Begins game and sends and announcement to all players
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @e[tag=dvztimer] add begin
scoreboard players set @e[tag=dvztimer] DVZ.timer 0
gamerule doDaylightCycle true
gamerule doMobSpawning false
bossbar set dvz:bosstimer visible true
scoreboard objectives setdisplay sidebar DVZ.playercount
title @a subtitle ["",{"text":"[","color":"gold"},{"text":"OG","color":"dark_aqua"},{"text":"v","color":"dark_gray"},{"text":"Z","color":"dark_red"},{"text":"]","color":"gold"},{"text":" is now starting","color":"white"}]
title @a title {"text":""}
title @a actionbar ["",{"text":"\u25b6","bold":true},{"text":" The game begins!","bold":true,"color":"dark_green"},{"text":" Right-click","color":"yellow"},{"text":" your ","color":"gold"},{"text":"magma cream","color":"yellow"},{"text":" and select your class.","color":"gold"}]
execute as @a run function dvz:spawn
execute as @a at @s run playsound block.portal.trigger master @s ~ ~ ~ 0.7 1.5