# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: enchanter
# Function Name: ogvz:dwarf/book/enchanter
# File Purpose: Gives the player Enchanter book transmutation items.
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

scoreboard objectives add temp.emerald_count dummy

execute store result score @s temp.emerald_count run clear @s minecraft:emerald 0
execute unless entity @s[scores={temp.emerald_count=1..}] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"1 Emerald",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[scores={temp.emerald_count=1..}] run return run scoreboard objectives remove temp.emerald_count

clear @s minecraft:emerald 1

title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 1

particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

loot give @s loot ogvz:dwarf/summoning_book/enchanter

scoreboard objectives remove temp.emerald_count