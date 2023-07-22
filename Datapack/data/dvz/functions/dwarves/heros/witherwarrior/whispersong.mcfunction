# -------------------------------------------
# Called By: dvz:tick
# File Name: beam
# File Purpose: Wither Warror bow upgrades progressivly with additional kills
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.07.21
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

scoreboard players add @s DVZ.whispersong 1

execute if entity @s[scores={DVZ.whispersong=1},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 1}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=2},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 2}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=3},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 2}, {id: "punch", lvl: 1}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=4},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 3}, {id: "punch", lvl: 1}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=5},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 4}, {id: "punch", lvl: 1}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=6},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 4}, {id: "punch", lvl: 2}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=7},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 5}, {id: "punch", lvl: 2}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=8},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 6}, {id: "punch", lvl: 2}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=9},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 6}, {id: "punch", lvl: 3}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=10},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 7}, {id: "punch", lvl: 3}, {id: "infinity", lvl: 1}]}
execute if entity @s[scores={DVZ.whispersong=11},nbt={SelectedItem:{tag:{Whispersong:1b}}}] run item replace entity @s weapon.mainhand with bow{CustomModelData: 803, display: {Name: '{"text":"Whispersong","color":"gold"}', Lore: ['[{"text":"Levels up with each kill you get."}]']}, Unbreakable: 1b, Whispersong: 1b, Enchantments: [{id: "power", lvl: 7}, {id: "punch", lvl: 3}, {id: "infinity", lvl: 1}]}