# -------------------------------------------
# Called By: dvz:zombies/witch/transmute
# File Name: transmute_start
# File Purpose: Starts transmutation
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.25
# Last Modified By: Galactic
#
# Credit to:
#
# Comments: 
# -------------------------------------------

playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1
particle minecraft:ambient_entity_effect ~ ~ ~ 0.5 1.5 0.5 0.1 100
execute if entity @s[tag=!golem,tag=!enderman,tag=!miniboss,tag=!chargecrp,tag=!pig3,tag=!slime,tag=!evoker] run function dvz:zombies/witch/transmute_normal
execute if entity @s[tag=golem] run function dvz:zombies/witch/transmute_purple
execute if entity @s[tag=enderman] run function dvz:zombies/witch/transmute_purple
execute if entity @s[tag=miniboss] run function dvz:zombies/witch/transmute_purple
execute if entity @s[tag=chargecrp] run function dvz:zombies/witch/transmute_purple
execute if entity @s[tag=pig3] run function dvz:zombies/witch/transmute_purple
execute if entity @s[tag=slime] run function dvz:zombies/witch/transmute_purple
execute if entity @s[tag=evoker] run function dvz:zombies/witch/transmute_purple