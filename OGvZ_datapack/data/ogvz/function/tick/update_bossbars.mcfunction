#> Description: Handles which players can see the shrine and updates their values.
#> Note: Shrine health bossbar is handled by ogvz:tick/shrine_health.

# Make the bossbars visible to all players.
# This does not make them actually visible, it just makes it so all players are able to see them once they are made visible.
bossbar set ogvz:boss_timer players @a
bossbar set ogvz:ender_dragon_health players @a
bossbar set ogvz:assassin_health players @a
bossbar set ogvz:elder_guardian_health players @a

# Make the shrine health bossbar visible to all players near it during zombie and last stand phases.
execute if score &ogvz ogvz.game.phase matches 4..5 at @n[type=minecraft:marker,tag=ogvz.marker.shrine] run bossbar set ogvz:shrine_health players @a[distance=..8]

# Store the shrine health into the shrine health bossbar.
execute store result bossbar ogvz:shrine_health value run scoreboard players get &ogvz ogvz.game.shrine_health

# Store the current game time into the boss timer.
execute store result bossbar ogvz:boss_timer value run scoreboard players get &ogvz ogvz.game.timer
