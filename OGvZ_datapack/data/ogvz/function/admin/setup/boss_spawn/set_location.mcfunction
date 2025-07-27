#> Description: Sets the boss spawn location.

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# Kill all boss spawn markers.
kill @e[type=minecraft:block_display,tag=ogvz.block_display.boss_spawn]
kill @e[type=minecraft:marker,tag=ogvz.marker.boss_spawn]

# Force load the chunk.
forceload add ~ ~

# Summon a boss spawn marker.
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.boss_spawn","ogvz.kill_on_reload"]}

# Summon a boss spawn display marker.
execute at @s align xyz positioned ~0.25 ~0.25 ~0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["ogvz.block_display.boss_spawn","ogvz.kill_on_reload"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{ \
    Name:"minecraft:end_portal_frame", \
    Properties:{eye:"true"} \
  } \
}

# Play a sound to all admins.
execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

# Tell all admins which player set the boss spawn location.
tellraw @a[tag=ogvz.admin] [ \
  "", \
  {text:"SETUP: ",bold:true,color:"light_purple"}, \
  {"selector":"@s",color:"light_purple"}, \
  {text:" set a Boss Spawn Location.",color:"light_purple"} \
]
