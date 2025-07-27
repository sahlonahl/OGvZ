#> Description: Gives the player the zombie spawn discs.

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

# Common class (40%)
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.40} run function ogvz:give/disc/zombie/creeper
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.40} run function ogvz:give/disc/zombie/spider

# Uncommon class (15%)
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function ogvz:give/disc/zombie/bee
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function ogvz:give/disc/zombie/blaze
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function ogvz:give/disc/zombie/chicken_nugget
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function ogvz:give/disc/zombie/chillager
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function ogvz:give/disc/zombie/ocelot
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function ogvz:give/disc/zombie/phantom
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function ogvz:give/disc/zombie/snowman
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function ogvz:give/disc/zombie/wolf

# Rare class (5%)
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.05} run function ogvz:give/disc/zombie/piglin
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.05} run function ogvz:give/disc/zombie/silverfish

# Legendary class (1%)
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.01} run function ogvz:give/disc/zombie/enderman
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.01} run function ogvz:give/disc/zombie/golem
