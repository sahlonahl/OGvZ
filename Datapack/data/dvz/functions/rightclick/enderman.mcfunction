# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: enderman
# File Purpose: Spawn items for enderman class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.09.08
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

playsound entity.enderman.ambient master @a ~ ~ ~ 200

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add enderman
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add purplemob
tellraw @a ["",{"text":"ALERT:","bold":true,"color":"red"},{"text":" An ","color":"gold"},{"text":"Enderman ","italic":true,"color":"light_purple"},{"text":"(","color":"light_purple"},{"selector":"@s[tag=enderman,tag=!selectedclass]","color":"light_purple"},{"text":")","color":"light_purple"},{"text":" approaches!","color":"gold"}]
team join zENDERMAN @s[tag=enderman,tag=!selectedclass]
clear @s[tag=!selectedclass]
scoreboard players set @s[tag=!selectedclass] DVZ.portal.cool 30
give @s[tag=enderman,tag=!selectedclass] cooked_beef 64
give @s[tag=enderman,tag=!selectedclass] carrot_on_a_stick{CustomModelData: 5, Unbreakable: 1b, display: {Name: '{"text":"Teleport","color":"light_purple"}', Lore: ['[{"text":"Teleport to the block you are looking at."}]', '[{"text":"Range limit: 32 blocks!","color":"red"}]', '[{"text":"20 second cooldown!","color":"red"}]']}} 1
give @s[tag=enderman,tag=!selectedclass] carrot_on_a_stick{CustomModelData: 4, Unbreakable: 1b, display: {Name: '{"text":"Create portal above you","color":"light_purple"}', Lore: ['[{"text":"Makes a portal above you for teammates to teleport to."}]', '[{"text":"Survive until the timer runs out to use this item!","color":"light_purple"}]', '[{"text":"Single-use item!","color":"red"}]']}} 1
give @s[tag=enderman,tag=!selectedclass] carrot_on_a_stick{CustomModelData: 70, Unbreakable: 1b, display: {Name: '{"text":"Create portal at your position","color":"light_purple"}', Lore: ['[{"text":"Makes a portal above you for teammates to teleport to."}]', '[{"text":"Survive until the timer runs out to use this item!","color":"light_purple"}]', '[{"text":"Single-use item!","color":"red"}]']}} 1
item replace entity @s[tag=enderman,tag=!selectedclass] armor.head with player_head{SkullOwner:"MHF_Enderman",display:{Name:'{"text":"Enderman Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=enderman,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 0}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=enderman,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 0}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=enderman,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 0}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
tag @s add selectedclass
execute as @e[tag=dvztimer,tag=fight] run scoreboard players add @s DVZ.purplemob 1

execute as @s[tag=enderman] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures