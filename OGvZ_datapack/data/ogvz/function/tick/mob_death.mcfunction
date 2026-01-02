#> Description: This function plays a sound when monster players get killed
#> Called by: player_death.mcfunction

# skelton variants
execute as @a[tag=ogvz.zombie.class.skeleton_variant.skeleton,tag=ogvz.dead] at @s run playsound minecraft:entity.skeleton.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.skeleton_variant.wither_skeleton,tag=ogvz.dead] at @s run playsound minecraft:entity.wither_skeleton.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.skeleton_variant.guardian,tag=ogvz.dead] at @s run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.skeleton_variant.pillager,tag=ogvz.dead] at @s run playsound minecraft:entity.pillager.death player @a ~ ~ ~ 1

# zombie variants
execute as @a[tag=ogvz.zombie.class.zombie_variant.zombie,tag=ogvz.dead] at @s run playsound minecraft:entity.zombie.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.zombie_variant.husk,tag=ogvz.dead] at @s run playsound minecraft:entity.husk.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.zombie_variant.drowned,tag=ogvz.dead] at @s run playsound minecraft:entity.drowned.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.zombie_variant.vindicator,tag=ogvz.dead] at @s run playsound minecraft:entity.vindicator.death player @a ~ ~ ~ 1

# monsters in alphabetical order (spacing is for legibility)
execute as @a[tag=ogvz.zombie.class.bee,tag=ogvz.dead] at @s run playsound minecraft:entity.bee.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.blaze,tag=ogvz.dead] at @s run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.chicken_nugget,tag=ogvz.dead] at @s run playsound minecraft:entity.chicken.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.chillager,tag=ogvz.dead] at @s run playsound minecraft:entity.illusioner.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.creeper,tag=ogvz.dead] at @s run playsound minecraft:entity.creeper.death player @a ~ ~ ~ 1

execute as @a[tag=ogvz.zombie.class.enderman,tag=ogvz.dead] at @s run playsound minecraft:entity.enderman.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.golem,tag=ogvz.dead] run playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.hoglin,tag=ogvz.dead] run playsound minecraft:entity.hoglin.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.ocelot,tag=ogvz.dead] at @s run playsound minecraft:entity.ocelot.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.phantom,tag=ogvz.dead] at @s run playsound minecraft:entity.phantom.death player @a ~ ~ ~ 1

execute as @a[tag=ogvz.zombie.class.piglin,tag=ogvz.dead] at @s run playsound minecraft:entity.piglin.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.silverfish,tag=ogvz.dead] at @s run playsound minecraft:entity.silverfish.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.snowman,tag=ogvz.dead] at @s run playsound minecraft:entity.snow_golem.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.spider,tag=ogvz.dead] at @s run playsound minecraft:entity.spider.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.wolf,tag=ogvz.dead] at @s run playsound minecraft:entity.wolf.death player @a ~ ~ ~ 1

# minibosses
execute as @a[tag=ogvz.zombie.class.ghast,tag=ogvz.dead] at @s run playsound minecraft:entity.ghast.death player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.johnny,tag=ogvz.dead] at @s run playsound minecraft:entity.vindicator.death player @a ~ ~ ~ 1 0.7
execute as @a[tag=ogvz.zombie.class.ravager,tag=ogvz.dead] at @s run playsound minecraft:entity.ravager.death player @a ~ ~ ~ 1
