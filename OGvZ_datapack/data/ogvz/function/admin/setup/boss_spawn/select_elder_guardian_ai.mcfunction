#> Description: Select the ai elder guardian as the boss.

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# Set the boss to 3 - AI Elder Guardian
scoreboard players set &ogvz ogvz.game.boss 3

# Color the boss timer blue.
bossbar set ogvz:boss_timer color blue

# Play a sound to all admins.
execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

# Tell all admins which player selected the boss.
tellraw @a[tag=ogvz.admin] [ \
  "", \
  {text:"SETUP: ",bold:true,color:"light_purple"}, \
  {"selector":"@s",color:"light_purple"}, \
  {text:" selected the AI Elder Guardian boss.",color:"light_purple"} \
]
