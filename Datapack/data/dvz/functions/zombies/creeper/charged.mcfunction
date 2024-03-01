# -------------------------------------------
# Called By: dvz:rightclick/creeperbaker
# File Name: charged
# File Purpose: Gives the charged tag and explosion item to the charged creeper
# Created By: Zaffre
# 
# Created On: 2023.03.08
# Last Modified On: 2024.02.28
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=creeper] add charged_creeper
team leave @s[tag=charged_creeper]
team join zCHARGED_CREEPER @s[tag=charged_creeper]
clear @s[tag=charged_creeper] carrot_on_a_stick{CustomModelData:10,Unbreakable:1b}
give @s[tag=charged_creeper] carrot_on_a_stick{CustomModelData:76,Unbreakable:1b,Enchantments: [{id: "unbreaking", lvl: 1},],display:{Name:'{"text":"CHARGED EXPLOSION!","color":"yellow"}',Lore:['[{"text":"Beware your the fuse time!","color":"dark_red"}]',]}}
tellraw @s[tag=charged_creeper] {"text":"You've become charged!","bold":true,"color":"yellow"}
execute at @s[tag=charged_creeper] run playsound entity.creeper.hurt master @a ~ ~ ~ 100
tellraw @a ["",{"text":"ALERT:","bold":true,"color":"red"},{"text":" A ","color":"gold"},{"text":"Charged Creeper ","italic":true,"color":"gray"},{"text":"(","color":"gray"},{"selector":"@s[tag=charged_creeper,tag=!selectedclass]","color":"gray"},{"text":")","color":"gray"},{"text":" approaches!","color":"gold"}]
effect give @s[tag=charged_creeper] slowness 1000000 1 true
