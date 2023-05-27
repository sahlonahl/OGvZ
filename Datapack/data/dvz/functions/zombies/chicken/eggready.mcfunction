# -------------------------------------------
# Called By: dvz:tick
# File Name: eggready
# File Purpose: Summons an AEC for detection and arms the egg.
# Created By: Zaffre
# 
# Created On: 2022.04.19
# Last Modified On: 2022.04.19
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute at @s run summon marker ~ ~ ~ {Duration:999999999,Tags:["eggsplode"]}
tag @s add eggsplode