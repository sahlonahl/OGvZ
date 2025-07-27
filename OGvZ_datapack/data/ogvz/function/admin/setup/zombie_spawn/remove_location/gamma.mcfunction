#> Description: Remove the zombie spawn gamma location.

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# Kill all zombie spawn gamma markers.
kill @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma]
kill @e[type=minecraft:item_display,tag=ogvz.item_display.zombie_spawn_seat.gamma]
kill @e[type=minecraft:block_display,tag=ogvz.block_display.zombie_spawn.gamma]
kill @e[type=minecraft:text_display,tag=ogvz.text_display.zombie_spawn.gamma]

# Store the new amount of zombie spawns into a scoreboard.
scoreboard players set &ogvz ogvz.game.zombie_spawn_count 0
execute as @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] run scoreboard players add &ogvz ogvz.game.zombie_spawn_count 1

# Play a sound to all admins.
execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

# Tell all admins which player removed the zombie spawn gamma location.
tellraw @a[tag=ogvz.admin] [ \
  "", \
  {text:"SETUP: ",bold:true,color:"red"}, \
  {"selector":"@s",color:"red"}, \
  {text:" removed the Zombie Spawn Location Gamma.",color:"red"} \
]
