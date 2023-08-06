# -------------------------------------------
# Called By: dvz:tick
# File Name: detect
# File Purpose: Main branch for all right-click events and items
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.07.21
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Tests for and executes functions from right-clicking a retextured carrot on a stick 
# -------------------------------------------

execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1,Unbreakable:1b}}}] at @s run function dvz:barrieritemtest
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2,Unbreakable:1b}}}] at @s run function dvz:zombies/blaze/firefly
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3,Unbreakable:1b}}}] at @s run function dvz:dwarves/book
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4,Unbreakable:1b}}}] at @s run function dvz:zombies/enderman/portal
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5,Unbreakable:1b}}}] at @s run function dvz:zombies/enderman/pearl
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6,Unbreakable:1b}}}] at @s run function dvz:zombies/teleport
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7,Unbreakable:1b}}}] at @s run kill @s
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8,Unbreakable:1b}}}] at @s run function dvz:zombies/spawncheck
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9,Unbreakable:1b}}}] at @s run function dvz:dwarves/heros/dragonwarrior/flail
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10,Unbreakable:1b}}}] at @s run function dvz:zombies/creeper/explode
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11,Unbreakable:1b}}}] at @s run function dvz:zombies/ocelot/steal
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12,Unbreakable:1b}}}] at @s run function dvz:zombies/enderman/reinforce
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:13,Unbreakable:1b}}}] at @s run function dvz:dwarves/spawn
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:14,Unbreakable:1b}}}] at @s run function dvz:rightclick/zombie
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:15,Unbreakable:1b}}}] at @s run function dvz:rightclick/pigmanbuilder
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16,Unbreakable:1b}}}] at @s run function dvz:rightclick/creeperbaker
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:17,Unbreakable:1b}}}] at @s run function dvz:rightclick/skeleton
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:18,Unbreakable:1b}}}] at @s run function dvz:rightclick/spidersmith
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:19,Unbreakable:1b}}}] at @s run function dvz:rightclick/ocelotalch
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:20,Unbreakable:1b}}}] at @s run function dvz:rightclick/silverench
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:21,Unbreakable:1b}}}] at @s run function dvz:rightclick/wolftailor
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:22,Unbreakable:1b}}}] at @s run function dvz:zombies/blaze/fireball
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:23,Unbreakable:1b}}}] at @s run function dvz:dwarves/heros/dragonwarrior/potion
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:24,Unbreakable:1b}}}] at @s run function dvz:dwarves/heros/dragonwarrior/ruby
#execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:25,Unbreakable:1b}}}] at @s run function dvz:zombies/spider/poison
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:26,Unbreakable:1b}}}] at @s run function dvz:zombies/ocelot/disarm
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:27,Unbreakable:1b}}}] at @s run function dvz:dwarves/health
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:28,Unbreakable:1b}}}] at @s run function dvz:dwarves/strength
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:29,Unbreakable:1b}}}] at @s run function dvz:dwarves/jump
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:30,Unbreakable:1b}}}] at @s run function dvz:dwarves/speed
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:31,Unbreakable:1b}}}] at @s run function dvz:bosses/dragon/dragonbreath
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:32,Unbreakable:1b}}}] at @s run function dvz:bosses/dragon/worldcracker_start
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:33,Unbreakable:1b}}}] at @s run function dvz:rightclick/blaze
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:34,Unbreakable:1b}}}] at @s run function dvz:rightclick/enderman
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:35,Unbreakable:1b}}}] at @s run function dvz:zombies/silverfish/layegg
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36,Unbreakable:1b}}}] at @s run function dvz:zombies/silverfish/roarcheck
#execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:37,Unbreakable:1b}}}] at @s run function dvz:zombies/pigman/eat
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:38,Unbreakable:1b}}}] at @s run function dvz:dwarves/tools/pearl_rod
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:39,Unbreakable:1b}}}] at @s run function dvz:zombies/spider/web
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:40,Unbreakable:1b}}}] at @s run function dvz:bosses/assassin/kill
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:41,Unbreakable:1b}}}] at @s run function dvz:bosses/wither/witherskull
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:42,Unbreakable:1b}}}] at @s run function dvz:bosses/wither/masswither
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:43,Unbreakable:1b}}}] at @s run function dvz:bosses/guardian/beam
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:44,Unbreakable:1b}}}] at @s run function dvz:bosses/guardian/invisibility
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:45,Unbreakable:1b}}}] at @s run function dvz:dwarves/heros/witherwarrior/drain
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:46,Unbreakable:1b}}}] at @s run function dvz:dwarves/heros/witherwarrior/sunfury
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:47,Unbreakable:1b}}}] at @s run function dvz:dwarves/heros/dwarvenguard/rally
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:48,Unbreakable:1b}}}] at @s run function dvz:dwarves/heros/dwarvenguard/mindeye
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:49,Unbreakable:1b}}}] at @s run function dvz:dwarves/heros/dwarvenguard/beam
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:50,Unbreakable:1b}}}] at @s run function dvz:dwarves/heros/assassinslayer/regrowthstar
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:51,Unbreakable:1b}}}] at @s run function dvz:zombies/zlguardian/beam
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:52,Unbreakable:1b}}}] at @s run function dvz:zombies/snowman/snowball
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:53,Unbreakable:1b}}}] at @s run function dvz:zombies/chillager/ice
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:54,Unbreakable:1b}}}] at @s run function dvz:rightclick/snowman
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:55,Unbreakable:1b}}}] at @s run function dvz:rightclick/chillager
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:56,Unbreakable:1b}}}] at @s run function dvz:rightclick/golem
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:57,Unbreakable:1b}}}] at @s run function dvz:zombies/golem/fissure
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:58,Unbreakable:1b}}}] at @s run function dvz:zombies/snowman/iceshard
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:59,Unbreakable:1b}}}] at @s run function dvz:rightclick/miniboss/ravager
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60,Unbreakable:1b}}}] at @s run function dvz:rightclick/miniboss/ghast
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:61,Unbreakable:1b}}}] at @s run function dvz:rightclick/miniboss/johnny
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:62,Unbreakable:1b}}}] at @s run function dvz:rightclick/bee
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:63,Unbreakable:1b}}}] at @s run function dvz:zombies/bee/honey
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:64,Unbreakable:1b}}}] at @s run function dvz:zombies/miniboss/fireball
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:65,Unbreakable:1b}}}] at @s run function dvz:zombies/miniboss/vindication
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:66,Unbreakable:1b}}}] at @s run function dvz:zombies/miniboss/smash
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:67,Unbreakable:1b}}}] at @s run function dvz:dwarves/tools/ez_fix_slab_test
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:68,Unbreakable:1b}}}] at @s run function dvz:rightclick/chicken
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:69,Unbreakable:1b}}}] at @s run function dvz:zombies/chicken/fly
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:70,Unbreakable:1b}}}] at @s run function dvz:zombies/enderman/portalground
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:71,Unbreakable:1b}}}] at @s run function dvz:rightclick/phantom
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:72,Unbreakable:1b}}}] at @s run function dvz:zombies/phantom/delirium
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11,Unbreakable:1b}}}] at @s run function dvz:zombies/phantom/steal
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:73,Unbreakable:1b}}}] at @s run function dvz:dwarves/tools/builder_wand
#execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:74,Unbreakable:1b}}}] at @s run function dvz:rightclick/evoker
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:75,Unbreakable:1b}}}] at @s run function dvz:zombies/leap
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:76,Unbreakable:1b}}}] at @s run function dvz:zombies/creeper/charge_boom
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:77,Unbreakable:1b}}}] at @s run function dvz:rightclick/zombie/drowned
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:78,Unbreakable:1b}}}] at @s run function dvz:rightclick/skeleton/zlguardian
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:79,Unbreakable:1b}}}] at @s run function dvz:zombies/evoker/summon
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:80,Unbreakable:1b}}}] at @s run function dvz:zombies/evoker/throw_spell
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:81,Unbreakable:1b}}}] at @s run function dvz:rightclick/piglin
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:82,Unbreakable:1b}}}] at @s run function dvz:rightclick/piglin_brute
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:83,Unbreakable:1b}}}] at @s run function dvz:rightclick/endermite
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:84,Unbreakable:1b}}}] at @s run function dvz:zombies/vex/etheral
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:85,Unbreakable:1b}}}] at @s run function dvz:zombies/vex/killer
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:86,Unbreakable:1b}}}] at @s run function dvz:rightclick/vex
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:87,Unbreakable:1b}}}] at @s run function dvz:zombies/vex/materialize
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:88,Unbreakable:1b}}}] at @s run function dvz:zombies/witch/brew_debuff
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:89,Unbreakable:1b}}}] at @s run function dvz:zombies/witch/brew_buff
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:90,Unbreakable:1b}}}] at @s run function dvz:zombies/witch/transmute
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:91,Unbreakable:1b}}}] at @s run function dvz:rightclick/witch
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:92,Unbreakable:1b}}}] at @s run function dvz:rightclick/zenchanter
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:93,Unbreakable:1b}}}] at @s run function dvz:zombies/enchanter/enchant_pulse
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:94,Unbreakable:1b}}}] at @s run function dvz:zombies/magma_cube/magma_throw
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:95,Unbreakable:1b}}}] at @s run function dvz:zombies/magma_cube/magma_explode
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:96,Unbreakable:1b}}}] at @s run function dvz:rightclick/magma_cube
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:97,Unbreakable:1b}}}] at @s run function dvz:zombies/allay/allay_fly
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:98,Unbreakable:1b}}}] at @s run function dvz:zombies/allay/allay_pick
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:99,Unbreakable:1b}}}] at @s run function dvz:rightclick/allay
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:100,Unbreakable:1b}}}] at @s run function dvz:zombies/allay/allay_drop
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:101,Unbreakable:1b}}}] at @s run function dvz:zombies/slime/slime_spit
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:102,Unbreakable:1b}}}] at @s run function dvz:zombies/slime/slime_bomb
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:103,Unbreakable:1b}}}] at @s run function dvz:zombies/slime/slime_explode
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:104,Unbreakable:1b}}}] at @s run function dvz:rightclick/slime
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:105,Unbreakable:1b}}}] at @s run function dvz:zombies/evoker/evoker_summon
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:106,Unbreakable:1b}}}] at @s run function dvz:zombies/evoker/evoker_bolt
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:107,Unbreakable:1b}}}] at @s run function dvz:zombies/evoker/evoker_ward
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:108,Unbreakable:1b}}}] at @s run function dvz:rightclick/evoker
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:109,Unbreakable:1b}}}] at @s run function dvz:zombies/slime/slime_detonate
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:110,Unbreakable:1b}}}] at @s run function dvz:rightclick/shulker
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:111,Unbreakable:1b}}}] at @s run function dvz:zombies/shulker/shulker_throwwall
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:112,Unbreakable:1b}}}] at @s run function dvz:zombies/shulker/shulker_throwtrap
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:113,Unbreakable:1b}}}] at @s run function dvz:zombies/shulker/shulker_throwbomb
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:114,Unbreakable:1b}}}] at @s run function dvz:rightclick/bat
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:115,Unbreakable:1b}}}] at @s run function dvz:zombies/bat/bat_scan
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:116,Unbreakable:1b}}}] at @s run function dvz:zombies/bat/bat_dark
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:117,Unbreakable:1b}}}] at @s run function dvz:zombies/piglin/detonate
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:118,Unbreakable:1b}}}] at @s run function dvz:zombies/piglin/detonate_single
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:119,Unbreakable:1b}}}] at @s run function dvz:zombies/piglin/refill
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1000,Unbreakable:1b}}}] at @s run function dvz:dwarves/yellowbook

execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{dSpawn:1b,Unbreakable:1b}}}] at @s run function dvz:setup/dspawnpoint
execute as @a[scores={DVZ.rclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{zSpawn:1b,Unbreakable:1b}}}] at @s run function dvz:setup/zspawnpoint

scoreboard players reset @a[scores={DVZ.rclick=1..}] DVZ.rclick

function dvz:rightclick/cooldown
