#> Description: Removes all attributes on a player.
#> Note: Also removes tags used to track certain attribute modifiers.

# Frozen custom effect
tag @s remove ogvz.attribute.frozen.movement_speed
attribute @s minecraft:movement_speed modifier remove ogvz.frozen.movement_speed
tag @s remove ogvz.attribute.frozen.jump_strength
attribute @s minecraft:movement_speed modifier remove ogvz.frozen.jump_strength

# Dolphin's grace nerf
tag @s remove ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency
attribute @s minecraft:water_movement_efficiency modifier remove ogvz.dolphins_grace_nerf.water_movement_efficiency

# Pearl rod - teleportation
attribute @s minecraft:movement_speed modifier remove ogvz.pearl_rod.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.pearl_rod.teleporting.jump_strength

# Dragon warrior - dragon form
attribute @s minecraft:attack_damage modifier remove ogvz.dragon_form.attack_damage
attribute @s minecraft:movement_speed modifier remove ogvz.dragon_form.movement_speed

# Spider - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.spider.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.spider.jump_strength
attribute @s minecraft:safe_fall_distance modifier remove ogvz.spider.safe_fall_distance

# Blaze - firefly
attribute @s minecraft:gravity modifier remove ogvz.blaze.firefly.gravity

# Chicken Nugget - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.chicken_nugget.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.chicken_nugget.jump_strength
attribute @s minecraft:fall_damage_multiplier modifier remove ogvz.chicken_nugget.fall_damage_multiplier

# Chillager - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.chillager.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.chillager.jump_strength
attribute @s minecraft:safe_fall_distance modifier remove ogvz.chillager.safe_fall_distance

# Ocelot - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.ocelot.movement_speed
attribute @s minecraft:fall_damage_multiplier modifier remove ogvz.ocelot.fall_damage_multiplier

# Phantom - base attributes
attribute @s minecraft:max_health modifier remove ogvz.phantom.max_health

# Wolf - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.wolf.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.wolf.jump_strength
attribute @s minecraft:safe_fall_distance modifier remove ogvz.wolf.safe_fall_distance

# Bee - base attributes
attribute @s minecraft:max_health modifier remove ogvz.bee.max_health
attribute @s minecraft:fall_damage_multiplier modifier remove ogvz.bee.fall_damage_multiplier

# Bee - hover attributes
attribute @s minecraft:gravity base reset
attribute @s minecraft:gravity modifier remove ogvz.bee.hover.ascend.gravity
attribute @s minecraft:gravity modifier remove ogvz.bee.hover.descend.gravity

# Piglin - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.piglin.movement_speed

# Hoglin - base attributes
attribute @s minecraft:max_health modifier remove ogvz.hoglin.max_health

# Silverfish - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.silverfish.movement_speed

# Enderman - creating portal attributes
attribute @s minecraft:movement_speed modifier remove ogvz.enderman.create_portal.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.enderman.create_portal.jump_strength

# Golem - base attributes
attribute @s minecraft:max_health modifier remove ogvz.golem.max_health
attribute @s minecraft:attack_damage modifier remove ogvz.golem.attack_damage
attribute @s minecraft:attack_speed modifier remove ogvz.golem.attack_speed
attribute @s minecraft:knockback_resistance modifier remove ogvz.golem.knockback_resistance
attribute @s minecraft:explosion_knockback_resistance modifier remove ogvz.golem.explosion_knockback_resistance
attribute @s minecraft:movement_speed modifier remove ogvz.golem.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.golem.jump_strength
attribute @s minecraft:fall_damage_multiplier modifier remove ogvz.golem.fall_damage_multiplier

# Ender Eye - teleportation
attribute @s minecraft:movement_speed modifier remove ogvz.ender_eye.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.ender_eye.teleporting.jump_strength
