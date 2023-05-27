# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: drain
# File Purpose: Wither Warrior mana item effect when right clicked
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.30
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Damages Wither Warrior, "sacraficially" or "ritualistically"
# -------------------------------------------

execute as @s[tag=wither,scores={DVZ.drain.cool=1..}] run tellraw @s ["",{"text":" * [Drain] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.drain.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute if entity @s[tag=wither,level=..29] run tellraw @s {"text":" * [Drain] You need at least 30 Mana!","color":"dark_red"}
tag @s[tag=wither,scores={DVZ.drain.cool=0},level=30..] add DRAINuse

execute as @s if entity @s[tag=DRAINuse] run execute as @a[tag=dwarves,tag=!wither] run playsound block.beacon.activate master @s ~ ~ ~ 1 2
execute as @s if entity @s[tag=DRAINuse] run playsound entity.bee.sting master @a ~ ~ ~ 1 0.8
execute as @s if entity @s[tag=DRAINuse] run playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 1
execute as @s if entity @s[tag=DRAINuse] run xp add @a[tag=dwarves,tag=!wither] 50 levels
execute as @s[tag=DRAINuse] run tellraw @s {"text":" * [Drain] Poof!","color":"red"}

execute as @s if entity @s[tag=DRAINuse] run execute as @s run xp add @s -30 levels
execute as @s if entity @s[tag=DRAINuse] run effect give @s instant_damage 3 0 true
execute as @s[tag=DRAINuse] run scoreboard players set @s DVZ.drain.cool 60
tag @s[tag=wither,scores={DVZ.drain.cool=1..}] remove DRAINuse
