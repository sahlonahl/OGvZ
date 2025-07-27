# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: baker
# Function Name: ogvz:dwarf/book/baker
# File Purpose: Gives the player Baker book transmutation items.
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

scoreboard objectives add temp.brick_count dummy

execute store result score @s temp.brick_count run clear @s minecraft:brick 0
execute unless entity @s[scores={temp.brick_count=8..}] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"8 Bricks",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[scores={temp.brick_count=8..}] run return run scoreboard objectives remove temp.brick_count

execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"30 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=30..] run return run scoreboard objectives remove temp.brick_count

clear @s minecraft:brick 8

# Remove 30 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 30

title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

playsound minecraft:entity.villager.work_shepherd player @a ~ ~ ~ 1 1

particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

loot give @s loot ogvz:dwarf/summoning_book/baker

scoreboard objectives remove temp.brick_count