# -------------------------------------------
# Called By: dvz:begin
# File Name: spawn
# File Purpose: Gives all dwarves their "magama cream" spawn in item
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.07.29
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: 
# -------------------------------------------

effect clear @s
clear @s
gamemode survival @s
give @s carrot_on_a_stick{CustomModelData:13,Unbreakable:1b,display:{Name:'{"text":"Magma Cream","italic":"false"}',Lore:['[{"text":"You are a dwarf; your mission:"}]','[{"text":"Protect the shrine at all costs!"}]','[{"text":"Right click to begin!","color":"gold"}]']}}