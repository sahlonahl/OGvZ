#> Description: Spawns the ocean's pearl.

# Hide the custom bars for a bit.
scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

# Display a fail message and return if the item is on a cooldown.
execute if entity @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Ocean's Pearl]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarven_guard.oceans_pearl.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=1..}] run return 0

# Create a temporary scoreboard and set it to the number of active ocean's pearls.
scoreboard objectives add temp.oceans_pearl_count dummy
execute store result score @s temp.oceans_pearl_count if entity @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl]

# Display a fail message, remove the temporary scoreboard and return if there are a maximum number of pearls active.
execute if entity @s[scores={temp.oceans_pearl_count=2..}] run title @s actionbar [ \
  "", \
  {text:"[Ocean's Pearl]",bold:true,color:"red"}, \
  {text:" You can have a maximum of ",color:"red"}, \
  {text:"2",bold:true,color:"red"}, \
  {text:" ocean's pearls active at once!",color:"red"} \
]
execute if entity @s[scores={temp.oceans_pearl_count=2..}] run return run scoreboard objectives remove temp.oceans_pearl_count

# Remove the temporary scoreboard.
scoreboard objectives remove temp.oceans_pearl_count

# Display a fail message and return if the player is too close to another ocean's pearl.
execute positioned ~ ~2.5 ~ if entity @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl,distance=..12] run title @s actionbar [ \
  "", \
  {text:"[Ocean's Pearl]",bold:true,color:"red"}, \
  {text:" You are too close to another ocean's pearl!",color:"red"} \
]
execute positioned ~ ~2.5 ~ if entity @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl,distance=..12] run return 0

# Display a fail message and return if there is not enough room to spawn an ocean's pearl.
execute unless block ~ ~2.5 ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Ocean's Pearl]",bold:true,color:"red"}, \
  {text:" There is not enough space!",color:"red"} \
]
execute unless block ~ ~2.5 ~ #ogvz:go_through run return 0

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=50..] run title @s actionbar [ \
  "", \
  {text:"[Ocean's Pearl]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"50 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=50..] run return 0

# Remove 50 mana (levels) from the player.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 50

# Set the cooldown.
scoreboard players set @s ogvz.dwarven_guard.oceans_pearl.cooldown.seconds 30

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Ocean's Pearl]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound and show particles at the summoned ocean's pearl
execute positioned ~ ~2.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.conduit.activate player @a ~ ~ ~ 3 1
execute positioned ~ ~2.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:nautilus ~ ~1.5 ~ 0 0 0 1 30 normal

# Summons an item display to represent the Ocean's Pearl.
execute positioned ~ ~2.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {teleport_duration:3,Tags:["ogvz.item_display","ogvz.item_display.oceans_pearl","ogvz.kill_on_reload"],item:{id:"minecraft:heart_of_the_sea",count:1,components:{"minecraft:item_model":"ogvz:oceans_pearl"}}}

# Summons an invisible, silent, no AI slime used as a hitbox for the Ocean's Pearl. It starts at 1/16th size, because invisibility kicks in a few ticks later.
execute positioned ~ ~2.5 ~ align xyz positioned ~0.5 ~0.11 ~0.5 run summon minecraft:slime ~ ~ ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:40f,Tags:["ogvz.oceans_pearl_hitbox","ogvz.oceans_pearl_hitbox.resize","ogvz.kill_on_reload"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:regeneration",amplifier:2,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:40},{id:"minecraft:scale",base:0.0}]}

# Resize the slime 5 ticks later.
schedule function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl_resize_hitbox 5t append
