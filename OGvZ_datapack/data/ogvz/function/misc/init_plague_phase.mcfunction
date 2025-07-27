#> Description: Initializes the plague phase.

# Set the game pahase to 3 - Plague phase.
scoreboard players set &ogvz ogvz.game.phase 3

# Make a random dwarf into a specific hero depending on which boss was chosen.
execute if score &ogvz ogvz.game.boss matches 1 as @r[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero] at @s run function ogvz:dwarf/disc/hero/dragon_warrior
execute if score &ogvz ogvz.game.boss matches 2 as @r[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero] at @s run function ogvz:dwarf/disc/hero/wither_warrior
execute if score &ogvz ogvz.game.boss matches 3 as @r[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero] at @s run function ogvz:dwarf/disc/hero/dwarven_guard
execute if score &ogvz ogvz.game.boss matches 4 as @r[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero] at @s run function ogvz:dwarf/disc/hero/assassin_slayer

# Create a temporary scoreboard that holds a constant number 100.
scoreboard objectives add temp.const.100 dummy
scoreboard players set &ogvz temp.const.100 100

# Create a temporary scoreboard that holds a constant number -1.
scoreboard objectives add temp.const.-1 dummy
scoreboard players set &ogvz temp.const.-1 -1

# Create a temporary scorebord and make it hold the number of currently active players.
scoreboard objectives add temp.total_player_count dummy
scoreboard players operation &ogvz temp.total_player_count = Dwarves ogvz.game.player_count
scoreboard players operation &ogvz temp.total_player_count += Zombies ogvz.game.player_count

# Create a temporary scoreboard and store the amount of dwarf players that need to be killed.
scoreboard objectives add temp.kill_dwarf_count dummy
scoreboard players set &ogvz temp.kill_dwarf_count 100
scoreboard players operation &ogvz temp.kill_dwarf_count -= &ogvz ogvz.game.zombie_players.percentage.min
scoreboard players operation &ogvz temp.kill_dwarf_count *= &ogvz temp.total_player_count
scoreboard players operation &ogvz temp.kill_dwarf_count /= &ogvz temp.const.100
scoreboard players operation &ogvz temp.kill_dwarf_count *= &ogvz temp.const.-1
scoreboard players operation &ogvz temp.kill_dwarf_count += Dwarves ogvz.game.player_count

# If at least one dwarf has to be killed, display a message to all players who joined the game that the plague is happening.
execute if score &ogvz temp.kill_dwarf_count matches 1.. run tellraw @a[tag=ogvz.joined_game] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"A deadly ",color:"light_purple"}, \
  {text:"Plague",color:"light_purple",bold:true}, \
  {text:" spreads through the dwarven keep.",color:"light_purple"} \
]

# Run a loop that tags the required number of dwarves to kill.
execute if score &ogvz temp.kill_dwarf_count matches 1.. run function ogvz:misc/init_plague_phase_loop

# Give short darkness to all plagued players. 
effect give @a[tag=ogvz.dwarf.plague] minecraft:darkness 2 0 true

# Fully heal all non-plagued dwarves.
effect give @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.plague] minecraft:instant_health 1 5 true

# Remove temporary scoreboards.
scoreboard objectives remove temp.const.100
scoreboard objectives remove temp.const.-1
scoreboard objectives remove temp.total_player_count
