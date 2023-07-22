# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: slime_explode
# File Purpose: Gives explosives
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[tag=slime,scores={DVZ.slimeexplode.cool=1..}] run title @s actionbar ["",{"text":" * [Corrosive Virus] You have ","color":"#63FF78"},{"score":{"name":"@s","objective":"DVZ.slimeexplode.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#63FF78"}]

execute as @s if entity @s[tag=slime,scores={DVZ.slimeexplode.cool=0}] run title @s actionbar {"text":" * [Corrosive Virus] Poof!","color":"#63FF78"}
execute as @s if entity @s[tag=slime,scores={DVZ.slimeexplode.cool=0}] run playsound minecraft:block.slime_block.place master @a ~ ~ ~ 1 0.1
execute as @s if entity @s[tag=slime,scores={DVZ.slimeexplode.cool=0}] at @s run give @a[limit=1,sort=nearest,distance=0.1..8,team=zMONSTER] carrot_on_a_stick{display:{Name:'{"text":"Corrosive Virus","color":"#63FF78","bold":false,"italic":false}',Lore:['{"text":"Explode and kill yourself!","color":"gray","bold":false,"italic":false}']},Unbreakable:1b,CustomModelData:109} 1
execute as @s if entity @s[tag=slime,scores={DVZ.slimeexplode.cool=0}] run scoreboard players set @s DVZ.slimeexplode.cool 12
execute as @s if entity @s[tag=slime,scores={DVZ.slimeexplode.cool=0}] run scoreboard players set @s DVZ.rclick 0