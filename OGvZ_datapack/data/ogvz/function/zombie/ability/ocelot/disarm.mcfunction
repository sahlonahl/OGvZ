#> Description: Apply weakness and mining fatigue to dwarves in front of the player.

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=45..] run title @s actionbar [ \
  "", \
  {text:"[Disarm]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"45 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=45..] run return 0

# Remove 45 mana (levels).
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 45

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Disarm]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.cat.hiss player @s ~ ~ ~ 1 1

# Tag all dwarves in a sphere 4 blocks ahead of you with a radius of 4 blocks.
execute positioned ^ ^ ^4 run tag @a[tag=ogvz.dwarf] add temp.hit

# Give all hit dwarves weakenss and mining fatigue.
effect give @a[tag=temp.hit] minecraft:weakness 10 0
effect give @a[tag=temp.hit] minecraft:mining_fatigue 10 0

# Play a sound and display a message to all dwarves affected.
execute as @a[tag=temp.hit] run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 1 1
title @a[tag=temp.hit] actionbar [ \
  "", \
  {text:"An Ocelot has disarmed you!",color:"red"} \
]

# Remove temporary tag.
tag @a remove temp.hit
