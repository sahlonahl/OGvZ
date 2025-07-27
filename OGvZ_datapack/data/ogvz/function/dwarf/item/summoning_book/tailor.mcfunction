# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: tailor
# Function Name: ogvz:dwarf/book/tailor
# File Purpose: Gives the player Tailor book transmutation items.
# Created By: ropeFullOfHope
# 
# Created On: 2024.01.02
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

scoreboard objectives add temp.dye_count dummy

execute store result score @s temp.dye_count run clear @s #ogvz:dye 0
execute unless entity @s[scores={temp.dye_count=10..}] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"10 Dyes",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[scores={temp.dye_count=10..}] run return run scoreboard objectives remove temp.dye_count

execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"30 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=30..] run return run scoreboard objectives remove temp.dye_count

clear @s #ogvz:dye 10

# Remove 30 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 30

title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1 1

particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

loot give @s loot ogvz:dwarf/summoning_book/tailor

scoreboard objectives remove temp.dye_count