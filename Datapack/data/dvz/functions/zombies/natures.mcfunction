# -------------------------------------------
# Called By: dvz:tick
# File Name: natures
# File Purpose: Applies the effects for mob natures
# Created By: Zaffre
# 
# Created On: 2023.03.05
# Last Modified On: 2023.09.02
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

# Level 1 effects
#Strong
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Strong:1b}}]}] strength infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Strong:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Strong","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Strong:1b}}]}] add natured
#Tough
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Tough:1b}}]}] resistance infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Tough:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Tough","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Tough:1b}}]}] add natured
#Fast
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Fast:1b}}]}] speed infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Fast:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Fast","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Fast:1b}}]}] add natured
#Hasty
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hasty:1b}}]}] haste infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hasty:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Hasty","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hasty:1b}}]}] add natured


# level 2 strength effects
#Burly
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Burly:1b}}]}] strength infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Burly:1b}}]}] slowness infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Burly:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Burly","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Burly:1b}}]}] add natured
#Brawny 
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Brawny:1b}}]}] strength infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Brawny:1b}}]}] mining_fatigue infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Brawny:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Brawny","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Brawny:1b}}]}] add natured


# level 2 resistance effects
#Hardy
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hardy:1b}}]}] resistance infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hardy:1b}}]}] weakness infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hardy:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Hardy","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hardy:1b}}]}] add natured
#Sturdy
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Sturdy:1b}}]}] resistance infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Sturdy:1b}}]}] slowness infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Sturdy:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Sturdy","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Sturdy:1b}}]}] add natured
#Stout
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Stout:1b}}]}] resistance infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Stout:1b}}]}] mining_fatigue infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Stout:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Stout","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Stout:1b}}]}] add natured


# level 2 speed effects
#Quick
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Quick:1b}}]}] speed infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Quick:1b}}]}] weakness infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Quick:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Quick","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Quick:1b}}]}] add natured
#Fleet
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Fleet:1b}}]}] speed infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Fleet:1b}}]}] mining_fatigue infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Fleet:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Fleet","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Fleet:1b}}]}] add natured
#Swift
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Swift:1b}}]}] speed infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Swift:1b}}]}] hunger infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Swift:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Swift","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Swift:1b}}]}] add natured


# level 2 haste effects
#Miner
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Miner:1b}}]}] haste infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Miner:1b}}]}] slowness infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Miner:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Miner","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Miner:1b}}]}] add natured
#Hungry
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hungry:1b}}]}] haste infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hungry:1b}}]}] hunger infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hungry:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Hungry","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Hungry:1b}}]}] add natured


# level 3 effects
#Juggernaut
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Juggernaut:1b}}]}] health_boost infinite 2
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Juggernaut:1b}}]}] regeneration infinite 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Juggernaut:1b}}]}] slowness infinite 1
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Juggernaut:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Juggernaut","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Juggernaut:1b}}]}] add natured
#Wildcard
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Wildcard:1b}}]}] slow_falling infinite 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Wildcard:1b}}]}] fire_resistance infinite 0
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Wildcard:1b}}]}] jump_boost infinite 1
effect give @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Wildcard:1b}}]}] dolphins_grace infinite 0
tellraw @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Wildcard:1b}}]}] ["",{"text":" \u2022 Your mob nature is ","color":"yellow"},{"text":"Wildcard","bold":true,"color":"yellow"}]
tag @s[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Wildcard:1b}}]}] add natured


