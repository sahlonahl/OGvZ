# -------------------------------------------
# Called By: dvz:tick
# File Name: evocation
# File Purpose: Spawns the mobs for the primary summon ability
# Created By: Zaffre
# 
# Created On: 2023.03.14
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute if entity @s[tag=evocation,tag=ghast] run summon ghast ~ ~2 ~

execute if entity @s[tag=evocation,tag=golem] run summon iron_golem ~ ~ ~

execute if entity @s[tag=evocation,tag=phantom] run summon phantom ~ ~1 ~

execute if entity @s[tag=evocation,tag=wither] run summon wither ~ ~ ~

execute if entity @s[tag=evocation,tag=horde] run summon zombie ~ ~ ~
execute if entity @s[tag=evocation,tag=horde] run summon zombie ~ ~ ~
execute if entity @s[tag=evocation,tag=horde] run summon zombie ~ ~ ~
execute if entity @s[tag=evocation,tag=horde] run summon zombie ~ ~ ~
execute if entity @s[tag=evocation,tag=horde] run summon zombie ~ ~ ~
execute if entity @s[tag=evocation,tag=horde] run summon zombie ~ ~ ~
execute if entity @s[tag=evocation,tag=horde] run summon zombie ~ ~ ~
execute if entity @s[tag=evocation,tag=horde] run summon zombie ~ ~ ~
execute if entity @s[tag=evocation,tag=horde] run summon zombie ~ ~ ~

execute if entity @s[tag=evocation,tag=spiders] run summon cave_spider ~ ~ ~ {Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider",Passengers:[{id:"minecraft:cave_spider"}]}]}]}]}]}]}]}]}]}]}



kill @s[tag=evocation]