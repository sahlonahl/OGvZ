# -------------------------------------------
# Called By: dvz:tick
# File Name: assassin
# File Purpose: sets up game for ai ender_dragon
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.08.19
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

function dvz:bosses/removetags
tag @e[tag=dvztimer] add selected
tag @e[tag=dvztimer] add assassinselected
tellraw @a[tag=admin] {"text":" * [OGvZ] Assassin selected!","color":"light_purple","italic":true}