# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: spawncheck
# File Purpose: Check to make sure boss has died before allowing zombies to spawn
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=zombies,tag=!fight] run tellraw @s ["",{"text":" * [Spawn] You cannot spawn until the boss is killed!","color":"yellow"}]
execute as @s[tag=zombies,tag=fight] run function dvz:zombies/spawn