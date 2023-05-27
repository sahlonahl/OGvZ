# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: reinforce
# File Purpose: Allows for more monsters to spawn at the enderman portal
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: While the enderman holds the reinforce item, they are invulnerable, but experince extra knockback
# -------------------------------------------

execute as @s[tag=enderman,tag=ePortal,scores={DVZ.reinf.cool=1..}] run tellraw @s ["",{"text":" * [Reinforce] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.reinf.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute as @s[tag=enderman,tag=ePortal,scores={DVZ.reinf.cool=0}] at @s run tellraw @s {"text":" * [Reinforce] Poof!","color":"red"}

execute as @s[tag=enderman,tag=ePortal,scores={DVZ.reinf.cool=0}] at @s run summon lightning_bolt ~ ~7 ~
execute as @s[tag=enderman,tag=ePortal,scores={DVZ.reinf.cool=0}] at @s run clear @a carrot_on_a_stick{CustomModelData:6,Unbreakable:1b}
execute as @s[tag=enderman,tag=ePortal,scores={DVZ.reinf.cool=0}] at @s run give @a[tag=zombies,tag=!ePortal] carrot_on_a_stick{CustomModelData:6,Unbreakable:1b,display:{Name:'{"text":"Teleport","color":"light_purple"}',Lore:['[{"text":"Teleport to the portal."}]','[{"text":"Single-use item!","color":"red"}]']}} 1
execute as @s[tag=enderman,tag=ePortal,scores={DVZ.reinf.cool=0}] at @s run tellraw @a ["",{"text":" * [Portal] ","color":"light_purple"},{"selector":"@s","color":"light_purple"},{"text":"'s portal is now open!","color":"light_purple"}]
execute as @s[tag=enderman,tag=ePortal,scores={DVZ.reinf.cool=0}] at @s run scoreboard players set @s DVZ.reinf.cool 15