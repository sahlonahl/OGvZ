# -------------------------------------------
# Called By: dvz:tick
# File Name: mob_hurt
# File Purpose: Makes the appropriate hurt sound for a mob
# Created By: Zaffre
# 
# Created On: 2022.01.18
# Last Modified On: 2023.03.08
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @a[tag=ghast,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.ghast.hurt player @a ~ ~ ~ 1
execute as @a[tag=johnny,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.vindicator.hurt player @a ~ ~ ~ 1 0.7
execute as @a[tag=ravager,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.ravager.hurt player @a ~ ~ ~ 1

execute as @a[tag=bee,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.bee.hurt player @a ~ ~ ~ 1
execute as @a[tag=blaze,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1
execute as @a[tag=chillager,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.illusioner.hurt player @a ~ ~ ~ 1
execute as @a[tag=creeper,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.creeper.hurt player @a ~ ~ ~ 1
execute as @a[tag=enderman,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.enderman.hurt player @a ~ ~ ~ 1
execute as @a[tag=golem,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1
execute as @a[tag=ocelot,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.ocelot.hurt player @a ~ ~ ~ 1
execute as @a[tag=pig1,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.pig.hurt player @a ~ ~ ~ 1 1.5
execute as @a[tag=pig2,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.pig.hurt player @a ~ ~ ~ 1
execute as @a[tag=pig3,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.hoglin.hurt player @a ~ ~ ~ 1
execute as @a[tag=silverfish,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.silverfish.hurt player @a ~ ~ ~ 1
execute as @a[tag=skeleton,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.skeleton.hurt player @a ~ ~ ~ 1
execute as @a[tag=chicken,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.chicken.hurt player @a ~ ~ ~ 1
execute as @a[tag=phantom,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.phantom.hurt player @a ~ ~ ~ 1
execute as @a[tag=evoker,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.evoker.hurt player @a ~ ~ ~ 1
execute as @a[tag=piglin,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.piglin.hurt player @a ~ ~ ~ 1
execute as @a[tag=piglin_brute,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.piglin_brute.hurt player @a ~ ~ ~ 1
execute as @a[tag=endermite,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.endermite.hurt player @a ~ ~ ~ 1
execute as @a[tag=vex,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 1
execute as @a[tag=witch,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.witch.hurt player @a ~ ~ ~ 1
execute as @a[tag=zenchanter,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.cow.hurt player @a ~ ~ ~ 1
execute as @a[tag=magma_cube,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.magma_cube.hurt player @a ~ ~ ~ 1
execute as @a[tag=allay,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.allay.hurt player @a ~ ~ ~ 1
execute as @a[tag=bat,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.bat.hurt player @a ~ ~ ~ 1
execute as @a[tag=shulker,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.shulker.hurt player @a ~ ~ ~ 1
execute as @a[tag=slime,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.slime.hurt player @a ~ ~ ~ 1
execute as @a[tag=evoker,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.evoker.hurt player @a ~ ~ ~ 1

execute as @a[tag=witherskeleton,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.wither_skeleton.hurt player @a ~ ~ ~ 1
execute as @a[tag=zlguardian,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.guardian.hurt player @a ~ ~ ~ 1
execute as @a[tag=pillager,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.pillager.hurt player @a ~ ~ ~ 1

execute as @a[tag=snowman,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.snow_golem.hurt player @a ~ ~ ~ 1
execute as @a[tag=spider,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.spider.hurt player @a ~ ~ ~ 1
execute as @a[tag=wolf,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.wolf.hurt player @a ~ ~ ~ 1
execute as @a[tag=zombie,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.zombie.hurt player @a ~ ~ ~ 1

execute as @a[tag=husk,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.husk.hurt player @a ~ ~ ~ 1
execute as @a[tag=drowned,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.drowned.hurt player @a ~ ~ ~ 1
execute as @a[tag=vindicator,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.vindicator.hurt player @a ~ ~ ~ 1
