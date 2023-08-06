# -------------------------------------------
# Called By: MINECRAFT
# File Name: load
# File Purpose: called on world startup or `/reload` to make scoreboards and armor stands 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.07.21
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

#Setup
#schedule function dvz:unload 5s
scoreboard objectives add DVZ.start trigger
difficulty normal
gamemode survival @a
tag @a remove DVZready
clear @a
scoreboard players reset @a
kill @e[tag=dvztimer]
tag @a remove fight
kill @e[type=ender_dragon]
xp set @a 0 levels
effect clear @a
team leave @a

#Timer
forceload add 0 0
summon marker 0 0 0 {Tags:[dvztimer]}

#Bossbars
bossbar add dvz:bosstimer {"text":"Timer","italic":"true","color":"gray"}
bossbar set dvz:bosstimer color green
bossbar set dvz:bosstimer max 36000
bossbar set dvz:bosstimer style notched_10
bossbar set dvz:bosstimer visible false

bossbar add dvz:dragonhealth {"text":"Ender Dragon","italic":"true","color":"light_purple"}
bossbar set dvz:dragonhealth color purple
bossbar set dvz:dragonhealth max 200
bossbar set dvz:dragonhealth style progress
bossbar set dvz:dragonhealth visible false

bossbar add dvz:guardianhealth {"text":"Elder Guardian","italic":"true","color":"aqua"}
bossbar set dvz:guardianhealth color blue
bossbar set dvz:guardianhealth max 200
bossbar set dvz:guardianhealth style progress
bossbar set dvz:guardianhealth visible false

bossbar add dvz:assassintimer {"text":"Assassin dies in...","italic":"true","color":"gray"}
bossbar set dvz:assassintimer color red
bossbar set dvz:assassintimer max 2400
bossbar set dvz:assassintimer style notched_12
bossbar set dvz:assassintimer visible false

scoreboard objectives add DVZ.wither.heal dummy

#Gamerules
gamerule doMobLoot false
gamerule keepInventory true
gamerule spawnRadius 2
gamerule sendCommandFeedback false
gamerule mobGriefing false
gamerule doMobSpawning false
gamerule announceAdvancements false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doInsomnia false
gamerule doWardenSpawning false
gamerule snowAccumulationHeight 8
time set noon
#gamerule showDeathMessages false

#Function objectives
scoreboard objectives add DVZ.rclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add DVZ.crouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add DVZ.kills minecraft.custom:minecraft.player_kills
scoreboard objectives add DVZ.death deathCount
scoreboard objectives add DVZ.dragon minecraft.killed:minecraft.ender_dragon
scoreboard objectives add DVZ.wither minecraft.killed:minecraft.wither
scoreboard objectives add DVZ.guardian minecraft.killed:minecraft.elder_guardian
scoreboard objectives add DVZ.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add DVZ.timer dummy
scoreboard objectives add DVZ.begintest dummy
scoreboard objectives add DVZ.bossinvcheck dummy
scoreboard objectives add DVZ.lava dummy
scoreboard objectives add DVZppos dummy
scoreboard objectives add DVZ.killedby minecraft.killed_by:minecraft.player
scoreboard objectives add DVZ.whispersong dummy
scoreboard objectives add DVZ.bow minecraft.used:minecraft.bow
scoreboard objectives add DVZ.legenditems dummy
scoreboard objectives add DVZ.health health
scoreboard objectives add DVZ.battletimer dummy

