# -------------------------------------------
# Called By: dvz:tick
# File Name: eggsplode
# File Purpose: EXPLODES the egg.
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

summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Eggsplosion"}',Tags:["explode"]}
kill @s