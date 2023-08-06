# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: cooldown
# File Purpose: resets scoreboard objectives related to all class items
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.09
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Uses a dual system to track ticks and seconds. Necessary because seconds are displayed in prompt messages, whereas ticks are the base minecraft time interval
# -------------------------------------------

###-Sorted in no particular order.
#Dwarf Closeportal
execute as @a[scores={DVZ.close.cool=1..}] run scoreboard players add @s DVZ.close.ticks 1
execute as @a[scores={DVZ.close.ticks=20..}] run scoreboard players remove @s DVZ.close.cool 1
execute as @a[scores={DVZ.close.ticks=20..}] run scoreboard players set @s DVZ.close.ticks 0
execute as @a[scores={DVZ.close.cool=..0}] run scoreboard players reset @s DVZ.close.ticks
#Dwarf EX FIX SLAB
execute as @a[scores={DVZ.slab.cool=1..}] run scoreboard players add @s DVZ.slab.ticks 1
execute as @a[scores={DVZ.slab.ticks=20..}] run scoreboard players remove @s DVZ.slab.cool 1
execute as @a[scores={DVZ.slab.ticks=20..}] run scoreboard players set @s DVZ.slab.ticks 0
execute as @a[scores={DVZ.slab.cool=..0}] run scoreboard players reset @s DVZ.slab.ticks
#Dwarf Pearl rod
execute as @a[scores={DVZ.prod.cool=1..}] run scoreboard players add @s DVZ.prod.ticks 1
execute as @a[scores={DVZ.prod.ticks=20..}] run scoreboard players remove @s DVZ.prod.cool 1
execute as @a[scores={DVZ.prod.ticks=20..}] run scoreboard players set @s DVZ.prod.ticks 0
execute as @a[scores={DVZ.prod.cool=..0}] run scoreboard players reset @s DVZ.prod.ticks
#Blaze Firefly
execute as @a[scores={DVZ.ffly.cool=1..}] run scoreboard players add @s DVZ.ffly.ticks 1
execute as @a[scores={DVZ.ffly.ticks=20..}] run scoreboard players remove @s DVZ.ffly.cool 1
execute as @a[scores={DVZ.ffly.ticks=20..}] run scoreboard players set @s DVZ.ffly.ticks 0
execute as @a[scores={DVZ.ffly.cool=..0}] run scoreboard players reset @s DVZ.ffly.ticks
#Builder Book
execute as @a[scores={DVZ.book.cool=1..}] run scoreboard players add @s DVZ.book.ticks 1
execute as @a[scores={DVZ.book.ticks=20..}] run scoreboard players remove @s DVZ.book.cool 1
execute as @a[scores={DVZ.book.ticks=20..}] run scoreboard players set @s DVZ.book.ticks 0
execute as @a[scores={DVZ.book.cool=..0}] run scoreboard players reset @s DVZ.book.ticks
#Enderman Portal
execute as @a[scores={DVZ.portal.cool=1..}] run scoreboard players add @s DVZ.portal.ticks 1
execute as @a[scores={DVZ.portal.ticks=20..}] run scoreboard players remove @s DVZ.portal.cool 1
execute as @a[scores={DVZ.portal.ticks=20..}] run scoreboard players set @s DVZ.portal.ticks 0
execute as @a[scores={DVZ.portal.cool=..0}] run scoreboard players reset @s DVZ.portal.ticks
#Enderman Pearl
execute as @a[scores={DVZ.pearl.cool=1..}] run scoreboard players add @s DVZ.pearl.ticks 1
execute as @a[scores={DVZ.pearl.ticks=20..}] run scoreboard players remove @s DVZ.pearl.cool 1
execute as @a[scores={DVZ.pearl.ticks=20..}] run scoreboard players set @s DVZ.pearl.ticks 0
execute as @a[scores={DVZ.pearl.cool=..0}] run scoreboard players reset @s DVZ.pearl.ticks
#Dragon Flail
execute as @a[scores={DVZ.flail.cool=1..}] run scoreboard players add @s DVZ.flail.ticks 1
execute as @a[scores={DVZ.flail.ticks=20..}] run scoreboard players remove @s DVZ.flail.cool 1
execute as @a[scores={DVZ.flail.ticks=20..}] run scoreboard players set @s DVZ.flail.ticks 0
execute as @a[scores={DVZ.flail.cool=..0}] run scoreboard players reset @s DVZ.flail.ticks
#Ocelot Mana
execute as @a[scores={DVZ.steal.cool=1..}] run scoreboard players add @s DVZ.steal.ticks 1
execute as @a[scores={DVZ.steal.ticks=20..}] run scoreboard players remove @s DVZ.steal.cool 1
execute as @a[scores={DVZ.steal.ticks=20..}] run scoreboard players set @s DVZ.steal.ticks 0
execute as @a[scores={DVZ.steal.cool=..0}] run scoreboard players reset @s DVZ.steal.ticks
#Enderman Reinforce
execute as @a[scores={DVZ.reinf.cool=1..}] run scoreboard players add @s DVZ.reinf.ticks 1
execute as @a[scores={DVZ.reinf.ticks=20..}] run scoreboard players remove @s DVZ.reinf.cool 1
execute as @a[scores={DVZ.reinf.ticks=20..}] run scoreboard players set @s DVZ.reinf.ticks 0
execute as @a[scores={DVZ.reinf.cool=..0}] run scoreboard players reset @s DVZ.reinf.ticks
#Blaze Fireball
execute as @a[scores={DVZ.fball.cool=1..}] run scoreboard players add @s DVZ.fball.ticks 1
execute as @a[scores={DVZ.fball.ticks=20..}] run scoreboard players remove @s DVZ.fball.cool 1
execute as @a[scores={DVZ.fball.ticks=20..}] run scoreboard players set @s DVZ.fball.ticks 0
execute as @a[scores={DVZ.fball.cool=..0}] run scoreboard players reset @s DVZ.fball.ticks
#Dragon Ruby
execute as @a[scores={DVZ.ruby.cool=1..}] run scoreboard players add @s DVZ.ruby.ticks 1
execute as @a[scores={DVZ.ruby.ticks=20..}] run scoreboard players remove @s DVZ.ruby.cool 1
execute as @a[scores={DVZ.ruby.ticks=20..}] run scoreboard players set @s DVZ.ruby.ticks 0
execute as @a[scores={DVZ.ruby.cool=..0}] run scoreboard players reset @s DVZ.ruby.ticks
#Spider Poison
execute as @a[scores={DVZ.poison.cool=1..}] run scoreboard players add @s DVZ.poison.ticks 1
execute as @a[scores={DVZ.poison.ticks=20..}] run scoreboard players remove @s DVZ.poison.cool 1
execute as @a[scores={DVZ.poison.ticks=20..}] run scoreboard players set @s DVZ.poison.ticks 0
execute as @a[scores={DVZ.poison.cool=..0}] run scoreboard players reset @s DVZ.poison.ticks
#Spider Web
execute as @a[scores={DVZ.web.cool=1..}] run scoreboard players add @s DVZ.web.ticks 1
execute as @a[scores={DVZ.web.ticks=20..}] run scoreboard players remove @s DVZ.web.cool 1
execute as @a[scores={DVZ.web.ticks=20..}] run scoreboard players set @s DVZ.web.ticks 0
execute as @a[scores={DVZ.web.cool=..0}] run scoreboard players reset @s DVZ.web.ticks
#Ocelot Disarming
execute as @a[scores={DVZ.disarm.cool=1..}] run scoreboard players add @s DVZ.disarm.ticks 1
execute as @a[scores={DVZ.disarm.ticks=20..}] run scoreboard players remove @s DVZ.disarm.cool 1
execute as @a[scores={DVZ.disarm.ticks=20..}] run scoreboard players set @s DVZ.disarm.ticks 0
execute as @a[scores={DVZ.disarm.cool=..0}] run scoreboard players reset @s DVZ.disarm.ticks
#zlGuardian Beam
execute as @a[scores={DVZ.zlbeam.cool=1..}] run scoreboard players add @s DVZ.zlbeam.ticks 1
execute as @a[scores={DVZ.zlbeam.ticks=20..}] run scoreboard players remove @s DVZ.zlbeam.cool 1
execute as @a[scores={DVZ.zlbeam.ticks=20..}] run scoreboard players set @s DVZ.zlbeam.ticks 0
execute as @a[scores={DVZ.zlbeam.cool=..0}] run scoreboard players reset @s DVZ.zlbeam.ticks
#Snowball Barrage
execute as @a[scores={DVZ.snowb.cool=1..}] run scoreboard players add @s DVZ.snowb.ticks 1
execute as @a[scores={DVZ.snowb.ticks=20..}] run scoreboard players remove @s DVZ.snowb.cool 1
execute as @a[scores={DVZ.snowb.ticks=20..}] run scoreboard players set @s DVZ.snowb.ticks 0
execute as @a[scores={DVZ.snowb.cool=..0}] run scoreboard players reset @s DVZ.snowb.ticks
#Ice Shard
execute as @a[scores={DVZ.shard.cool=1..}] run scoreboard players add @s DVZ.shard.ticks 1
execute as @a[scores={DVZ.shard.ticks=20..}] run scoreboard players remove @s DVZ.shard.cool 1
execute as @a[scores={DVZ.shard.ticks=20..}] run scoreboard players set @s DVZ.shard.ticks 0
execute as @a[scores={DVZ.shard.cool=..0}] run scoreboard players reset @s DVZ.shard.ticks
#Ice Bomb
execute as @a[scores={DVZ.icy.cool=1..}] run scoreboard players add @s DVZ.icy.ticks 1
execute as @a[scores={DVZ.icy.ticks=20..}] run scoreboard players remove @s DVZ.icy.cool 1
execute as @a[scores={DVZ.icy.ticks=20..}] run scoreboard players set @s DVZ.icy.ticks 0
execute as @a[scores={DVZ.icy.cool=..0}] run scoreboard players reset @s DVZ.icy.ticks
#Throw (Fissure)
execute as @a[scores={DVZ.throw.cool=1..}] run scoreboard players add @s DVZ.throw.ticks 1
execute as @a[scores={DVZ.throw.ticks=20..}] run scoreboard players remove @s DVZ.throw.cool 1
execute as @a[scores={DVZ.throw.ticks=20..}] run scoreboard players set @s DVZ.throw.ticks 0
execute as @a[scores={DVZ.throw.cool=..0}] run scoreboard players reset @s DVZ.throw.ticks
#Pigman Eat
execute as @a[scores={DVZ.pigeat.cool=1..}] run scoreboard players add @s DVZ.pigeat.ticks 1
execute as @a[scores={DVZ.pigeat.ticks=20..}] run scoreboard players remove @s DVZ.pigeat.cool 1
execute as @a[scores={DVZ.pigeat.ticks=20..}] run scoreboard players set @s DVZ.pigeat.ticks 0
execute as @a[scores={DVZ.pigeat.cool=..0}] run scoreboard players reset @s DVZ.pigeat.ticks
#Silverfish Lay Eggs
execute as @a[scores={DVZ.layegg.cool=1..}] run scoreboard players add @s DVZ.layegg.ticks 1
execute as @a[scores={DVZ.layegg.ticks=20..}] run scoreboard players remove @s DVZ.layegg.cool 1
execute as @a[scores={DVZ.layegg.ticks=20..}] run scoreboard players set @s DVZ.layegg.ticks 0
execute as @a[scores={DVZ.layegg.cool=..0}] run scoreboard players reset @s DVZ.layegg.ticks
#Chicken Eggsplosion
execute as @a[scores={DVZ.egg.cool=1..}] run scoreboard players add @s DVZ.egg.ticks 1
execute as @a[scores={DVZ.egg.ticks=20..}] run scoreboard players remove @s DVZ.egg.cool 1
execute as @a[scores={DVZ.egg.ticks=20..}] run scoreboard players set @s DVZ.egg.ticks 0
execute as @a[scores={DVZ.egg.cool=..0}] run scoreboard players reset @s DVZ.egg.ticks
#Chicken fly
execute as @a[scores={DVZ.fly.cool=1..}] run scoreboard players add @s DVZ.fly.ticks 1
execute as @a[scores={DVZ.fly.ticks=20..}] run scoreboard players remove @s DVZ.fly.cool 1
execute as @a[scores={DVZ.fly.ticks=20..}] run scoreboard players set @s DVZ.fly.ticks 0
execute as @a[scores={DVZ.fly.cool=..0}] run scoreboard players reset @s DVZ.fly.ticks
#Phantom delirium
execute as @a[scores={DVZ.delir.cool=1..}] run scoreboard players add @s DVZ.delir.ticks 1
execute as @a[scores={DVZ.delir.ticks=20..}] run scoreboard players remove @s DVZ.delir.cool 1
execute as @a[scores={DVZ.delir.ticks=20..}] run scoreboard players set @s DVZ.delir.ticks 0
execute as @a[scores={DVZ.delir.cool=..0}] run scoreboard players reset @s DVZ.delir.ticks
#Bee Honey
execute as @a[scores={DVZ.honey.cool=1..}] run scoreboard players add @s DVZ.honey.ticks 1
execute as @a[scores={DVZ.honey.ticks=20..}] run scoreboard players remove @s DVZ.honey.cool 1
execute as @a[scores={DVZ.honey.ticks=20..}] run scoreboard players set @s DVZ.honey.ticks 0
execute as @a[scores={DVZ.honey.cool=..0}] run scoreboard players reset @s DVZ.honey.ticks
#Golem and Phantom Leap
execute as @a[scores={DVZ.leap.cool=1..}] run scoreboard players add @s DVZ.leap.ticks 1
execute as @a[scores={DVZ.leap.ticks=20..}] run scoreboard players remove @s DVZ.leap.cool 1
execute as @a[scores={DVZ.leap.ticks=20..}] run scoreboard players set @s DVZ.leap.ticks 0
execute as @a[scores={DVZ.leap.cool=..0}] run scoreboard players reset @s DVZ.leap.ticks
#Evoker summon
execute as @a[scores={DVZ.summon.cool=1..}] run scoreboard players add @s DVZ.summon.ticks 1
execute as @a[scores={DVZ.summon.ticks=20..}] run scoreboard players remove @s DVZ.summon.cool 1
execute as @a[scores={DVZ.summon.ticks=20..}] run scoreboard players set @s DVZ.summon.ticks 0
execute as @a[scores={DVZ.summon.cool=..0}] run scoreboard players reset @s DVZ.summon.ticks
#Evoker throw
execute as @a[scores={DVZ.evothrow.cool=1..}] run scoreboard players add @s DVZ.evothrow.ticks 1
execute as @a[scores={DVZ.evothrow.ticks=20..}] run scoreboard players remove @s DVZ.evothrow.cool 1
execute as @a[scores={DVZ.evothrow.ticks=20..}] run scoreboard players set @s DVZ.evothrow.ticks 0
execute as @a[scores={DVZ.evothrow.cool=..0}] run scoreboard players reset @s DVZ.evothrow.ticks
#Witch Buff
execute as @a[scores={DVZ.witchbuff.cool=1..}] run scoreboard players add @s DVZ.witchbuff.ticks 1
execute as @a[scores={DVZ.witchbuff.ticks=20..}] run scoreboard players remove @s DVZ.witchbuff.cool 1
execute as @a[scores={DVZ.witchbuff.ticks=20..}] run scoreboard players set @s DVZ.witchbuff.ticks 0
execute as @a[scores={DVZ.witchbuff.cool=..0}] run scoreboard players reset @s DVZ.witchbuff.ticks
#Witch Debuff
execute as @a[scores={DVZ.witchdebuff.cool=1..}] run scoreboard players add @s DVZ.witchdebuff.ticks 1
execute as @a[scores={DVZ.witchdebuff.ticks=20..}] run scoreboard players remove @s DVZ.witchdebuff.cool 1
execute as @a[scores={DVZ.witchdebuff.ticks=20..}] run scoreboard players set @s DVZ.witchdebuff.ticks 0
execute as @a[scores={DVZ.witchdebuff.cool=..0}] run scoreboard players reset @s DVZ.witchdebuff.ticks
#Witch Transmute
execute as @a[scores={DVZ.witchfrog.cool=1..}] run scoreboard players add @s DVZ.witchfrog.ticks 1
execute as @a[scores={DVZ.witchfrog.ticks=20..}] run scoreboard players remove @s DVZ.witchfrog.cool 1
execute as @a[scores={DVZ.witchfrog.ticks=20..}] run scoreboard players set @s DVZ.witchfrog.ticks 0
execute as @a[scores={DVZ.witchfrog.cool=..0}] run scoreboard players reset @s DVZ.witchfrog.ticks
#Enchanter Book
execute as @a[scores={DVZ.enchanterbook.cool=1..}] run scoreboard players add @s DVZ.enchanterbook.ticks 1
execute as @a[scores={DVZ.enchanterbook.ticks=20..}] run scoreboard players remove @s DVZ.enchanterbook.cool 1
execute as @a[scores={DVZ.enchanterbook.ticks=20..}] run scoreboard players set @s DVZ.enchanterbook.ticks 0
execute as @a[scores={DVZ.enchanterbook.cool=..0}] run scoreboard players reset @s DVZ.enchanterbook.ticks
#Allay Pick
execute as @a[scores={DVZ.allaypick.cool=1..}] run scoreboard players add @s DVZ.allaypick.ticks 1
execute as @a[scores={DVZ.allaypick.ticks=20..}] run scoreboard players remove @s DVZ.allaypick.cool 1
execute as @a[scores={DVZ.allaypick.ticks=20..}] run scoreboard players set @s DVZ.allaypick.ticks 0
execute as @a[scores={DVZ.allaypick.cool=..0}] run scoreboard players reset @s DVZ.allaypick.ticks
#Magma Cube Throw
execute as @a[scores={DVZ.magmathrow.cool=1..}] run scoreboard players add @s DVZ.magmathrow.ticks 1
execute as @a[scores={DVZ.magmathrow.ticks=20..}] run scoreboard players remove @s DVZ.magmathrow.cool 1
execute as @a[scores={DVZ.magmathrow.ticks=20..}] run scoreboard players set @s DVZ.magmathrow.ticks 0
execute as @a[scores={DVZ.magmathrow.cool=..0}] run scoreboard players reset @s DVZ.magmathrow.ticks
#Slime
execute as @a[scores={DVZ.slimespit.cool=1..}] run scoreboard players add @s DVZ.slimespit.ticks 1
execute as @a[scores={DVZ.slimespit.ticks=20..}] run scoreboard players remove @s DVZ.slimespit.cool 1
execute as @a[scores={DVZ.slimespit.ticks=20..}] run scoreboard players set @s DVZ.slimespit.ticks 0
execute as @a[scores={DVZ.slimespit.cool=..0}] run scoreboard players reset @s DVZ.slimespit.ticks
execute as @a[scores={DVZ.slimebomb.cool=1..}] run scoreboard players add @s DVZ.slimebomb.ticks 1
execute as @a[scores={DVZ.slimebomb.ticks=20..}] run scoreboard players remove @s DVZ.slimebomb.cool 1
execute as @a[scores={DVZ.slimebomb.ticks=20..}] run scoreboard players set @s DVZ.slimebomb.ticks 0
execute as @a[scores={DVZ.slimebomb.cool=..0}] run scoreboard players reset @s DVZ.slimebomb.ticks
execute as @a[scores={DVZ.slimeexplode.cool=1..}] run scoreboard players add @s DVZ.slimeexplode.ticks 1
execute as @a[scores={DVZ.slimeexplode.ticks=20..}] run scoreboard players remove @s DVZ.slimeexplode.cool 1
execute as @a[scores={DVZ.slimeexplode.ticks=20..}] run scoreboard players set @s DVZ.slimeexplode.ticks 0
execute as @a[scores={DVZ.slimeexplode.cool=..0}] run scoreboard players reset @s DVZ.slimeexplode.ticks
#Evoker
execute as @a[scores={DVZ.evokersummon.cool=1..}] run scoreboard players add @s DVZ.evokersummon.ticks 1
execute as @a[scores={DVZ.evokersummon.ticks=20..}] run scoreboard players remove @s DVZ.evokersummon.cool 1
execute as @a[scores={DVZ.evokersummon.ticks=20..}] run scoreboard players set @s DVZ.evokersummon.ticks 0
execute as @a[scores={DVZ.evokersummon.cool=..0}] run scoreboard players reset @s DVZ.evokersummon.ticks
execute as @a[scores={DVZ.evokerbomb.cool=1..}] run scoreboard players add @s DVZ.evokerbomb.ticks 1
execute as @a[scores={DVZ.evokerbomb.ticks=20..}] run scoreboard players remove @s DVZ.evokerbomb.cool 1
execute as @a[scores={DVZ.evokerbomb.ticks=20..}] run scoreboard players set @s DVZ.evokerbomb.ticks 0
execute as @a[scores={DVZ.evokerbomb.cool=..0}] run scoreboard players reset @s DVZ.evokerbomb.ticks
execute as @a[scores={DVZ.evokerward.cool=1..}] run scoreboard players add @s DVZ.evokerward.ticks 1
execute as @a[scores={DVZ.evokerward.ticks=20..}] run scoreboard players remove @s DVZ.evokerward.cool 1
execute as @a[scores={DVZ.evokerward.ticks=20..}] run scoreboard players set @s DVZ.evokerward.ticks 0
execute as @a[scores={DVZ.evokerward.cool=..0}] run scoreboard players reset @s DVZ.evokerward.ticks
#Shulker
execute as @a[scores={DVZ.shulkerwall.cool=1..}] run scoreboard players add @s DVZ.shulkerwall.ticks 1
execute as @a[scores={DVZ.shulkerwall.ticks=20..}] run scoreboard players remove @s DVZ.shulkerwall.cool 1
execute as @a[scores={DVZ.shulkerwall.ticks=20..}] run scoreboard players set @s DVZ.shulkerwall.ticks 0
execute as @a[scores={DVZ.shulkerwall.cool=..0}] run scoreboard players reset @s DVZ.shulkerwall.ticks
execute as @a[scores={DVZ.shulkertrap.cool=1..}] run scoreboard players add @s DVZ.shulkertrap.ticks 1
execute as @a[scores={DVZ.shulkertrap.ticks=20..}] run scoreboard players remove @s DVZ.shulkertrap.cool 1
execute as @a[scores={DVZ.shulkertrap.ticks=20..}] run scoreboard players set @s DVZ.shulkertrap.ticks 0
execute as @a[scores={DVZ.shulkertrap.cool=..0}] run scoreboard players reset @s DVZ.shulkertrap.ticks
execute as @a[scores={DVZ.shulkerbomb.cool=1..}] run scoreboard players add @s DVZ.shulkerbomb.ticks 1
execute as @a[scores={DVZ.shulkerbomb.ticks=20..}] run scoreboard players remove @s DVZ.shulkerbomb.cool 1
execute as @a[scores={DVZ.shulkerbomb.ticks=20..}] run scoreboard players set @s DVZ.shulkerbomb.ticks 0
execute as @a[scores={DVZ.shulkerbomb.cool=..0}] run scoreboard players reset @s DVZ.shulkerbomb.ticks
#Bat
execute as @a[scores={DVZ.batscan.cool=1..}] run scoreboard players add @s DVZ.batscan.ticks 1
execute as @a[scores={DVZ.batscan.ticks=20..}] run scoreboard players remove @s DVZ.batscan.cool 1
execute as @a[scores={DVZ.batscan.ticks=20..}] run scoreboard players set @s DVZ.batscan.ticks 0
execute as @a[scores={DVZ.batscan.cool=..0}] run scoreboard players reset @s DVZ.batscan.ticks
execute as @a[scores={DVZ.batdark.cool=1..}] run scoreboard players add @s DVZ.batdark.ticks 1
execute as @a[scores={DVZ.batdark.ticks=20..}] run scoreboard players remove @s DVZ.batdark.cool 1
execute as @a[scores={DVZ.batdark.ticks=20..}] run scoreboard players set @s DVZ.batdark.ticks 0
execute as @a[scores={DVZ.batdark.cool=..0}] run scoreboard players reset @s DVZ.batdark.ticks
#Piglin
execute as @a[scores={DVZ.piglinrefill.cool=1..}] run scoreboard players add @s DVZ.piglinrefill.ticks 1
execute as @a[scores={DVZ.piglinrefill.ticks=20..}] run scoreboard players remove @s DVZ.piglinrefill.cool 1
execute as @a[scores={DVZ.piglinrefill.ticks=20..}] run scoreboard players set @s DVZ.piglinrefill.ticks 0
execute as @a[scores={DVZ.piglinrefill.cool=..0}] run scoreboard players reset @s DVZ.piglinrefill.ticks
#Dragon Breath
execute as @a[scores={DVZ.breath.cool=1..}] run scoreboard players add @s DVZ.breath.ticks 1
execute as @a[scores={DVZ.breath.ticks=20..}] run scoreboard players remove @s DVZ.breath.cool 1
execute as @a[scores={DVZ.breath.ticks=20..}] run scoreboard players set @s DVZ.breath.ticks 0
execute as @a[scores={DVZ.breath.cool=..0}] run scoreboard players reset @s DVZ.breath.ticks
#Wither Skull
execute as @a[scores={DVZ.Wskull.cool=1..}] run scoreboard players add @s DVZ.Wskull.ticks 1
execute as @a[scores={DVZ.Wskull.ticks=20..}] run scoreboard players remove @s DVZ.Wskull.cool 1
execute as @a[scores={DVZ.Wskull.ticks=20..}] run scoreboard players set @s DVZ.Wskull.ticks 0
execute as @a[scores={DVZ.Wskull.cool=..0}] run scoreboard players reset @s DVZ.Wskull.ticks
#EGuardian Beam
execute as @a[scores={DVZ.Gbeam.cool=1..}] run scoreboard players add @s DVZ.Gbeam.ticks 1
execute as @a[scores={DVZ.Gbeam.ticks=20..}] run scoreboard players remove @s DVZ.Gbeam.cool 1
execute as @a[scores={DVZ.Gbeam.ticks=20..}] run scoreboard players set @s DVZ.Gbeam.ticks 0
execute as @a[scores={DVZ.Gbeam.cool=..0}] run scoreboard players reset @s DVZ.Gbeam.ticks
#Assassin Kill
execute as @a[scores={DVZ.Akill.cool=1..}] run scoreboard players add @s DVZ.Akill.ticks 1
execute as @a[scores={DVZ.Akill.ticks=20..}] run scoreboard players remove @s DVZ.Akill.cool 1
execute as @a[scores={DVZ.Akill.ticks=20..}] run scoreboard players set @s DVZ.Akill.ticks 0
execute as @a[scores={DVZ.Akill.cool=..0}] run scoreboard players reset @s DVZ.Akill.ticks
#Guardian Rally
execute as @a[scores={DVZ.rally.cool=1..}] run scoreboard players add @s DVZ.rally.ticks 1
execute as @a[scores={DVZ.rally.ticks=20..}] run scoreboard players remove @s DVZ.rally.cool 1
execute as @a[scores={DVZ.rally.ticks=20..}] run scoreboard players set @s DVZ.rally.ticks 0
execute as @a[scores={DVZ.rally.cool=..0}] run scoreboard players reset @s DVZ.rally.ticks
#Slayer Regrowth Star
execute as @a[scores={DVZ.rstar.cool=1..}] run scoreboard players add @s DVZ.rstar.ticks 1
execute as @a[scores={DVZ.rstar.ticks=20..}] run scoreboard players remove @s DVZ.rstar.cool 1
execute as @a[scores={DVZ.rstar.ticks=20..}] run scoreboard players set @s DVZ.rstar.ticks 0
execute as @a[scores={DVZ.rstar.cool=..0}] run scoreboard players reset @s DVZ.rstar.ticks
#Wither Drain
execute as @a[scores={DVZ.drain.cool=1..}] run scoreboard players add @s DVZ.drain.ticks 1
execute as @a[scores={DVZ.drain.ticks=20..}] run scoreboard players remove @s DVZ.drain.cool 1
execute as @a[scores={DVZ.drain.ticks=20..}] run scoreboard players set @s DVZ.drain.ticks 0
execute as @a[scores={DVZ.drain.cool=..0}] run scoreboard players reset @s DVZ.drain.ticks
#Wither Sunfury
execute as @a[scores={DVZ.sfury.cool=1..}] run scoreboard players add @s DVZ.sfury.ticks 1
execute as @a[scores={DVZ.sfury.ticks=20..}] run scoreboard players remove @s DVZ.sfury.cool 1
execute as @a[scores={DVZ.sfury.ticks=20..}] run scoreboard players set @s DVZ.sfury.ticks 0
execute as @a[scores={DVZ.sfury.cool=..0}] run scoreboard players reset @s DVZ.sfury.ticks
#Ghast Fireball
execute as @a[scores={DVZ.ghast.cool=1..}] run scoreboard players add @s DVZ.ghast.ticks 1
execute as @a[scores={DVZ.ghast.ticks=20..}] run scoreboard players remove @s DVZ.ghast.cool 1
execute as @a[scores={DVZ.ghast.ticks=20..}] run scoreboard players set @s DVZ.ghast.ticks 0
execute as @a[scores={DVZ.ghast.cool=..0}] run scoreboard players reset @s DVZ.ghast.ticks
#Ravager Smash
execute as @a[scores={DVZ.smash.cool=1..}] run scoreboard players add @s DVZ.smash.ticks 1
execute as @a[scores={DVZ.smash.ticks=20..}] run scoreboard players remove @s DVZ.smash.cool 1
execute as @a[scores={DVZ.smash.ticks=20..}] run scoreboard players set @s DVZ.smash.ticks 0
execute as @a[scores={DVZ.smash.cool=..0}] run scoreboard players reset @s DVZ.smash.ticks
#Johnny Vindication
execute as @a[scores={DVZ.vindic.cool=1..}] run scoreboard players add @s DVZ.vindic.ticks 1
execute as @a[scores={DVZ.vindic.ticks=20..}] run scoreboard players remove @s DVZ.vindic.cool 1
execute as @a[scores={DVZ.vindic.ticks=20..}] run scoreboard players set @s DVZ.vindic.ticks 0
execute as @a[scores={DVZ.vindic.cool=..0}] run scoreboard players reset @s DVZ.vindic.ticks