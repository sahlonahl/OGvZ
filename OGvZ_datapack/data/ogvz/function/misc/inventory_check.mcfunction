#> Description: Checks for specific items the player possibly has in their inventory and stores the info into scoreboards.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/inventory_update

### Non-passive items
# Lava Bucket
execute as @s[tag=!ogvz.admin] store result score @s ogvz.inventory.lava_bucket run clear @s minecraft:lava_bucket 0

### Admin tools (1xxx)
execute as @s[tag=ogvz.admin] store result score @s ogvz.inventory.shrine_tape_measure run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{passive_id:1000}] 0

### Discs (2xxx)


### Dwarf items (3xxx)


### Dwarf hero items (4xxx)
# Dragon Warrior (40xx)
# Wither Warrior (41xx)
execute as @s[tag=ogvz.dwarf.class.hero.wither_warrior] store result score @s ogvz.inventory.soulstone run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{passive_id:4102}] 0
# Assassin Slayer (42xx)
# Dwarven Guard (43xx)

### Dwarf legendary items (5xxx)


### Zombie abilities (6xxx)
# Zombie variants (600x)
execute as @s[tag=ogvz.zombie.class.zombie_variant] store result score @s ogvz.inventory.undying_bond run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{passive_id:6000}] 0
# Zombie (601x)
# Husk (602x)
# Vindicator (603x)
# Drowned (604x)
# Skeleton variants (610x)
# Skeleton (611x)
# Wither skeleton (612x)
# Pillager (613x)
# Guardian (614x)
# Creeper (620x)
# Spider (621x)
# Blaze (630x)
# Chicken Nugget (631x)
execute as @s[tag=ogvz.zombie.class.chicken_nugget] store result score @s ogvz.inventory.flutter run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{passive_id:6310,disabled:0}] 0
# Chillager (632x)
# Ocelot (633x)
# Phantom (634x)
# Snowman (635x)
# Wolf (636x)
# Bee (637x)
execute as @s[tag=ogvz.zombie.class.bee] store result score @s ogvz.inventory.hover run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{passive_id:6370,disabled:0}] 0
# Piglin (640x)
execute as @s[tag=ogvz.zombie.class.piglin] store result score @s ogvz.inventory.evolution run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{passive_id:6400}] 0
# Silverfish (641x)
# Hoglin (651x)
# Enderman (660x)
# Golem (661x)
# Aquatic zombies (690x)
execute as @s[tag=ogvz.zombie.aquatic] store result score @s ogvz.inventory.sharing_grace run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{passive_id:6900}] 0

### Zombie boss abilities (7xxx)


### Zombie nature given abilities (8xxx)


### Other (9xxx)

