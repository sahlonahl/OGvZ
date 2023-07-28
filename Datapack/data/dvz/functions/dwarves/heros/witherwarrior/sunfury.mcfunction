# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: beam
# File Purpose: Wither Warror offensive item effect when right clicked
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Teleports behind a zombie and weakens them for a final blow
# -------------------------------------------

execute as @s[tag=wither,scores={DVZ.sfury.cool=1..}] run title @s actionbar ["",{"text":" * [Sunfury] You have ","color":"gold"},{"score":{"name":"@s","objective":"DVZ.sfury.cool"},"color":"gold"},{"text":" seconds remaining!","color":"gold"}]
execute if entity @s[tag=wither,level=..29] run title @s actionbar {"text":" * [Sunfury] You need at least 30 Mana!","color":"gold"}
tag @s[tag=wither,scores={DVZ.sfury.cool=0},level=30..] add SFURYuse

execute if entity @s[tag=SFURYuse] run title @s actionbar {"text":" * [Sunfury] Poof!","color":"yellow"}
execute if entity @s[tag=SFURYuse] as @s at @s run playsound item.trident.return master @a ~ ~ ~ 1 1.5

execute as @s if entity @s[tag=SFURYuse] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=SFURYuse] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=SFURYuse] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=SFURYuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:dwarves/heros/witherwarrior/sunfuryloop
execute as @s if entity @s[tag=SFURYuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run execute as @p[tag=SFURYuse] at @p[tag=zombies,distance=..5] positioned ~ ~ ~ if block ^ ^2 ^-1 #dvz:gothrough run tp ^ ^2 ^-1
execute as @s if entity @s[tag=SFURYuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run execute as @p[tag=SFURYuse] at @p[tag=zombies,distance=..5] positioned ~ ~ ~ if block ^ ^2 ^-1 #dvz:gothrough run effect give @a[tag=zombies,distance=..5] blindness 3 0 true
execute as @s if entity @s[tag=SFURYuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run execute as @p[tag=SFURYuse] at @p[tag=zombies,distance=..5] positioned ~ ~ ~ if block ^ ^2 ^-1 #dvz:gothrough run effect give @a[tag=zombies,distance=..5] weakness 5 2 true
execute as @s if entity @s[tag=SFURYuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run execute as @p[tag=SFURYuse] at @p[tag=zombies,distance=..5] positioned ~ ~ ~ if block ^ ^2 ^-1 #dvz:gothrough run particle block gold_block ~ ~ ~ 1 3 1 1 400 force
execute as @s if entity @s[tag=SFURYuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run execute as @p[tag=SFURYuse] at @p[tag=zombies,distance=..5] positioned ~ ~ ~ if block ^ ^2 ^-1 #dvz:gothrough run particle block gold_block ~ ~ ~ 1 3 1 1 400 force
execute as @s if entity @s[tag=SFURYuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run execute as @p[tag=SFURYuse] at @p[tag=zombies,distance=..5] positioned ~ ~ ~ unless block ^ ^2 ^-1 #dvz:gothrough run tag @p[tag=SFURYuse] remove SFURYuse
kill @e[type=marker,tag=ray]

execute if entity @s[tag=SFURYuse] run execute as @s run xp add @s -30 levels
execute if entity @s[tag=SFURYuse] run scoreboard players set @s DVZ.sfury.cool 3
tag @s[tag=wither] remove SFURYuse