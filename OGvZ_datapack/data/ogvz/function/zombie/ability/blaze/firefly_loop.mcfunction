#> Description: Loop for making the player fly.

# Check if the player can be teleported forward without clipping into solid blocks.
execute positioned ^ ^ ^0.8 unless block ~-0.3 ~ ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~-0.3 ~ ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~ ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~ ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~-0.3 ~0.9 ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~-0.3 ~0.9 ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~0.9 ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~0.9 ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~-0.3 ~1.8 ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~-0.3 ~1.8 ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~1.8 ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~1.8 ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop

# Teleport the player forward.
tp @s ^ ^ ^0.8

# Show flame particles.
execute at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10

# Decrement the flight duration scoreboard by 1.
scoreboard players remove @s ogvz.blaze.firefly.duration.ticks 1

# Repeat the loop until flight duration is 0.
execute as @s[scores={ogvz.blaze.firefly.duration.ticks=0}] at @s run function ogvz:zombie/ability/blaze/firefly_stop
