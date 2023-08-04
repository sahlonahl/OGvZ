# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: masswither
# File Purpose: player wither boss applies wither to all dwarves 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.08.04
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s if entity @s[tag=playerwitherpick,tag=!speeding] run title @s actionbar {"text":" * [Wither] Poof!","color":"red"}
execute as @s if entity @s[tag=playerwitherpick,tag=!speeding] run playsound entity.wither.death master @a ~ ~ ~ 100 0.8
execute as @s if entity @s[tag=playerwitherpick,tag=!speeding] run effect give @a[tag=dwarves] wither 30 1
execute if entity @s[tag=playerwitherpick,tag=!speeding] as @a[tag=dwarves] run summon wither_skeleton ^ ^1 ^-1 {CustomName:'{"text":"the Wither\'s minion"}',HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],ActiveEffects:[{Id:11,Amplifier:1b,Duration:99999}]}
execute as @s if entity @s[tag=playerwitherpick,tag=!speeding] run clear @s carrot_on_a_stick{CustomModelData:42}