# -------------------------------------------
# Called By: dvz:tick
# File Name: dvzready
# File Purpose: Called when players forst join the game
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

team leave @s
tag @s remove admin
tag @s remove messaged
tag @s remove noboss

tag @s remove dwarves
tag @s remove builder
tag @s remove alchemist
tag @s remove baker
tag @s remove blacksmith
tag @s remove enchanter
tag @s remove tailor
tag @s remove nomana
tag @s remove slay

tag @s remove dragon
tag @s remove wither
tag @s remove assassinslayer
tag @s remove guardian
tag @s remove hero
tag @s remove lbookused

tag @s remove zombies
tag @s remove zombie
tag @s remove drowned
tag @s remove skeleton
tag @s remove creeper
tag @s remove spider
tag @s remove wolf
tag @s remove ocelot
tag @s remove silverfish
tag @s remove pigman
tag @s remove pig1
tag @s remove pig2
tag @s remove pig3
tag @s remove blaze
tag @s remove enderman
tag @s remove ePortal
tag @s remove zlguardian
tag @s remove snowman
tag @s remove chillager
tag @s remove golem
tag @s remove husk
tag @s remove witherskeleton
tag @s remove pillager
tag @s remove vindicator
tag @s remove bee
tag @s remove ghastflight
tag @s remove chicken
tag @s remove phantom
tag @s remove piglin
tag @s remove piglin_brute
tag @s remove endermite
tag @s remove vex
tag @s remove witch
tag @s remove zenchanter
tag @s remove magma_cube
tag @s remove allay
tag @s remove slime
tag @s remove evoker

tag @s remove ghast
tag @s remove johnny
tag @s remove ravager
tag @s remove miniboss

tag @s remove playerdragonpick
tag @s remove playerwitherpick
tag @s remove playerguardianpick
tag @s remove assassinpick
tag @s remove playerboss

tag @s remove noboss
tag @s remove selectedclass


#####SCOREBOARD RESETS
#Function objectives
scoreboard players set @s DVZ.rclick 0
scoreboard players set @s DVZ.crouch 0
scoreboard players set @s DVZ.kills 0
scoreboard players set @s DVZ.death 0
scoreboard players set @s DVZ.dragon 0
scoreboard players set @s DVZ.wither 0
scoreboard players set @s DVZ.guardian 0
scoreboard players set @s DVZ.leave 0
scoreboard players set @s DVZ.timer 0
scoreboard players set @s DVZ.begintest 0
scoreboard players set @s DVZ.bossinvcheck 0
scoreboard players set @s DVZ.lava 0
scoreboard players set @s DVZppos 0
scoreboard players set @s DVZ.killedby 0
scoreboard players set @s DVZ.whispersong 0
scoreboard players set @s DVZ.bow 0
scoreboard players set @s DVZ.legenditems 0
scoreboard players set @s DVZ.health 0

