#> Description: Sets the day time based on a timer scoreboard.

# Return and set the time to midnight if the time would be set past midnight.
execute if score &ogvz ogvz.game.timer matches 51001.. run return run time set midnight

# Create temporary scoreboards.
scoreboard objectives add temp.timer dummy
scoreboard objectives add temp.const.3 dummy

# Set the temp.timer scoreboard to [ogvz.game.timer / 3 + 1000].
scoreboard players set &ogvz temp.const.3 3
scoreboard players operation &ogvz temp.timer = &ogvz ogvz.game.timer
scoreboard players operation &ogvz temp.timer /= &ogvz temp.const.3
scoreboard players add &ogvz temp.timer 1000

# Store the scoreboard into storage.
execute store result storage ogvz:time ticks int 1 run scoreboard players get &ogvz temp.timer

# Set time with a macro, using the value stored in storage.
function ogvz:macro/time_set_ticks with storage ogvz:time

# Remove temporary scoreboards.
scoreboard objectives remove temp.timer
scoreboard objectives remove temp.const.3
