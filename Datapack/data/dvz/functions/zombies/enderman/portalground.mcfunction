# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: portalground
# File Purpose: Summons an ender portal at ground level 
# Created By: Zaffre
# 
# Created On: 2022.05.15
# Last Modified On: 2023.04.07
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

##Portal Structure
#Core
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run tp @s ~ ~1 ~
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-1 ~-5 ~-1 ~1 ~-2 ~1 end_stone replace #dvz:gothrough
#First ring
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-3 ~-2 ~-1 ~-3 ~-4 ~1 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~3 ~-2 ~-1 ~3 ~-4 ~1 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-1 ~-2 ~-3 ~1 ~-4 ~-3 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-1 ~-2 ~3 ~1 ~-4 ~3 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~2 ~-2 ~2 ~2 ~-4 ~2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~2 ~-2 ~-2 ~2 ~-4 ~-2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-2 ~-2 ~2 ~-2 ~-4 ~2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-2 ~-2 ~-2 ~-2 ~-4 ~-2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~ ~-5 ~ ~ ~-5 ~ pearlescent_froglight replace #dvz:gothrough
#2nd ring
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-5 ~-2 ~-1 ~-5 ~-3 ~1 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~5 ~-2 ~-1 ~5 ~-3 ~1 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-1 ~-2 ~-5 ~1 ~-3 ~-5 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-1 ~-2 ~5 ~1 ~-3 ~5 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-4 ~-2 ~-3 ~-4 ~-3 ~-2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-4 ~-2 ~3 ~-4 ~-3 ~2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~4 ~-2 ~-3 ~4 ~-3 ~-2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~4 ~-2 ~3 ~4 ~-3 ~2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-3 ~-2 ~4 ~-2 ~-3 ~4 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~3 ~-2 ~4 ~2 ~-3 ~4 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-3 ~-2 ~-4 ~-2 ~-3 ~-4 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~3 ~-2 ~-4 ~2 ~-3 ~-4 end_stone replace #dvz:gothrough
#3rd ring
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-7 ~-2 ~-2 ~-7 ~-2 ~2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~7 ~-2 ~-2 ~7 ~-2 ~2 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-2 ~-2 ~-7 ~2 ~-2 ~-7 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-2 ~-2 ~7 ~2 ~-2 ~7 end_stone replace #dvz:gothrough

execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-6 ~-2 ~-3 ~-6 ~-2 ~-4 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-6 ~-2 ~3 ~-6 ~-2 ~4 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~6 ~-2 ~3 ~6 ~-2 ~4 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~6 ~-2 ~-3 ~6 ~-2 ~-4 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~3 ~-2 ~-6 ~4 ~-2 ~-6 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-3 ~-2 ~-6 ~-4 ~-2 ~-6 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~3 ~-2 ~6 ~4 ~-2 ~6 end_stone replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-3 ~-2 ~6 ~-4 ~-2 ~6 end_stone replace #dvz:gothrough

execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-5 ~-1 ~-5 ~-5 ~-4 ~-5 pearlescent_froglight replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~5 ~-1 ~-5 ~5 ~-4 ~-5 pearlescent_froglight replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~-5 ~-1 ~5 ~-5 ~-4 ~5 pearlescent_froglight replace #dvz:gothrough
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run fill ~5 ~-1 ~5 ~5 ~-4 ~5 pearlescent_froglight replace #dvz:gothrough



execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] at @s run summon marker ~ ~-1 ~ {Tags:[ePortalStand]}
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run playsound item.totem.use master @a ~ ~ ~

#Give reinforce tool and spawn eggs
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run give @s carrot_on_a_stick{CustomModelData:12,HideFlags:2,AttributeModifiers:[{AttributeName: "generic.knockback_resistance", Name: "generic.knockbackResistance", Amount: 0.5, Operation: 0, UUID: [I; 0, 1, 0, 2]}],Unbreakable:1b,display:{Name:'{"text":"Reinforce","italic":"light_purple"}',Lore:['[{"text":"Allows monsters to teleport to the portal again."}]','[{"text":"15 second cooldown!","color":"red"}]']}}
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run give @s zombie_spawn_egg 8
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run give @s skeleton_spawn_egg 8
execute as @s if entity @s[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run give @s creeper_spawn_egg 8

execute as @s if entity @a[tag=enderman,scores={DVZ.portal.cool=0},tag=ePortal] run scoreboard players reset @s DVZ.portal.cool