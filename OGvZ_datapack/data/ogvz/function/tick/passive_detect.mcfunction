#> Description: Handles the effects of all passive items.
#> Comment: All passive items are retextured carrot on a stick. Scoreboards are updated in ogvz:misc/inventory_check.

### Non-passive items
# Lava Bucket
execute as @s[tag=!ogvz.admin,scores={ogvz.inventory.lava_bucket=1..}] at @s run function ogvz:misc/lava_bucket

### Admin tools
execute as @s[tag=ogvz.admin,scores={ogvz.inventory.shrine_tape_measure=1..}] at @s run function ogvz:admin/setup/shrine_tape_measure

### Discs


### Dwarf items


### Dwarf hero items


### Dwarf legendary items


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

