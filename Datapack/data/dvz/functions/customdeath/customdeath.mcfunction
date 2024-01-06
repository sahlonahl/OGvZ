# -------------------------------------------
# Called By: dvz:tick
# File Name: customdeath
# File Purpose: Main branch for all custom death animations
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.05.18
# Last Modified By: Sahlo
#
# Credit to:
#
# Comments: If users change their username, this file needs to be updated
# -------------------------------------------

execute if entity @s[name="Ozald"] run particle minecraft:dust_color_transition 0.682 0 1 2 1 0 1 ~ ~ ~ 1 2 1 1 240 force
execute if entity @s[name="Ozald"] run playsound entity.wither.death master @a ~ ~ ~ .2 0 0
execute if entity @s[name="Ozald"] run title @a actionbar {"text":"The risk Ozald took was calculated. He's just bad at math.","color":"light_purple","italic":true}

execute if entity @s[name="Astraeos_"] run particle minecraft:enchant ~ ~2 ~ 0 0 0 1 600 force
execute if entity @s[name="Astraeos_"] run particle minecraft:dragon_breath ~ ~1 ~ .3 .3 .3 0.3 140 force
execute if entity @s[name="Astraeos_"] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 1 .8 0
execute if entity @s[name="Astraeos_"] run title @a actionbar {"text":"Astra has fallen, now here be dragons.","color":"light_purple","italic":true}

execute if entity @s[name="AbraxisPilot"] run scoreboard players set @s DVZ.timer 0
execute if entity @s[name="AbraxisPilot"] run function dvz:customdeath/abraxispilot

execute if entity @s[name="MunchieMan321"] run scoreboard players set @s DVZ.timer 0
execute if entity @s[name="MunchieMan321"] run function dvz:customdeath/munchieman321

execute if entity @s[name="Muff1nArcades"] run particle minecraft:block cake ~ ~ ~ .1 .2 .1 0.2 50 force
execute if entity @s[name="Muff1nArcades"] run playsound block.wool.place master @a[distance=..8] ~ ~ ~
execute if entity @s[name="Muff1nArcades"] run title @a actionbar {"text":"Muff1n Arcades died, and is thinking of excuses (-_-;)","color":"white","italic":true}

#execute if entity @s[name="towl_"] run particle minecraft:cherry_leaves
execute if entity @s[name="towl_"] run particle minecraft:dust_color_transition 0.961 0.855 0.937 0.33 0.871 0.302 0.545 ~ ~ ~ 1 2 1 1 120 force
execute if entity @s[name="towl_"] run playsound entity.dolphin.death master @a[distance=..8] ~ ~ ~
execute if entity @s[name="towl_"] run title @a actionbar {"text":"tOwl embraced the earth","color":"dark_purple","italic":true}

#execute if entity @s[name="wilkekids"] run particle minecraft:block oak_wood ~ ~ ~ .1 .2 .1 0.2 50 force
#execute if entity @s[name="wilkekids"] run playsound block.wood.place master @a[distance=..8] ~ ~ ~
#execute if entity @s[name="wilkekids"] run title @a actionbar {"text":"Wilkekids is testing death messages (I didn't earn this)","color":"blue","italic":true}
#execute if entity @s[name="wilkekids"] run title @a title ""
