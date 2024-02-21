# -------------------------------------------
# Called By: dvz:tick
# File Name: itemeffects
# File Purpose: gives effects from special dwarven items
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.02.21
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Users cannot use more than one legend item
# -------------------------------------------

execute as @a store result score @s DVZ.legenditems run clear @s #dvz:legenditems{LegendItem:1b} 0

#Inventory
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt={Inventory:[{Slot:103b,tag:{Invis:1b}}]}] minecraft:invisibility 1 0 true
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt={Inventory:[{Slot:103b,tag:{Warrior:1b}}]}] minecraft:strength 1 1 true
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt={Inventory:[{Slot:100b,tag:{Traveler:1b}}]}] minecraft:speed 1 1 true
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt={foodLevel:18,Inventory:[{tag:{Papaya:1b}}]}] minecraft:saturation 3 0 true

#Held
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt={SelectedItem:{tag:{Bezerker:1b}}}] minecraft:speed 1 1
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt={SelectedItem:{tag:{EmeraldBow:1b}}}] minecraft:jump_boost 1 1
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt={SelectedItem:{tag:{WickedCrossbow:1b}}}] minecraft:slowness 1 1
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt={SelectedItem:{tag:{WickedCrossbow:1b}}}] minecraft:resistance 1 1
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt={Inventory:[{Slot:-106b,tag:{EmeraldBow:1b}}]}] minecraft:jump_boost 1 1
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt=!{ActiveEffects:[{Id:21}]},nbt={SelectedItem:{tag:{HealthBoost:1b}}}] minecraft:health_boost infinite 1
effect give @a[scores={DVZ.legenditems=1},tag=dwarves,tag=!hero,tag=!assassinpick,nbt=!{ActiveEffects:[{Id:21}]},nbt={Inventory:[{Slot:-106b,tag:{HealthBoost:1b}}]}] minecraft:health_boost infinite 1
effect clear @a[tag=dwarves,tag=!hero,tag=!assassinpick,nbt={ActiveEffects:[{Id:21}]},nbt=!{Inventory:[{tag:{HealthBoost:1b}}]}] minecraft:health_boost

#Hero Items
#effect give @a[tag=wither,scores={DVZ.crouch=1..},nbt={SelectedItem:{tag:{Whispersong:1b}}}] slowness 9 100
#effect give @a[tag=wither,scores={DVZ.crouch=1..},nbt={Inventory:[{Slot:-106b,tag:{Whispersong:1b}}]}] slowness 9 100
#effect clear @a[tag=wither,scores={DVZ.crouch=0},nbt={SelectedItem:{tag:{Whispersong:1b}}}] slowness
#effect clear @a[tag=wither,scores={DVZ.crouch=0},nbt={Inventory:[{Slot:-106b,tag:{Whispersong:1b}}]}] slowness