### Cooldown objectives
#Dwarves
scoreboard objectives add DVZ.close.cool dummy
scoreboard objectives add DVZ.close.ticks dummy
scoreboard objectives add DVZ.book.cool dummy
scoreboard objectives add DVZ.book.ticks dummy
scoreboard objectives add DVZ.slab.cool dummy
scoreboard objectives add DVZ.slab.ticks dummy
scoreboard objectives add DVZ.prod.cool dummy
scoreboard objectives add DVZ.prod.ticks dummy
scoreboard objectives add DVZ.build.struc minecraft.used:minecraft.glow_squid_spawn_egg
#Zombie
scoreboard objectives add DVZ.ffly.airtime dummy
scoreboard objectives add DVZ.ffly.cool dummy
scoreboard objectives add DVZ.ffly.ticks dummy
scoreboard objectives add DVZ.portal.cool dummy
scoreboard objectives add DVZ.portal.ticks dummy
scoreboard objectives add DVZ.pearl.cool dummy
scoreboard objectives add DVZ.pearl.ticks dummy
scoreboard objectives add DVZ.steal.cool dummy
scoreboard objectives add DVZ.steal.ticks dummy
scoreboard objectives add DVZ.reinf.cool dummy
scoreboard objectives add DVZ.reinf.ticks dummy
scoreboard objectives add DVZ.reinf.msg dummy
scoreboard objectives add DVZ.fball.cool dummy
scoreboard objectives add DVZ.fball.ticks dummy
scoreboard objectives add DVZ.poison.cool dummy
scoreboard objectives add DVZ.poison.ticks dummy
scoreboard objectives add DVZ.web.cool dummy
scoreboard objectives add DVZ.web.ticks dummy
scoreboard objectives add DVZ.attack.hit minecraft.custom:minecraft.damage_dealt
scoreboard objectives add DVZ.disarm.cool dummy
scoreboard objectives add DVZ.disarm.ticks dummy
scoreboard objectives add DVZ.layegg.ticks dummy
scoreboard objectives add DVZ.layegg.cool dummy
scoreboard objectives add DVZ.pigeat minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add DVZ.zlbeam.ticks dummy
scoreboard objectives add DVZ.zlbeam.cool dummy
scoreboard objectives add DVZ.snowb.ticks dummy
scoreboard objectives add DVZ.snowb.cool dummy
scoreboard objectives add DVZ.shard.ticks dummy
scoreboard objectives add DVZ.shard.cool dummy
scoreboard objectives add DVZ.icy.ticks dummy
scoreboard objectives add DVZ.icy.cool dummy
scoreboard objectives add DVZ.throw.ticks dummy
scoreboard objectives add DVZ.throw.cool dummy
scoreboard objectives add DVZ.fly.airtime dummy
scoreboard objectives add DVZ.fly.ticks dummy
scoreboard objectives add DVZ.fly.cool dummy
scoreboard objectives add DVZ.honey.ticks dummy
scoreboard objectives add DVZ.honey.cool dummy
scoreboard objectives add DVZ.delir.ticks dummy
scoreboard objectives add DVZ.delir.cool dummy
scoreboard objectives add DVZ.leap.ticks dummy
scoreboard objectives add DVZ.leap.cool dummy
scoreboard objectives add DVZ.summon.ticks dummy
scoreboard objectives add DVZ.summon.cool dummy
scoreboard objectives add DVZ.evothrow.ticks dummy
scoreboard objectives add DVZ.evothrow.cool dummy
scoreboard objectives add DVZ.witchbuff.ticks dummy
scoreboard objectives add DVZ.witchbuff.cool dummy
scoreboard objectives add DVZ.witchdebuff.ticks dummy
scoreboard objectives add DVZ.witchdebuff.cool dummy
scoreboard objectives add DVZ.witchfrog.ticks dummy
scoreboard objectives add DVZ.witchfrog.cool dummy
scoreboard objectives add DVZ.enchanterbook.ticks dummy
scoreboard objectives add DVZ.enchanterbook.cool dummy
scoreboard objectives add DVZ.enchanterloop.ticks dummy
scoreboard objectives add DVZ.magmathrow.ticks dummy
scoreboard objectives add DVZ.magmathrow.cool dummy
scoreboard objectives add pos dummy
scoreboard objectives add bullet_age dummy
scoreboard objectives add evoker_curse dummy
scoreboard objectives add DVZ.allaypick.ticks dummy
scoreboard objectives add DVZ.allaypick.cool dummy
scoreboard objectives add DVZ.slimespit.ticks dummy
scoreboard objectives add DVZ.slimespit.cool dummy
scoreboard objectives add DVZ.slimebomb.ticks dummy
scoreboard objectives add DVZ.slimebomb.cool dummy
scoreboard objectives add DVZ.slimeexplode.ticks dummy
scoreboard objectives add DVZ.slimeexplode.cool dummy
scoreboard objectives add DVZ.evokersummon.ticks dummy
scoreboard objectives add DVZ.evokersummon.cool dummy
scoreboard objectives add DVZ.evokerbomb.ticks dummy
scoreboard objectives add DVZ.evokerbomb.cool dummy
scoreboard objectives add DVZ.evokerward.ticks dummy
scoreboard objectives add DVZ.evokerward.cool dummy