### Cooldown objectives
#Dwarves
scoreboard players set @s DVZ.close.cool 0
scoreboard players set @s DVZ.close.ticks 0
scoreboard players set @s DVZ.book.cool 0
scoreboard players set @s DVZ.book.ticks 0
scoreboard players set @s DVZ.slab.cool 0
scoreboard players set @s DVZ.slab.ticks 0
scoreboard players set @s DVZ.prod.cool 0
scoreboard players set @s DVZ.prod.ticks 0
#Zombie 
scoreboard players set @s DVZ.ffly.airtime 0
scoreboard players set @s DVZ.ffly.cool 0
scoreboard players set @s DVZ.ffly.ticks 0
scoreboard players set @s DVZ.portal.cool 0
scoreboard players set @s DVZ.portal.ticks 0
scoreboard players set @s DVZ.pearl.cool 0
scoreboard players set @s DVZ.pearl.ticks 0
scoreboard players set @s DVZ.steal.cool 0
scoreboard players set @s DVZ.steal.ticks 0
scoreboard players set @s DVZ.reinf.cool 0
scoreboard players set @s DVZ.reinf.ticks 0
scoreboard players set @s DVZ.reinf.msg 0
scoreboard players set @s DVZ.fball.cool 0
scoreboard players set @s DVZ.fball.ticks 0
scoreboard players set @s DVZ.poison.cool 0
scoreboard players set @s DVZ.poison.ticks 0
scoreboard players set @s DVZ.web.cool 0
scoreboard players set @s DVZ.web.ticks 0
scoreboard players set @s DVZ.attack.hit 0
scoreboard players set @s DVZ.disarm.cool 0
scoreboard players set @s DVZ.disarm.ticks 0
scoreboard players set @s DVZ.layegg.ticks 0
scoreboard players set @s DVZ.layegg.cool 0
scoreboard players set @s DVZ.pigeat 0
scoreboard players set @s DVZ.zlbeam.ticks 0
scoreboard players set @s DVZ.zlbeam.cool 0
scoreboard players set @s DVZ.snowb.ticks 0
scoreboard players set @s DVZ.snowb.cool 0
scoreboard players set @s DVZ.shard.ticks 0
scoreboard players set @s DVZ.shard.cool 0
scoreboard players set @s DVZ.icy.ticks 0
scoreboard players set @s DVZ.icy.cool 0
scoreboard players set @s DVZ.throw.ticks 0
scoreboard players set @s DVZ.throw.cool 0
scoreboard players set @s DVZ.fly.airtime 0
scoreboard players set @s DVZ.fly.ticks 0
scoreboard players set @s DVZ.fly.cool 0
scoreboard players set @s DVZ.honey.ticks 0
scoreboard players set @s DVZ.honey.cool 0
scoreboard players set @s DVZ.delir.ticks 0
scoreboard players set @s DVZ.delir.cool 0
scoreboard players set @s DVZ.leap.ticks 0
scoreboard players set @s DVZ.leap.cool 0
scoreboard players set @s DVZ.summon.ticks 0
scoreboard players set @s DVZ.summon.cool 0
scoreboard players set @s DVZ.evothrow.ticks 0
scoreboard players set @s DVZ.evothrow.cool 0
scoreboard players set @s DVZ.witchdebuff.ticks 0
scoreboard players set @s DVZ.witchdebuff.cool 0
scoreboard players set @s DVZ.witchbuff.ticks 0
scoreboard players set @s DVZ.witchbuff.cool 0
scoreboard players set @s DVZ.witchfrog.ticks 0
scoreboard players set @s DVZ.witchfrog.cool 0
scoreboard players set @s DVZ.enchanterbook.ticks 0
scoreboard players set @s DVZ.enchanterbook.cool 0
scoreboard players set @s DVZ.enchanterloop.ticks 0
scoreboard players set @s DVZ.magmathrow.ticks 0
scoreboard players set @s DVZ.magmathrow.cool 0
scoreboard players set @s DVZ.allaypick.ticks 0
scoreboard players set @s DVZ.allaypick.cool 0
scoreboard players set @s DVZ.slimespit.ticks 0
scoreboard players set @s DVZ.slimespit.cool 0
scoreboard players set @s DVZ.slimebomb.ticks 0
scoreboard players set @s DVZ.slimebomb.cool 0
scoreboard players set @s DVZ.slimeexplode.ticks 0
scoreboard players set @s DVZ.slimeexplode.cool 0
scoreboard players set @s DVZ.evokersummon.ticks 0
scoreboard players set @s DVZ.evokersummon.cool 0
scoreboard players set @s DVZ.evokerbomb.ticks 0
scoreboard players set @s DVZ.evokerbomb.cool 0
scoreboard players set @s DVZ.evokerward.ticks 0
scoreboard players set @s DVZ.evokerward.cool 0
scoreboard players set @s DVZ.shulkerwall.ticks 0
scoreboard players set @s DVZ.shulkerwall.cool 0
scoreboard players set @s DVZ.shulkertrap.ticks 0
scoreboard players set @s DVZ.shulkertrap.cool 0
scoreboard players set @s DVZ.shulkerbomb.ticks 0
scoreboard players set @s DVZ.shulkerbomb.cool 0
scoreboard players set @s DVZ.batscan.ticks 0
scoreboard players set @s DVZ.batscan.cool 0
scoreboard players set @s DVZ.batdark.ticks 0
scoreboard players set @s DVZ.batdark.cool 0
scoreboard players set @s DVZ.piglinrefill.ticks 0
scoreboard players set @s DVZ.piglinrefill.cool 0

#Miniboss
scoreboard players set @s DVZ.ghast.ticks 0
scoreboard players set @s DVZ.ghast.cool 0
scoreboard players set @s DVZ.fballage.cool 0
scoreboard players set @s DVZ.smash.ticks 0
scoreboard players set @s DVZ.smash.cool 0
scoreboard players set @s DVZ.vindic.ticks 0
scoreboard players set @s DVZ.vindic.cool 0
#Boss
scoreboard players set @s DVZ.breath.cool 0
scoreboard players set @s DVZ.breath.ticks 0
scoreboard players set @s DVZ.Akill.cool 0
scoreboard players set @s DVZ.Akill.ticks 0
scoreboard players set @s DVZ.Wskull.cool 0
scoreboard players set @s DVZ.Wskull.ticks 0
scoreboard players set @s DVZ.Gbeam.cool 0
scoreboard players set @s DVZ.Gbeam.ticks 0
#Hero
scoreboard players set @s DVZ.flail.cool 0
scoreboard players set @s DVZ.flail.ticks 0
scoreboard players set @s DVZ.ruby.cool 0
scoreboard players set @s DVZ.ruby.ticks 0
scoreboard players set @s DVZ.rally.cool 0
scoreboard players set @s DVZ.rally.ticks 0
scoreboard players set @s DVZ.rstar.cool 0
scoreboard players set @s DVZ.rstar.ticks 0
scoreboard players set @s DVZ.drain.cool 0
scoreboard players set @s DVZ.drain.ticks 0
scoreboard players set @s DVZ.sfury.cool 0
scoreboard players set @s DVZ.sfury.ticks 0

