# -------------------------------------------
# Called By: dvz:dwarves/closePortal
# File Name: closeportalfight
# File Purpose: Used to destroy the enderman spawning ring
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.09
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @e[tag=ePortalStand] at @e[tag=ePortalStand] run fill ~-10 ~ ~-10 ~10 ~-10 ~10 air replace end_stone
execute as @e[tag=ePortalStand] at @e[tag=ePortalStand] run fill ~-10 ~ ~-10 ~10 ~-10 ~10 air replace pearlescent_froglight

clear @a carrot_on_a_stick{CustomModelData:1,Unbreakable:1b}
clear @a carrot_on_a_stick{CustomModelData:6,Unbreakable:1b}

tellraw @a ["",{"text":" * The portal was shut down with end stone!","color":"light_purple"}]
execute as @s at @s run playsound block.respawn_anchor.deplete master @a ~ ~ ~ 100 0.7
tellraw @a ["",{"text":" * [Close Portal] ","color":"light_purple"},{"selector":"@s[type=player,tag=dwarves,tag=fight]","color":"light_purple"},{"text":" has closed the portal!","color":"light_purple"}]

kill @a[tag=ePortal]
kill @e[tag=ePortalStand]