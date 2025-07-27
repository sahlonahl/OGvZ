#> Description: Gives the player only the zombie and skeleton variants spawn discs.

# Zombie variant (100%)
execute as @s at @s if score &ogvz ogvz.game.boss matches 1 run function ogvz:give/disc/zombie/zombie
execute as @s at @s if score &ogvz ogvz.game.boss matches 2 run function ogvz:give/disc/zombie/husk
execute as @s at @s if score &ogvz ogvz.game.boss matches 3 run function ogvz:give/disc/zombie/drowned
execute as @s at @s if score &ogvz ogvz.game.boss matches 4 run function ogvz:give/disc/zombie/vindicator

# Skeleton variant (100%)
execute as @s at @s if score &ogvz ogvz.game.boss matches 1 run function ogvz:give/disc/zombie/skeleton
execute as @s at @s if score &ogvz ogvz.game.boss matches 2 run function ogvz:give/disc/zombie/wither_skeleton
execute as @s at @s if score &ogvz ogvz.game.boss matches 3 run function ogvz:give/disc/zombie/guardian
execute as @s at @s if score &ogvz ogvz.game.boss matches 4 run function ogvz:give/disc/zombie/pillager
