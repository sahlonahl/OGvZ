# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: portal
# File Purpose: Summons portal for monsters to teleport to so long as the enderman survives 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.09.02
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Endermen, even with these effects, can move slowly by "sprint jumping" while stationary.
# -------------------------------------------

#Portal Errors
execute as @s if entity @a[tag=enderman,tag=ePortal] run tellraw @s {"text":" * [Portal] There's another ender portal open!","color":"dark_red"}
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=..4}] if entity @a[tag=enderman,tag=ePortal] run scoreboard players set @s DVZ.portal.cool 5
execute as @s[tag=enderman,scores={DVZ.portal.cool=1..}] run tellraw @s ["",{"text":" * [Portal] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.portal.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

#Success
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0}] unless entity @a[tag=enderman,tag=ePortal] run tag @s add ePortal
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run tellraw @s {"text":" * [Portal] Poof!","color":"red"}
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run time set midnight

#Initial Setup
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run clear @s carrot_on_a_stick{Unbreakable:1b}
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run effect give @s minecraft:instant_health 1 200
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run effect give @s slowness 1000000 4 true
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run effect give @s jump_boost 1000000 128 true
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run effect give @s resistance 1000000 100 true

#Portal Message
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run tellraw @a ["",{"text":" * [Portal] ","color":"light_purple"},{"selector":"@s","color":"light_purple"},{"text":" has created an Ender portal!!!","color":"light_purple"}]
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run summon lightning_bolt ~ ~256 ~

#Portal Structure
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run tp @s ~ ~25 ~
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-1 ~-4 ~-1 ~1 ~-2 ~1 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-3 ~-2 ~-1 ~-3 ~-3 ~1 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~3 ~-2 ~-1 ~3 ~-3 ~1 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-1 ~-2 ~-3 ~1 ~-3 ~-3 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-1 ~-2 ~3 ~1 ~-3 ~3 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~2 ~-2 ~2 ~2 ~-3 ~2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~2 ~-2 ~-2 ~2 ~-3 ~-2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-2 ~-2 ~2 ~-2 ~-3 ~2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-2 ~-2 ~-2 ~-2 ~-3 ~-2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run summon marker ~ ~-1 ~ {Tags:[ePortalStand]}
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run playsound item.totem.use master @a ~ ~ ~

#Give reinforce tool and spawn eggs
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run give @s carrot_on_a_stick{CustomModelData:12,HideFlags:2,AttributeModifiers:[{AttributeName: "generic.knockback_resistance", Name: "generic.knockbackResistance", Amount: 1, Operation: 0, UUID: [I; 0, 1, 0, 2]}],Unbreakable:1b,display:{Name:'{"text":"Reinforce","italic":"light_purple"}',Lore:['[{"text":"Allows monsters to teleport to the portal again."}]','[{"text":"15 second cooldown!","color":"red"}]']}}
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run give @s zombie_spawn_egg 8
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run give @s skeleton_spawn_egg 8
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run give @s creeper_spawn_egg 8

execute as @s if entity @a[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run scoreboard players reset @s DVZ.portal.cool