#> Description: Initializes the game over phase.

# Set the game phase to 6 - Game over phase.
scoreboard players set &ogvz ogvz.game.phase 6

# Display a different message depending on how the game was ended.
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] run tellraw @a[tag=ogvz.joined_game] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",color:"light_purple",bold:true}, \
  {text:"The ",color:"light_purple"}, \
  {text:"Shrine",color:"light_purple",bold:true}, \
  {text:" has been destroyed!\n",color:"light_purple"}, \
  {text:"▶ ",color:"light_purple",bold:true}, \
  {text:"The dwarven keep has fallen! ",color:"light_purple"} \
]
execute unless entity @e[type=minecraft:player,tag=ogvz.dwarf] run tellraw @a[tag=ogvz.joined_game] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"The last ",color:"light_purple"}, \
  {text:"Dwarf",color:"light_purple",bold:true}, \
  {text:" has perished!\n",color:"light_purple"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"The dwarven keep has fallen! ",color:"light_purple"} \
]

# Create a temporary scoreboard and set it to 1200 (60 seconds in a minute * 20 ticks in a second = 1200 ticks in a minute).
scoreboard objectives add temp.const.1200 dummy
scoreboard players set &ogvz temp.const.1200 1200

# Calcualte the amount of time that passed since the game has started in minutes.
scoreboard objectives add temp.timer.minutes dummy
scoreboard players operation &ogvz temp.timer.minutes = &ogvz ogvz.game.timer
scoreboard players operation &ogvz temp.timer.minutes /= &ogvz temp.const.1200

# Display the game statistics.
execute unless entity @e[type=minecraft:player,tag=ogvz.dwarf] run tellraw @a [ \
  "", \
  {text:"Game Statistics",color:"gray",bold:true}, \
  {text:":\n",color:"gray"}, \
  {text:"- Game Time: ",color:"gray"}, \
  {score:{name:"&ogvz",objective:"temp.timer.minutes"}}, \
  {text:" minutes"}, \
]

# Remove temporary scoreboards.
scoreboard objectives remove temp.timer.minutes
scoreboard objectives remove temp.const.1200

# Replace the gold blocks on the shrine with gilded blackstone.
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] run setblock ~ ~ ~ minecraft:gilded_blackstone

# Kill the shrine marker.
kill @e[type=minecraft:marker,tag=ogvz.marker.shrine]
