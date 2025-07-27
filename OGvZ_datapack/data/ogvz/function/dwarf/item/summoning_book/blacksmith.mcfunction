# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: blacksmith
# Function Name: ogvz:dwarf/book/blacksmith
# File Purpose: Gives the player Blacksmith book transmutation items.
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

scoreboard objectives add temp.clock_count dummy

execute store result score @s temp.clock_count run clear @s minecraft:clock 0
execute unless entity @s[scores={temp.clock_count=4..}] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"4 Clocks",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[scores={temp.clock_count=4..}] run return run scoreboard objectives remove temp.clock_count

execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"30 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=30..] run return run scoreboard objectives remove temp.clock_count

clear @s minecraft:clock 4

# Remove 30 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 30

title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

playsound minecraft:block.smithing_table.use player @a ~ ~ ~ 1 1

particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

loot give @s loot ogvz:dwarf/summoning_book/blacksmith

scoreboard objectives remove temp.clock_count