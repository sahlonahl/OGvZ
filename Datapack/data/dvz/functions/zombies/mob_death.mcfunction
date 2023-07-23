# -------------------------------------------
# Called By: dvz:tick
# File Name: mob_death
# File Purpose: Makes the appropriate death sound for a mob
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

execute as @a[tag=ghast,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.ghast.death player @a ~ ~ ~ 1
execute as @a[tag=johnny,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.vindicator.death player @a ~ ~ ~ 1
execute as @a[tag=ravager,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.ravager.death player @a ~ ~ ~ 1

execute as @a[tag=bee,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.bee.death player @a ~ ~ ~ 1
execute as @a[tag=blaze,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1
execute as @a[tag=chillager,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.illusioner.death player @a ~ ~ ~ 1
execute as @a[tag=creeper,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.creeper.death player @a ~ ~ ~ 1
execute as @a[tag=enderman,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.enderman.death player @a ~ ~ ~ 1
execute as @a[tag=golem,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1
execute as @a[tag=ocelot,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.ocelot.death player @a ~ ~ ~ 1
execute as @a[tag=pig1,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.pig.death player @a ~ ~ ~ 1 1.5
execute as @a[tag=pig2,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.pig.death player @a ~ ~ ~ 1
execute as @a[tag=pig3,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.hoglin.death player @a ~ ~ ~ 1
execute as @a[tag=silverfish,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.silverfish.death player @a ~ ~ ~ 1
execute as @a[tag=skeleton,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.skeleton.death player @a ~ ~ ~ 1
execute as @a[tag=chicken,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.chicken.death player @a ~ ~ ~ 1 0.7
execute as @a[tag=phantom,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.phantom.death player @a ~ ~ ~ 1
execute as @a[tag=evoker,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.evoker.death player @a ~ ~ ~ 1
execute as @a[tag=piglin,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.piglin.death player @a ~ ~ ~ 1
execute as @a[tag=piglin_brute,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.piglin_brute.death player @a ~ ~ ~ 1
execute as @a[tag=endermite,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.endermite.death player @a ~ ~ ~ 1
execute as @a[tag=vex,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.vex.death player @a ~ ~ ~ 1
execute as @a[tag=witch,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.witch.death player @a ~ ~ ~ 1
execute as @a[tag=zenchanter,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.cow.death player @a ~ ~ ~ 1
execute as @a[tag=magma_cube,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.magma_cube.death player @a ~ ~ ~ 1
execute as @a[tag=allay,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.allay.death player @a ~ ~ ~ 1
execute as @a[tag=shulker,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.shulker.death player @a ~ ~ ~ 1
execute as @a[tag=bat,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.bat.death player @a ~ ~ ~ 1
execute as @a[tag=slime,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.slime.death player @a ~ ~ ~ 1
execute as @a[tag=evoker,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.evoker.death player @a ~ ~ ~ 1

execute as @a[tag=witherskeleton,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.wither_skeleton.death player @a ~ ~ ~ 1
execute as @a[tag=zlguardian,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1
execute as @a[tag=pillager,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.pillager.death player @a ~ ~ ~ 1

execute as @a[tag=snowman,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.snow_golem.death player @a ~ ~ ~ 1
execute as @a[tag=spider,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.spider.death player @a ~ ~ ~ 1
execute as @a[tag=wolf,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.wolf.death player @a ~ ~ ~ 1
execute as @a[tag=zombie,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.zombie.death player @a ~ ~ ~ 1

execute as @a[tag=husk,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.husk.death player @a ~ ~ ~ 1
execute as @a[tag=drowned,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.drowned.death player @a ~ ~ ~ 1
execute as @a[tag=vindicator,scores={DVZ.death=1..}] at @s run playsound minecraft:entity.vindicator.death player @a ~ ~ ~ 1
