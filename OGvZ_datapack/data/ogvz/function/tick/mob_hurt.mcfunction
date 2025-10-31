#> Description: This function plays a sound when monster players get hurt

# skelton variants
execute as @a[tag=ogvz.zombie.class.skeleton_variant.skeleton,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.skeleton.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.skeleton_variant.wither_skeleton,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.wither_skeleton.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.skeleton_variant.guardian,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.guardian.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.skeleton_variant.pillager,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.pillager.hurt player @a ~ ~ ~ 1

# zombie variants
execute as @a[tag=ogvz.zombie.class.zombie_variant.zombie,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.zombie.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.zombie_variant.husk,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.husk.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.zombie_variant.drowned,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.drowned.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.zombie_variant.vindicator,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.vindicator.hurt player @a ~ ~ ~ 1

# monsters in alphabetical order (spacing is for legibility)
execute as @a[tag=ogvz.zombie.class.bee,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.bee.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.blaze,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.chicken_nugget,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.chicken.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.chillager,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.illusioner.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.creeper,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.creeper.hurt player @a ~ ~ ~ 1

execute as @a[tag=ogvz.zombie.class.enderman,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.enderman.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.golem,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.hoglin,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.hoglin.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.ocelot,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.ocelot.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.phantom,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.phantom.hurt player @a ~ ~ ~ 1

execute as @a[tag=ogvz.zombie.class.piglin,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.piglin.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.silverfish,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.silverfish.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.snowman,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.snow_golem.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.spider,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.spider.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.wolf,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.wolf.hurt player @a ~ ~ ~ 1

# minibosses
execute as @a[tag=ogvz.zombie.class.ghast,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.ghast.hurt player @a ~ ~ ~ 1
execute as @a[tag=ogvz.zombie.class.johnny,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.vindicator.hurt player @a ~ ~ ~ 1 0.7
execute as @a[tag=ogvz.zombie.class.ravager,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.ravager.hurt player @a ~ ~ ~ 1
