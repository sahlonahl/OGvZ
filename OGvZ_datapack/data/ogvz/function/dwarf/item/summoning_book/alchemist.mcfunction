# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: alchemist
# Function Name: ogvz:dwarf/book/alchemist
# File Purpose: Gives the player Alchemist book transmutation items.
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

scoreboard objectives add temp.mundane_potion_count dummy

execute store result score @s temp.mundane_potion_count run clear @s minecraft:potion[minecraft:potion_contents="minecraft:mundane"] 0
execute unless entity @s[scores={temp.mundane_potion_count=3..}] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"3 Mundane Potions",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[scores={temp.mundane_potion_count=3..}] run return run scoreboard objectives remove temp.mundane_potion_count

execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"30 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=30..] run return run scoreboard objectives remove temp.mundane_potion_count

clear @s minecraft:potion[minecraft:potion_contents="minecraft:mundane"] 3

# Remove 30 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 30

title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

playsound minecraft:entity.husk.converted_to_zombie player @a ~ ~ ~ 1 1.5

particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

loot give @s loot ogvz:dwarf/summoning_book/alchemist

scoreboard objectives remove temp.mundane_potion_count