#> Description: Deal damage to players around the snowball barrage.

# Return if the area effect cloud is still riding the snowball.
execute on vehicle run return 0

# Tag the player that threw the snowball.
execute on origin run tag @s add temp.origin

# Deal snowball type damage to all nearby players.
# Damage is reduced for zombie players.
execute positioned ~-1.3 ~-2.5 ~-1.3 as @a[dx=1.0,dy=1.6,dz=1.0] run damage @s[tag=ogvz.dwarf] 12 ogvz:snowball by @p[tag=temp.origin]
execute positioned ~-1.3 ~-2.5 ~-1.3 as @a[dx=1.0,dy=1.6,dz=1.0] run damage @s[tag=ogvz.zombie] 1.2 ogvz:snowball by @p[tag=temp.origin]

# Remove the temporary tag.
execute on origin run tag @s remove temp.origin

# Kill the area effect cloud.
kill @s
