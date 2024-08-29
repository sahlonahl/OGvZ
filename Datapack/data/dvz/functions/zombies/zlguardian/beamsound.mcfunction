# -------------------------------------------
# Called By: dvz:zombies/zlguardian/beam
# File Name: beamsound
# File Purpose: Playing the hit sound when a dwarf takes beam damage
# Created By: SWilkekids
# 
# Created On: 2024.08.29
# Last Modified On: 2024.08.29
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @a[tag=zlBEAMuse] at @s run playsound minecraft:entity.experience_orb.pickup neutral @a[tag=zlBEAMuse] ~ ~ ~ 1 .5
