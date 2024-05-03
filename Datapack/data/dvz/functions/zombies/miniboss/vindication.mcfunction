# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: vindication
# File Purpose: Calls all zombies/husks/vindicators/drowned to Johnny and gives all mobs temporary buffs
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.05.03
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

#execute as @s[tag=johnny,scores={DVZ.vindic.cool=1..}] run title @s actionbar ["",{"text":" * [Vindication] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.vindic.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run teleport @a[tag=!miniboss,tag=!golem,tag=!enderman,tag=!pigman,tag=zombies] @s
#execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run teleport @e[type=player,tag=zombie] @s
#execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run teleport @e[type=player,tag=husk] @s
#execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run teleport @e[type=player,tag=vindicator] @s
#execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run teleport @e[type=player,tag=drowned] @s
execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @a[tag=!miniboss,tag=!golem,tag=!enderman,tag=!pigman,tag=zombies] resistance 20
#execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @a[tag=zombie] resistance 20
#execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @a[tag=husk] resistance 20
#execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @a[tag=vindicator] resistance 20
#execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @a[tag=drowned] resistance 20
#execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @s resistance 20 99
execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @a[tag=!miniboss,tag=zombies] strength 20 1
execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @a[tag=!miniboss,tag=zombies] speed 20 1
execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @a[tag=!miniboss,tag=zombies] jump_boost 20 1
execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run effect give @a[tag=!miniboss,tag=zombies] fire_resistance 20 0

execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run playsound entity.vindicator.celebrate master @a ~ ~ ~ 10 1.1
execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run playsound event.raid.horn master @a ~ ~ ~ 100 2

execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run scoreboard players set @s DVZ.vindic.cool 120
execute as @s[tag=johnny,scores={DVZ.vindic.cool=0}] run scoreboard players set @s DVZ.rclick 0