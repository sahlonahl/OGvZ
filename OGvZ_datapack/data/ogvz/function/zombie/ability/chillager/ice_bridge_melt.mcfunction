#> Description: Tracks the ice lifetime and breaks it when it expires.

# Decrement the melt scoreboard.
scoreboard players remove @s ogvz.chillager.ice_bridge.ice_melt.ticks 1

# If the ice has been removed before melting, kill the ice marker.
execute unless block ~ ~ ~ minecraft:packed_ice run kill @s

# Return if the ice melt scoreboard hasn't reached 0 yet.
execute as @s[scores={ogvz.chillager.ice_bridge.ice_melt.ticks=1..}] run return 0

# If the melt timer has run out, replace the ice with air, play ice breaking sound, create ice break particles and kill the ice marker.
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:packed_ice destroy
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 1
kill @s
