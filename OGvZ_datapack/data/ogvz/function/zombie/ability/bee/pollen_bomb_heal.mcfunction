#> Description: Heals nearby zombies and tracks the pollen bomb's lifetime.

# Return if the marker is still riding the splash potion.
execute on vehicle run return 0

# Show particles around at the edges of the healing zone
execute as @s at @s run function ogvz:zombie/ability/bee/pollen_bomb_particles

# If the heal cooldown has reached 0, heal all nearby zombie, show a heart particle above their heads and reset the cooldown.
execute as @s[scores={ogvz.marker.pollen_bomb.heal_cooldown.ticks=..0}] run effect give @a[tag=ogvz.zombie,distance=..4] minecraft:instant_health 1 0 true
execute as @s[scores={ogvz.marker.pollen_bomb.heal_cooldown.ticks=..0}] at @a[tag=ogvz.zombie,distance=..4] run particle minecraft:heart ~ ~2 ~ 0 0 0 0 1
scoreboard players set @s[scores={ogvz.marker.pollen_bomb.heal_cooldown.ticks=..0}] ogvz.marker.pollen_bomb.heal_cooldown.ticks 50

# Decrement the heal cooldown.
scoreboard players remove @s ogvz.marker.pollen_bomb.heal_cooldown.ticks 1

# If the lifetime scoreboard has reached 0, kill the pollen bomb marker and return.
execute as @s[scores={ogvz.marker.pollen_bomb.lifetime.ticks=..0}] run return run kill @s

# Decrement the lifetime marker.
scoreboard players remove @s ogvz.marker.pollen_bomb.lifetime.ticks 1
