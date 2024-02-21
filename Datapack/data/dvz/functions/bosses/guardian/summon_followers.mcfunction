# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: summon_followers
# File Purpose: guardian/wither boss summons followers
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.02.21
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Used by both the wither and guardian bosses
# -------------------------------------------

execute as @s if entity @s[scores={DVZ.minion_summon.cool=1..}] run title @s actionbar ["",{"text":" * [Summon_Followers] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.minion_summon.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

title @s actionbar ["",{"text":" * [Summon_Followers] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.minion_summon.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[scores={DVZ.minion_summon.cool=0}] run tellraw @s {"text":" * [Summon Followers] Poof!","color":"red"}
execute as @s if entity @s[scores={DVZ.minion_summon.cool=0}] run playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 100

execute if entity @s[tag=playerguardianpick,scores={DVZ.minion_summon.cool=0}] as @a[tag=dwarves] if predicate dvz:50chance run summon drowned ^ ^1 ^-1 {CustomName:'{"text":"the Guardian\'s minion"}',ActiveEffects:[{Id:11,Amplifier:1b,Duration:99999}]}
execute if entity @s[tag=playerguardianpick,scores={DVZ.minion_summon.cool=0}] as @a[tag=dwarves] if predicate dvz:50chance run summon guardian ^ ^1 ^-1 {CustomName:'{"text":"the Guardian\'s minion"}',ActiveEffects:[{Id:11,Amplifier:1b,Duration:99999}]}
execute if entity @s[tag=playerwitherpick,scores={DVZ.minion_summon.cool=0}] as @a[tag=dwarves] run summon wither_skeleton ^ ^1 ^-1 {CustomName:'{"text":"the Wither\'s minion"}',HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Enchantments:[{id:"sharpness",lvl:0}]}},{}],ActiveEffects:[{Id:11,Amplifier:1b,Duration:99999}]}

execute as @s if entity @s[scores={DVZ.minion_summon.cool=0}] run scoreboard players set @s DVZ.minion_summon.cool 45
execute as @s if entity @s[scores={DVZ.minion_summon.cool=0}] run scoreboard players set @s DVZ.rclick 0
