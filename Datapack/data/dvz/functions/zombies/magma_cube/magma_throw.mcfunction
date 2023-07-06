# -------------------------------------------
# Called By: dvz:zombies/magma_cube/magma_throw.mcfunction
# File Name: magma_throw
# File Purpose: Throws projectile for magma cube
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

execute as @s[tag=magma_cube,scores={DVZ.magmathrow.cool=1..}] run title @s actionbar ["",{"text":" * [Infernal Grenade] You have ","color":"#451000"},{"score":{"name":"@s","objective":"DVZ.magmathrow.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#451000"}]

execute as @s if entity @s[tag=magma_cube,scores={DVZ.magmathrow.cool=0}] run title @s actionbar {"text":" * [Infernal Grenade] Poof!","color":"#451000"}
execute as @s if entity @s[tag=magma_cube,scores={DVZ.magmathrow.cool=0}] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0.5
execute as @s if entity @s[tag=magma_cube,scores={DVZ.magmathrow.cool=0}] at @s run function dvz:zombies/magma_cube/magma_launch

execute as @s if entity @s[tag=magma_cube,scores={DVZ.magmathrow.cool=0}] run scoreboard players set @s DVZ.magmathrow.cool 20
execute as @s if entity @s[tag=magma_cube,scores={DVZ.magmathrow.cool=0}] run scoreboard players set @s DVZ.rclick 0
