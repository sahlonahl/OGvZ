# -------------------------------------------
# Called By: dvz:tick
# File Name: nodrop
# File Purpose: called to prevent zombies from dropping/sharing items
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.04.07
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @a[tag=zombies] at @s positioned ~ ~1.2 ~ run execute as @e[nbt=!{Item:{tag:{CustomModelData:53}}},type=item,tag=!processed,distance=..0.5] run data modify entity @s Owner set from entity @s Thrower
execute as @a[tag=zombies] at @s positioned ~ ~1.2 ~ run execute as @e[nbt=!{Item:{tag:{CustomModelData:53}}},type=item,tag=!processed,distance=..0.5] run data modify entity @s PickupDelay set value 0
execute as @a[tag=zombies] at @s positioned ~ ~1.2 ~ if entity @e[nbt=!{Item:{tag:{CustomModelData:53}}},type=item,tag=!processed,distance=..0.5] run tellraw @s {"text":" [*] Mobs cannot drop items!","color":"red","italic":true}
execute as @a[tag=zombies] at @s positioned ~ ~1.2 ~ if entity @e[nbt=!{Item:{tag:{CustomModelData:53}}},type=item,tag=!processed,distance=..0.5] run playsound entity.generic.extinguish_fire master @p ~ ~ ~ 0.1
tag @e[type=item] add processed