#> Description: Gives the player enchanter summoning book transmutation items.

# Add a temporary scoreboard and store the amount of emeralds the player has into it.
scoreboard objectives add temp.emerald_count dummy
execute store result score @s temp.emerald_count run clear @s minecraft:emerald 0

# Display a fail message, remove the temporary scoreboard and return if the player doesn't have enough items.
execute unless entity @s[scores={temp.emerald_count=1..}] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"1 Emerald",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[scores={temp.emerald_count=1..}] run return run scoreboard objectives remove temp.emerald_count

# Remove a set amount of emeralds from the player.
clear @s minecraft:emerald 1

# Clear the global active item/ability cooldown.
scoreboard players set @s ogvz.rclick.cooldown 0

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound and show particles.
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 1
particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

# Give the player the transmutation items.
loot give @s loot ogvz:dwarf/summoning_book/enchanter

# Remove the temporary scoreboard.
scoreboard objectives remove temp.emerald_count
