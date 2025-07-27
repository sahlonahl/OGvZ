#> Description: Counts how long a game lasts in ticks.

# Increment timer if game has started, but not yet ended.
execute if score &ogvz ogvz.game.phase matches 1..5 run scoreboard players add &ogvz ogvz.game.timer 1
