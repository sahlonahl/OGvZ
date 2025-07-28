#> Description: Gives the player baker summoning book transmutation items.

# Add a temporary scoreboard and store the amount of clay bricks the player has into it.
scoreboard objectives add temp.brick_count dummy
execute store result score @s temp.brick_count run clear @s minecraft:brick 0

# Display a fail message, remove the temporary scoreboard and return if the player doesn't have enough items.
execute unless entity @s[scores={temp.brick_count=8..}] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"8 Bricks",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[scores={temp.brick_count=8..}] run return run scoreboard objectives remove temp.brick_count

# Display a fail message, remove the temporary scoreboard and return if the player doesn't have enough mana.
execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"30 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=30..] run return run scoreboard objectives remove temp.brick_count

# Remove a set amount of clay bricks from the player.
clear @s minecraft:brick 8

# Remove 30 mana (levels) from the player.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 30

# Clear the global active item/ability cooldown.
scoreboard players set @s ogvz.rclick.cooldown 0

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound and show particles.
playsound minecraft:entity.villager.work_shepherd player @a ~ ~ ~ 1 1
particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

# Give the player the transmutation items.
loot give @s loot ogvz:dwarf/summoning_book/baker

# Remove the temporary scoreboard.
scoreboard objectives remove temp.brick_count
