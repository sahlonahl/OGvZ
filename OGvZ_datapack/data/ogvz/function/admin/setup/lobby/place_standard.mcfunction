#> Description: Places the standard lobby.

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# Kill all lobby markers.
kill @e[type=minecraft:block_display,tag=ogvz.block_display.lobby]
kill @e[type=minecraft:marker,tag=ogvz.marker.lobby]

# Force load the chunk.
forceload add ~ ~

# Place the standard lobby template.
place template ogvz:lobby/standard ~-10 ~-2 ~-10

# Summon a lobby marker.
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.lobby","ogvz.kill_on_reload"]}

# Summon a lobby display marker.
execute at @s align xyz positioned ~0.25 ~0.25 ~0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["ogvz.block_display.lobby","ogvz.kill_on_reload"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{Name:"minecraft:sea_lantern"} \
}

# Set the lobby as the world spawn.
execute at @n[type=minecraft:marker,tag=ogvz.marker.lobby] run setworldspawn ~ ~ ~

# Teleport all non-admin players to the lobby.
execute at @n[type=minecraft:marker,tag=ogvz.marker.lobby] run tp @a[tag=!ogvz.admin] ~ ~ ~

# Play a sound to all admins.
execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

# Tell the admins which player placed the standard shrine.
tellraw @a[tag=ogvz.admin] [ \
  "", \
  {text:"SETUP: ",bold:true,color:"green"}, \
  {"selector":"@s",color:"green"}, \
  {text:" placed a Standard Lobby.",color:"green"} \
]