### Dwarf Summoning Items
scoreboard players set @s DVZ.alch.potions 0
scoreboard players set @s DVZ.baker.bricks 0
scoreboard players set @s DVZ.smith.clocks 0
scoreboard players set @s DVZ.ench.emerald 0
scoreboard players set @s DVZ.tailor.dyes 0
scoreboard players set @s DVZ.legend.shard 0

#Zombie Block Alterations
scoreboard players set @s DVZ.layegg.check 0
scoreboard players set @s DVZ.layegg.block 0
scoreboard players set @s DVZ.silver.kill 0
scoreboard players set @s DVZ.roar.check 0
scoreboard players set @s DVZ.pigeat.check 0
scoreboard players set @s DVZ.icy.check 0
scoreboard players set @s DVZ.smash.check 0

#Dwarves' mana regen / Zombies' suicide pill
scoreboard players set @s DVZ.mana.ticks 0
#scoreboard players set @s DVZ.suicide.cool 0
scoreboard players set @s DVZ.suicide.tick 0

#####END OF SCOREBOARD RESETS

#Bossbars
bossbar set dvz:bosstimer players @a
bossbar set dvz:dragonhealth players @a
bossbar set dvz:guardianhealth players @a
bossbar set dvz:assassintimer players @a

clear @s
effect clear @s

gamemode survival @s
tp @s @e[tag=worldspawn,limit=1]

give @s written_book{pages:['["",{"text":"     ","bold":true,"color":"dark_aqua"},{"text":"OG","bold":true,"underlined":true,"color":"dark_aqua"},{"text":"v","bold":true,"underlined":true,"color":"gold"},{"text":"Z","bold":true,"underlined":true,"color":"dark_red"},{"text":" rules","color":"reset","bold":true,"underlined":true},{"text":"\\nGeneral rules after.\\n","color":"reset"},{"text":"DvZ Rules:","bold":true,"underlined":true,"color":"gold"},{"text":"\\n1: No hacking (duh)\\n2: Monsters cannot combine kits\\n3: Monsters cannot give items to dwarves 4: Dwarves cannot give items to monsters\\n5: Teamkilling is not allowed\\n6: Bosses cannot break the gold/shrine","color":"reset"}]','{"text":"7: Dying intentionally as a dwarf is considered gamethrowing\\n8: Snowman Jump Boost Glitch is not allowed\\n9: Be respectful, especially towards Admins, Mods, or Trial Mods\\n "}','{"text":"10: No gamethrowing -this includes but is not limited to throwing blocks on the ground, dying intentionally as a dwarf, leaving items in a chest as a dwarf for you to grab as a mob, mining the shrine as a dwarf\\n11: No spamming chat 12: If muted, you cannot use #-ingame to get around your mute\\n "}','{"text":"13: Hero dwarves (Dragon Warrior, Wither Warrior, Dwarven Guard, and Assassin Slayer) cannot use any Legendary items.\\n14: Posting any IP address or real life coordinates, real or fake, will result in an unappealable, immediate ban."}','["",{"text":"General rules:","bold":true,"color":"gold"},{"text":"\\n-Don\'t be horrible.\\n-Don\'t spread hate: ANY topic that attacks or makes light of a subject that targets or may offend a specific demographic is strictly forbidden. This includes IGNs. Make sure what you say is ","color":"reset"},{"text":"unmistakably ","italic":true},{"text":"a joke. If someone says something that annoys, disturbs, or offends\\n ","color":"reset"}]','["",{"text":"you, report it to a moderator. Try to be the bigger person and don\'t start an argument!\\n-Don\'t spam.\\n-Use common sense\\n\\n\\n"},{"text":"Join our discord!","color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/NUgCXuS"},"hoverEvent":{"action":"show_text","contents":"Click to join"}}]'],title:"OGvZ server rule book",author:"OGvZ Server",display:{Lore:["DvZ-specific rules and general rules."]}}
execute if entity @e[tag=dvztimer,tag=begin,scores={DVZ.timer=..36000}] run function dvz:spawn
execute if entity @e[tag=dvztimer,tag=fight] run tag @s add fight
execute if entity @e[tag=dvztimer,tag=begin,scores={DVZ.timer=36000..}] run kill @s
tag @s add DVZready