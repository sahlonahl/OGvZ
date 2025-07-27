#> Description: Decrements the punish timer for zombies.

# If the punish timer has reached 0, remove the punish tag and return.
execute as @s[scores={ogvz.zombie.punish_timer.ticks=..0}] run return run tag @s remove ogvz.zombie.punish

# Decrement the punish timer by 1.
scoreboard players remove @s ogvz.zombie.punish_timer.ticks 1