#Piglin
scoreboard objectives add DVZ.piglinrefill.ticks dummy
scoreboard objectives add DVZ.piglinrefill.cool dummy

#Shulker
scoreboard objectives add DVZ.shulkerwall.ticks dummy
scoreboard objectives add DVZ.shulkerwall.cool dummy
scoreboard objectives add DVZ.shulkertrap.ticks dummy
scoreboard objectives add DVZ.shulkertrap.cool dummy
scoreboard objectives add DVZ.shulkerbomb.ticks dummy
scoreboard objectives add DVZ.shulkerbomb.cool dummy

#Bat
scoreboard objectives add DVZ.batscan.ticks dummy
scoreboard objectives add DVZ.batscan.cool dummy
scoreboard objectives add DVZ.batdark.ticks dummy
scoreboard objectives add DVZ.batdark.cool dummy

#Miniboss
scoreboard objectives add DVZ.ghast.ticks dummy
scoreboard objectives add DVZ.ghast.cool dummy
scoreboard objectives add DVZ.fballage.cool dummy
scoreboard objectives add DVZ.smash.ticks dummy
scoreboard objectives add DVZ.smash.cool dummy
scoreboard objectives add DVZ.vindic.ticks dummy
scoreboard objectives add DVZ.vindic.cool dummy
#Boss
scoreboard objectives add DVZ.breath.cool dummy
scoreboard objectives add DVZ.breath.ticks dummy
scoreboard objectives add DVZ.Akill.cool dummy
scoreboard objectives add DVZ.Akill.ticks dummy
scoreboard objectives add DVZ.Wskull.cool dummy
scoreboard objectives add DVZ.Wskull.ticks dummy
scoreboard objectives add DVZ.Gbeam.cool dummy
scoreboard objectives add DVZ.Gbeam.ticks dummy
#Hero
scoreboard objectives add DVZ.flail.cool dummy
scoreboard objectives add DVZ.flail.ticks dummy
scoreboard objectives add DVZ.ruby.cool dummy
scoreboard objectives add DVZ.ruby.ticks dummy
scoreboard objectives add DVZ.rally.cool dummy
scoreboard objectives add DVZ.rally.ticks dummy
scoreboard objectives add DVZ.rstar.cool dummy
scoreboard objectives add DVZ.rstar.ticks dummy
scoreboard objectives add DVZ.drain.cool dummy
scoreboard objectives add DVZ.drain.ticks dummy
scoreboard objectives add DVZ.sfury.cool dummy
scoreboard objectives add DVZ.sfury.ticks dummy

### Dwarf Summoning Items
scoreboard objectives add DVZ.alch.potions dummy
scoreboard objectives add DVZ.baker.bricks dummy
scoreboard objectives add DVZ.smith.clocks dummy
scoreboard objectives add DVZ.ench.emerald dummy
scoreboard objectives add DVZ.tailor.dyes dummy
scoreboard objectives add DVZ.legend.shard dummy

#Zombie Block Alterations
scoreboard objectives add DVZ.layegg.check dummy
scoreboard objectives add DVZ.layegg.block dummy
scoreboard objectives add DVZ.silver.kill dummy
scoreboard objectives add DVZ.roar.check dummy
scoreboard objectives add DVZ.icy.check dummy
scoreboard objectives add DVZ.smash.check dummy

