#> Description: This function plays a sound when monster players get killed
#> Called by: player_death.mcfunction

# skelton variants
execute as @a[tag=ogvz.zombie.class.skeleton_variant.skeleton] at @s run playsound minecraft:entity.skeleton.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.skeleton_variant.wither_skeleton] at @s run playsound minecraft:entity.wither_skeleton.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.skeleton_variant.guardian] at @s run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.skeleton_variant.pillager] at @s run playsound minecraft:entity.pillager.death player @a ~ ~ ~ 1

# zombie variants
execute as @a[tag=ogvz.zombie.class.zombie_variant.zombie] at @s run playsound minecraft:entity.zombie.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.zombie_variant.husk] at @s run playsound minecraft:entity.husk.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.zombie_variant.drowned] at @s run playsound minecraft:entity.drowned.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.zombie_variant.vindicator] at @s run playsound minecraft:entity.vindicator.death player @a ~ ~ ~ 1

# monsters in alphabetical order (spacing is for legibility)
execute as @a[tag=ogvz.zombie.class.bee] at @s run playsound minecraft:entity.bee.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.blaze] at @s run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.chicken_nugget] at @s run playsound minecraft:entity.chicken.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.chillager] at @s run playsound minecraft:entity.illusioner.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.creeper] at @s run playsound minecraft:entity.creeper.death player @a ~ ~ ~ 1

execute as @a[tag=ogvz.zombie.class.enderman] at @s run playsound minecraft:entity.enderman.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.golem] at @s run playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.hoglin] at @s run playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.ocelot] at @s run playsound minecraft:entity.ocelot.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.phantom] at @s run playsound minecraft:entity.phantom.death player @a ~ ~ ~ 1

execute as @a[tag=ogvz.zombie.class.piglin] at @s run playsound minecraft:entity.hoglin.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.silverfish] at @s run playsound minecraft:entity.silverfish.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.snowman] at @s run playsound minecraft:entity.snow_golem.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.spider] at @s run playsound minecraft:entity.spider.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.wolf] at @s run playsound minecraft:entity.wolf.death player @a ~ ~ ~ 1

# minibosses
execute as @a[tag=ogvz.zombie.class.ghast] at @s run playsound minecraft:entity.ghast.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.johnny] at @s run playsound minecraft:entity.vindicator.death player @a ~ ~ ~ 1 0.7
execute as @a[tag=ogvz.zombie.class.ravager] at @s run playsound minecraft:entity.ravager.death player @a ~ ~ ~ 1
