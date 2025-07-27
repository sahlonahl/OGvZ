#> Description: Initializes the boss phase.

# Set the game phase to 4 - Zombie phase.
scoreboard players set &ogvz ogvz.game.phase 4

# Display a seperate message to dwarves and zombies.
tellraw @a[tag=ogvz.dwarf] [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"The ",color:"gold"}, \
  {text:"Zombies",color:"gold",bold:true}, \
  {text:" are launching an attack!\n",color:"gold"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Protect the ",color:"gold"}, \
  {text:"Shrine",color:"gold",bold:true}, \
  {text:" at all costs!",color:"gold"} \
]
tellraw @a[tag=ogvz.zombie] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"Attack the dwarven keep!\n",color:"light_purple"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"Destroy the ",color:"light_purple"}, \
  {text:"Shrine",color:"light_purple",bold:true}, \
  {text:"!",color:"light_purple"} \
]

# Make the shrine health bossbar visible.
bossbar set ogvz:shrine_health visible true

# Give all the dead zombies spawn discs.
execute as @a[tag=ogvz.zombie,tag=!ogvz.zombie.class] at @s run function ogvz:zombie/give_discs
