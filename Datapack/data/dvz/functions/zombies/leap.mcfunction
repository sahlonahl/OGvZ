# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: leap
# File Purpose: Summons a wall to protect the golem and their allies
# Created By: Zaffre
# 
# Created On: 2023.03.05
# Last Modified On: 2023.05.13
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

# golem leap
execute as @s[tag=golem,scores={DVZ.leap.cool=1..}] run tellraw @s ["",{"text":" * [Leap] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.leap.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute as @s if entity @s[tag=golem,scores={DVZ.leap.cool=0}] run tellraw @s {"text":" * [Leap] Poof!","color":"red"}

execute as @s[tag=golem,scores={DVZ.leap.cool=0}] at @s run playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 40 0.7
execute as @s[tag=golem,scores={DVZ.leap.cool=0}] at @s run playsound minecraft:entity.iron_golem.step master @a ~ ~ ~ 40 0.7
execute as @s[tag=golem,scores={DVZ.leap.cool=0}] at @s run particle cloud ^ ^ ^ 1 0.25 1 0.5 50
execute as @s[tag=golem,scores={DVZ.leap.cool=0}] run effect give @s[tag=golem,scores={DVZ.leap.cool=0}] levitation 1 25 true

execute as @s if entity @s[tag=golem,scores={DVZ.leap.cool=0}] run scoreboard players set @s DVZ.leap.cool 30
execute as @s if entity @s[tag=golem,scores={DVZ.leap.cool=0}] run scoreboard players set @s DVZ.rclick 0

# phantom leap
execute as @s[tag=phantom,scores={DVZ.leap.cool=1..}] run tellraw @s ["",{"text":" * [Leap] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.leap.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute as @s if entity @s[tag=phantom,scores={DVZ.leap.cool=0}] run tellraw @s {"text":" * [Leap] Poof!","color":"red"}

execute as @s[tag=phantom,scores={DVZ.leap.cool=0}] at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1 0.7
execute as @s[tag=phantom,scores={DVZ.leap.cool=0}] run effect give @s[tag=phantom,scores={DVZ.leap.cool=0}] levitation 1 20 true

execute as @s if entity @s[tag=phantom,scores={DVZ.leap.cool=0}] run scoreboard players set @s DVZ.leap.cool 15
execute as @s if entity @s[tag=phantom,scores={DVZ.leap.cool=0}] run scoreboard players set @s DVZ.rclick 0