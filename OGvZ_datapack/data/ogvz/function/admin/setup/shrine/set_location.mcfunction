#> Description: Set the shrine location.

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# Kill all shrine markers.
kill @e[type=minecraft:block_display,tag=ogvz.block_display.shrine]
kill @e[type=minecraft:marker,tag=ogvz.marker.shrine]
kill @e[type=minecraft:marker,tag=ogvz.marker.shrine_block]

# Force load the chunk.
forceload add ~ ~

# Summon a shrine marker.
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~ ~-1 ~ run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine","ogvz.kill_on_reload"]}

# Summon a shrine display marker.
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~-0.25 ~0.25 ~-0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["ogvz.block_display.shrine","ogvz.kill_on_reload"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{Name:"minecraft:gold_block"} \
}

# Place shrine block markers inside gold blocks. [top layer]
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-1 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-1 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-1 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}

# Place shrine block markers inside gold blocks. [bottom layer]
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-2 ~1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~-2 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~-2 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-2 ~-2 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-2 ~-2 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-2 ~-2 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-2 ~-2 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-2 ~1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}

# Play a sound to all admins.
execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

# Tell all admins which player set the shrine location.
tellraw @a[tag=ogvz.admin] [ \
  "", \
  {text:"SETUP: ",bold:true,color:"gold"}, \
  {"selector":"@s",color:"gold"}, \
  {text:" set a Shrine Location.",color:"gold"} \
]