#Dwarves' mana regen / Zombies' suicide pill
scoreboard objectives add DVZ.mana.ticks dummy
scoreboard objectives add DVZ.suicide.cool dummy
scoreboard objectives add DVZ.suicide.tick dummy

###Player counter
scoreboard objectives add DVZ.playercount dummy ["",{"text":"OG","bold":true,"color":"dark_aqua"},{"text":"v","color":"gray"},{"text":"Z","bold":true,"color":"dark_red"}] 
scoreboard objectives add DVZ.playertest dummy
#Percent of dwarves needed to die to end plague (whole number percentages only)
scoreboard players set #percentdead DVZ.playertest 50
scoreboard players set #100 DVZ.playertest 100

### Add teams
team add dDWARVES
team add dBUILDER
team add dALCHEMIST
team add dBAKER
team add dBLACKSMITH
team add dENCHANTER
team add dTAILOR
team add dDRAGON
team add dSLAYER
team add dWARRIOR
team add dGUARD

team add zMONSTER
team add zDEAD

team add zDRAGON
team add zWITHER
team add zGUARDIAN

### Modify team colors
team modify dDWARVES color aqua
team modify dBUILDER color green
team modify dALCHEMIST color blue
team modify dBAKER color blue
team modify dBLACKSMITH color blue
team modify dENCHANTER color blue
team modify dTAILOR color blue
team modify dDRAGON color gold
team modify dSLAYER color gold
team modify dWARRIOR color gold
team modify dGUARD color gold

team modify zMONSTER color dark_red
team modify zDEAD color yellow

team modify zDRAGON color light_purple
team modify zWITHER color light_purple
team modify zGUARDIAN color light_purple

### Modify team suffix
team modify dDWARVES suffix {"text":", a Dwarf","italic":"true","color":"aqua"}
team modify dBUILDER suffix {"text":", the Builder","italic":"true","color":"green"}
team modify dALCHEMIST suffix {"text":", the Alchemist","italic":"true","color":"blue"}
team modify dBAKER suffix {"text":", the Baker","italic":"true","color":"blue"}
team modify dBLACKSMITH suffix {"text":", the Blacksmith","italic":"true","color":"blue"}
team modify dENCHANTER suffix {"text":", the Enchanter","italic":"true","color":"blue"}
team modify dTAILOR suffix {"text":", the Tailor","italic":"true","color":"blue"}
team modify dDRAGON suffix {"text":", the Dragon Warrior","italic":"true","color":"gold"}
team modify dSLAYER suffix {"text":", the Assassin Slayer","italic":"true","color":"gold"}
team modify dWARRIOR suffix {"text":", the Wither Warrior","italic":"true","color":"gold"}
team modify dGUARD suffix {"text":", the Dwarven Guard","italic":"true","color":"gold"}

team modify zMONSTER suffix {"text":", the Monster","italic":"true","color":"red"}
team modify zDEAD suffix {"text":" is dead...","italic":"true","color":"yellow"}

team modify zDRAGON suffix {"text":", the Dragon","italic":"true","color":"light_purple"}
team modify zWITHER suffix {"text":", the Wither","italic":"true","color":"light_purple"}
team modify zGUARDIAN suffix {"text":", the Guardian","italic":"true","color":"light_purple"}

### Zombies have invisible nametags
team modify zMONSTER nametagVisibility hideForOtherTeams
team modify zMONSTER seeFriendlyInvisibles true
team modify zMONSTER friendlyFire true
team modify zDEAD nametagVisibility never
team modify zDEAD seeFriendlyInvisibles false
team modify zDEAD friendlyFire true

team modify zDRAGON nametagVisibility never
team modify zWITHER nametagVisibility never
team modify zGUARDIAN nametagVisibility never

### Boss collisions
team modify zDRAGON collisionRule never
team modify zWITHER collisionRule never
team modify zGUARDIAN collisionRule never


#~READY TO GO!