#> Description: Handles the effects of all passive items.
#> Comment: All passive items are retextured carrot on a stick.
#> Scoreboards are updated in ogvz:misc/inventory_check.

### Non-passive items
# Lava Bucket
execute as @s[tag=!ogvz.admin,scores={ogvz.inventory.lava_bucket=1..}] at @s run function ogvz:misc/lava_bucket

### Admin tools
execute as @s[tag=ogvz.admin,scores={ogvz.inventory.shrine_tape_measure=1..}] at @s run function ogvz:admin/setup/shrine_tape_measure

### Discs


### Dwarf items


### Dwarf hero items


### Dwarf legendary items
# if player has one legend item of any type give check score
execute if score @s ogvz.inventory.legend matches 1 as @s[tag=ogvz.dwarf,scores={ogvz.inventory.legend.check=0}] at @s run scoreboard players set @s ogvz.inventory.legend.check 1
# if player got rid of their legend items, remove effects and reset check score
execute if score @s ogvz.inventory.legend matches 0 as @s[tag=ogvz.dwarf,scores={ogvz.inventory.legend.check=1}] at @s run effect clear @s
execute if score @s ogvz.inventory.legend matches 0 as @s[tag=ogvz.dwarf,scores={ogvz.inventory.legend.check=1}] at @s run scoreboard players set @s ogvz.inventory.legend.check 0

# berzerkers axe
execute if score @s ogvz.inventory.legend matches 1 as @s[tag=ogvz.dwarf,scores={ogvz.inventory.berzerker=1..}] at @s run effect give @s speed 2 1 true
# excalibur
execute if score @s ogvz.inventory.legend matches 1 as @s[tag=ogvz.dwarf,scores={ogvz.inventory.excalibur=1..}] at @s run effect give @s health_boost 2 0 true
# warrior helmet
execute if score @s ogvz.inventory.legend matches 1 as @s[tag=ogvz.dwarf,scores={ogvz.inventory.warrior_helm=1..},nbt={equipment:{head:{id:"minecraft:iron_helmet"}}}] at @s run effect give @s strength 2 1 true
# Boots of the Traveller
execute if score @s ogvz.inventory.legend matches 1 as @s[tag=ogvz.dwarf,scores={ogvz.inventory.traveller_boots=1..},nbt={equipment:{feet:{id:"minecraft:iron_boots"}}}] at @s run effect give @s speed 2 1 true
# papaya
execute if score @s ogvz.inventory.legend matches 1 as @s[tag=ogvz.dwarf,scores={ogvz.inventory.papaya=1..}] at @s run effect give @s saturation 2 1 true

### Zombie abilities
# Zombie variants
execute as @s[tag=ogvz.zombie.class.zombie_variant,scores={ogvz.inventory.undying_bond=1..}] at @s run function ogvz:zombie/ability/zombie_variant/undying_bond
# Chicken Nugget
execute as @s[tag=ogvz.zombie.class.chicken_nugget,scores={ogvz.inventory.flutter=1..}] at @s run function ogvz:zombie/ability/chicken_nugget/flutter
# Phantom
execute as @s[tag=ogvz.zombie.class.phantom,scores={ogvz.phantom.used.firework_rocket=1..}] at @s run function ogvz:zombie/ability/phantom/firework_rocket
# Bee
execute as @s[tag=ogvz.zombie.class.bee,scores={ogvz.inventory.hover=1..}] at @s run function ogvz:zombie/ability/bee/hover
# Piglin
execute as @s[tag=ogvz.zombie.class.piglin,scores={ogvz.piglin.used.golden_pickaxe=1..}] at @s run function ogvz:zombie/ability/piglin/evolution
# Aquatic zombies
execute as @s[tag=ogvz.zombie.aquatic,scores={ogvz.inventory.sharing_grace=1..}] at @s run function ogvz:zombie/ability/aquatic/sharing_grace

### Zombie boss abilities


### Zombie nature given abilities


### Other

