#> Description: Gives the player a legendary item from a legendary book

# Add a temporary scoreboard and store the amount of legendary shards the player has into it.
scoreboard objectives add temp.legendary_count dummy
execute store result score @s temp.legendary_count run clear @s minecraft:poisonous_potato[minecraft:custom_data={legendary_shard:1}] 0

# Display a fail message, remove the temporary scoreboard and return if the player has already used a legendary book.
execute if entity @s[tag=dwarf.used.legendary] run title @s actionbar [ \
  "", \
  {text:"[Legendary Book]",bold:true,color:"red"}, \
  {text:" You have already used a ",color:"red"}, \
  {text:"Legendary Book",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute if entity @s[tag=dwarf.used.legendary] run return run scoreboard objectives remove temp.legendary_count

# Display a fail message, remove the temporary scoreboard and return if the player doesn't have enough items.
execute unless entity @s[scores={temp.legendary_count=5..}] run title @s actionbar [ \
  "", \
  {text:"[Legendary Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"5 legendary shards",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[scores={temp.legendary_count=5..}] run return run scoreboard objectives remove temp.legendary_count

# Remove a set amount of legendary shards from the player.
clear @s minecraft:poisonous_potato[minecraft:custom_data={legendary_shard:1}] 5

# Remove the players Legendary Book
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:3006}] 1

# Clear the global active item/ability cooldown.
scoreboard players set @s ogvz.rclick.cooldown 0

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Legendary Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound and show particles.
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 1 1
particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 0 10

# Give the player the transmutation items.
execute as @s[tag=ogvz.dwarf.class.builder] run loot give @s loot ogvz:dwarf/legendary_book/builder
execute as @s[tag=ogvz.dwarf.class.blacksmith] run loot give @s loot ogvz:dwarf/legendary_book/blacksmith
execute as @s[tag=ogvz.dwarf.class.tailor] run loot give @s loot ogvz:dwarf/legendary_book/tailor
execute as @s[tag=ogvz.dwarf.class.baker] run loot give @s loot ogvz:dwarf/legendary_book/baker
execute as @s[tag=ogvz.dwarf.class.alchemist] run loot give @s loot ogvz:dwarf/legendary_book/alchemist
execute as @s[tag=ogvz.dwarf.class.enchanter] run loot give @s loot ogvz:dwarf/legendary_book/enchanter

# Give the player a tag to mark that they've already used a legendary book
tag @s add dwarf.used.legendary

# Remove the temporary scoreboard.
scoreboard objectives remove temp.legendary_count

