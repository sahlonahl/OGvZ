#> Description: Give mana to all other non-hero dwarves.

# Display a fail message and return if the item is on a cooldown.
execute if entity @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Dwarven Ruby]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=1..}] run return 0

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {text:"[Dwarven Ruby]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"30 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=30..] run return 0

# Remove 30 mana (levels) from the player.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 30

# Set the cooldown.
scoreboard players set @s ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds 60

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Dwarven Ruby]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound at the hero and at every other non-hero dwarf.
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 4 1 0
execute as @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 2 1

# Builders receive 50 mana, non-builders receive 100 mana, heroes don't get any mana.
scoreboard players add @a[tag=ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero] ogvz.dwarf.mana_buildup.mana 50
scoreboard players add @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero] ogvz.dwarf.mana_buildup.mana 100
