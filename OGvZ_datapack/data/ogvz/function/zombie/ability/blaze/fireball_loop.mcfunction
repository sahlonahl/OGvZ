#> Description: Tracks the lifetime of the fireball.

# Kill the fireball and exit the function if it's lifetime has reached 0.
execute as @s[scores={ogvz.blaze.fireball.lifetime.ticks=..0}] run return run kill @s

# Decrement the fireball's lifetime by 1.
scoreboard players remove @s ogvz.blaze.fireball.lifetime.ticks 1
