#> Description: Initializes the boss phase.

# Set the game phase to 5 - Last stand phase.
scoreboard players set &ogvz ogvz.game.phase 5

# Display a seperate message to dwarves and zombies.
tellraw @a[tag=ogvz.dwarf] [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"The ",color:"gold"}, \
  {text:"Shrine",color:"gold",bold:true}, \
  {text:" channels its remaining power into you!",color:"gold"} \
]
tellraw @a[tag=ogvz.zombie] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"Last ",color:"light_purple"}, \
  {text:"Dwarf",color:"light_purple",bold:true}, \
  {text:" standing!\n",color:"light_purple"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"The ",color:"light_purple"}, \
  {text:"Shrine's",color:"light_purple",bold:true}, \
  {text:" remaining power surges within them.",color:"light_purple"} \
]

# Tag the last dwarf alive, fully heal them and fully saturate them.
tag @a[tag=ogvz.dwarf] add ogvz.dwarf.last_dwarf
effect give @a[tag=ogvz.dwarf] minecraft:instant_health 1 5 true
effect give @a[tag=ogvz.dwarf] minecraft:saturation 1 20 true
