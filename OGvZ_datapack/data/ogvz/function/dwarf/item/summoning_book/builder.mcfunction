#> Description: Gives the player builder summoning book transmutation items.

# Display a fail message and return if the item is on a cooldown.
execute if entity @s[scores={ogvz.builder.summoning_book.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.builder.summoning_book.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.builder.summoning_book.cooldown.seconds=1..}] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.builder.summoning_book.cooldown.seconds 30

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound and show particles.
playsound minecraft:ui.stonecutter.take_result player @a ~ ~ ~ 1 1
particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

# Give the player the transmutation items.
loot give @s loot ogvz:dwarf/summoning_book/builder
