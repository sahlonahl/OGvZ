# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: builder
# Function Name: ogvz:dwarf/book/builder
# File Purpose: Gives the player Builder book transmutation items.
# Created By: ropeFullOfHope
# 
# Created On: 2023.12.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={ogvz.builder.summoning_book.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.builder.summoning_book.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.builder.summoning_book.cooldown.seconds=1..}] run return 0

scoreboard players set @s ogvz.builder.summoning_book.cooldown.seconds 30

title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

playsound minecraft:ui.stonecutter.take_result player @a ~ ~ ~ 1 1

particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

loot give @s loot ogvz:dwarf/summoning_book/builder
