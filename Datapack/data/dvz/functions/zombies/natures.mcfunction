# -------------------------------------------
# Called By: dvz:tick
# File Name: natures
# File Purpose: Applies the effects for mob natures
# Created By: Zaffre
# 
# Created On: 2023.03.05
# Last Modified On: 2023.07.27
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

#Lonely
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Lonely:1b}}]}] strength 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Lonely:1b}}]}] slowness 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Lonely:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"LONELY","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Lonely:1b}}]}] add natured
#Brave
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Brave:1b}}]}] strength 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Brave:1b}}]}] slowness 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Brave:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"BRAVE","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Brave:1b}}]}] add natured
#Adamant
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Adamant:1b}}]}] strength 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Adamant:1b}}]}] mining_fatigue 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Adamant:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"ADAMANT","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Adamant:1b}}]}] add natured
#Naughty
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Naughty:1b}}]}] strength 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Naughty:1b}}]}] hunger 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Naughty:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"NAUGHTY","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Naughty:1b}}]}] add natured



#Bold
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Bold:1b}}]}] resistance 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Bold:1b}}]}] slowness 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Bold:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"BOLD","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Bold:1b}}]}] add natured
#Relaxed
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Relaxed:1b}}]}] resistance 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Relaxed:1b}}]}] mining_fatigue 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Relaxed:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"RELAXED","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Relaxed:1b}}]}] add natured
#Impish
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Impish:1b}}]}] resistance 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Impish:1b}}]}] hunger 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Impish:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"IMPISH","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Impish:1b}}]}] add natured
#Lax
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Lax:1b}}]}] resistance 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Lax:1b}}]}] hunger 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Lax:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"LAX","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Lax:1b}}]}] add natured



#Timid
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Timid:1b}}]}] speed 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Timid:1b}}]}] weakness 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Timid:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"TIMID","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Timid:1b}}]}] add natured
#Hasty
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hasty:1b}}]}] speed 999999 1
#effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hasty:1b}}]}] blah 999999 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hasty:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"HASTY","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hasty:1b}}]}] add natured
#Jolly
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Jolly:1b}}]}] speed 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Jolly:1b}}]}] mining_fatigue 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Jolly:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"JOLLY","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Jolly:1b}}]}] add natured
#Naive
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Naive:1b}}]}] speed 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Naive:1b}}]}] hunger 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Naive:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"NAIVE","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Naive:1b}}]}] add natured



#Modest
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Modest:1b}}]}] haste 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Modest:1b}}]}] weakness 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Modest:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"MODEST","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Modest:1b}}]}] add natured
#Mild
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Mild:1b}}]}] haste 999999 1
#effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Mild:1b}}]}] blah 999999 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Mild:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"MILD","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Mild:1b}}]}] add natured
#Quiet
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Quiet:1b}}]}] haste 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Quiet:1b}}]}] slowness 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Quiet:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"QUIET","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Quiet:1b}}]}] add natured
#Rash
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Rash:1b}}]}] haste 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Rash:1b}}]}] hunger 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Rash:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"RASH","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Rash:1b}}]}] add natured



#Calm
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Calm:1b}}]}] slow_falling 999999 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Calm:1b}}]}] fire_resistance 999999 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Calm:1b}}]}] weakness 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Calm:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"CALM","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Calm:1b}}]}] add natured
#Gentle
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gentle:1b}}]}] fire_resistance 999999 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gentle:1b}}]}] slow_falling 999999 0
#effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gentle:1b}}]}] blah 999999 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gentle:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"GENTLE","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gentle:1b}}]}] add natured
#Sassy
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Sassy:1b}}]}] fire_resistance 999999 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Sassy:1b}}]}] slow_falling 999999 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Sassy:1b}}]}] slowness 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Sassy:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"SASSY","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Sassy:1b}}]}] add natured
#Careful
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Careful:1b}}]}] fire_resistance 999999 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Careful:1b}}]}] slow_falling 999999 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Careful:1b}}]}] mining_fatigue 999999 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Careful:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"SASSY","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Careful:1b}}]}] add natured



#Gluttonous
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gluttonous:1b}}]}] health_boost 999999 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gluttonous:1b}}]}] regeneration 999999 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gluttonous:1b}}]}] slowness 999999 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gluttonous:1b}}]}] mining_fatigue 999999 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gluttonous:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Gluttonous","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Gluttonous:1b}}]}] add natured