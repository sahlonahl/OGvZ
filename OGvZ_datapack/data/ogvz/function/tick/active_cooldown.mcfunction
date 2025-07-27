#> Description: Controls scoreboard objectives related to all active items. Also plays a jingle and diplays a message when a player finishes their cooldown.
#> Note: Also handles warmups.
#> Comment: Uses a dual system where needed to track ticks and seconds. Necessary because seconds are displayed in prompt messages, whereas ticks are the base minecraft time interval.

# Right click
execute as @s[scores={ogvz.rclick.cooldown=1..}] run scoreboard players remove @s ogvz.rclick.cooldown 1

# All - Custom Bar (hide)
execute as @s[scores={ogvz.misc.custom_bar_hide.ticks=1..}] run scoreboard players remove @s ogvz.misc.custom_bar_hide.ticks 1

# Builder - Summoning Book
execute as @s[scores={ogvz.builder.summoning_book.cooldown.seconds=1..}] run scoreboard players add @s ogvz.builder.summoning_book.cooldown.ticks 1
execute as @s[scores={ogvz.builder.summoning_book.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.builder.summoning_book.cooldown.seconds 1
execute as @s[scores={ogvz.builder.summoning_book.cooldown.ticks=20..,ogvz.builder.summoning_book.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.builder.summoning_book.cooldown.ticks=20..,ogvz.builder.summoning_book.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Summoning Book]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.builder.summoning_book.cooldown.ticks=20..}] run scoreboard players set @s ogvz.builder.summoning_book.cooldown.ticks 0

# Dwarves - Pearl Rod (cooldown)
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarf.pearl_rod.cooldown.ticks 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarf.pearl_rod.cooldown.seconds 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..,ogvz.dwarf.pearl_rod.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..,ogvz.dwarf.pearl_rod.cooldown.seconds=0}] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0.5 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..,ogvz.dwarf.pearl_rod.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Pearl Rod]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarf.pearl_rod.cooldown.ticks 0

# Dwarves - Pearl Rod (warmup)
execute as @s[scores={ogvz.dwarf.pearl_rod.warmup.seconds=1..}] run scoreboard players add @s ogvz.dwarf.pearl_rod.warmup.ticks 1
execute as @s[scores={ogvz.dwarf.pearl_rod.warmup.ticks=20..}] run scoreboard players remove @s ogvz.dwarf.pearl_rod.warmup.seconds 1
execute as @s[scores={ogvz.dwarf.pearl_rod.warmup.ticks=20..}] run scoreboard players set @s ogvz.dwarf.pearl_rod.warmup.ticks 0

# Dwarves - Ocean's Pearl (buff)
execute as @s[scores={ogvz.dwarf.oceans_pearl_buff.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarf.oceans_pearl_buff.cooldown.ticks 1
execute as @s[scores={ogvz.dwarf.oceans_pearl_buff.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarf.oceans_pearl_buff.cooldown.seconds 1
execute as @s[scores={ogvz.dwarf.oceans_pearl_buff.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarf.oceans_pearl_buff.cooldown.ticks 0

# Dragon Warrior - Dwarven Ruby
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dragon_warrior.dragon_scale.cooldown.ticks 1
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dragon_warrior.dragon_scale.cooldown.seconds 1
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.ticks=20..,ogvz.dragon_warrior.dragon_scale.cooldown.seconds=0}] run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 1 1
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.ticks=20..,ogvz.dragon_warrior.dragon_scale.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Dragon Scale]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dragon_warrior.dragon_scale.cooldown.ticks 0

# Dragon Warrior - Dwarven Ruby
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks 1
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds 1
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..,ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=0}] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..,ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Dwarven Ruby]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks 0

# Wither Warrior - Phantom Slash
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.seconds=1..}] run scoreboard players add @s ogvz.wither_warrior.phantom_slash.cooldown.ticks 1
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.wither_warrior.phantom_slash.cooldown.seconds 1
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.ticks=20..,ogvz.wither_warrior.phantom_slash.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.ticks=20..,ogvz.wither_warrior.phantom_slash.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Phantom Slash]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.ticks=20..}] run scoreboard players set @s ogvz.wither_warrior.phantom_slash.cooldown.ticks 0

# Assassin Slayer - Assassinate
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.seconds=1..}] run scoreboard players add @s ogvz.assassin_slayer.assassinate.cooldown.ticks 1
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.assassin_slayer.assassinate.cooldown.seconds 1
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.ticks=20..,ogvz.assassin_slayer.assassinate.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.ticks=20..,ogvz.assassin_slayer.assassinate.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Assassinate]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.ticks=20..}] run scoreboard players set @s ogvz.assassin_slayer.assassinate.cooldown.ticks 0

# Assassin Slayer - Cloak of Shadows
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=1..}] run scoreboard players add @s ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks 1
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds 1
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..,ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..,ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Cloak of Shadows]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..}] run scoreboard players set @s ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks 0

# Assassin Slayer - Mana Star
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.seconds=1..}] run scoreboard players add @s ogvz.assassin_slayer.mana_star.cooldown.ticks 1
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.assassin_slayer.mana_star.cooldown.seconds 1
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.ticks=20..,ogvz.assassin_slayer.mana_star.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.ticks=20..,ogvz.assassin_slayer.mana_star.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Mana Star]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.ticks=20..}] run scoreboard players set @s ogvz.assassin_slayer.mana_star.cooldown.ticks 0

# Dwarven Guard - Elder Guardian Eye
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks 1
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds 1
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..,ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..,ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Elder Guardian Eye]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks 0

# Dwarven Guard - Ocean's Pearl
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarven_guard.oceans_pearl.cooldown.ticks 1
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarven_guard.oceans_pearl.cooldown.seconds 1
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..,ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=0}] run playsound minecraft:block.conduit.attack.target player @s ~ ~ ~ 1 1 1
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..,ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Ocean's Pearl]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarven_guard.oceans_pearl.cooldown.ticks 0

# Dwarven Guard - Glowing Shell
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarven_guard.glowing_shell.cooldown.ticks 1
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarven_guard.glowing_shell.cooldown.seconds 1
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.ticks=20..,ogvz.dwarven_guard.glowing_shell.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.ticks=20..,ogvz.dwarven_guard.glowing_shell.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Glowing Shell]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarven_guard.glowing_shell.cooldown.ticks 0

# Guardian - Beam
execute as @s[scores={ogvz.guardian.beam.cooldown.seconds=1..}] run scoreboard players add @s ogvz.guardian.beam.cooldown.ticks 1
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.guardian.beam.cooldown.seconds 1
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..,ogvz.guardian.beam.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..,ogvz.guardian.beam.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Beam]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players set @s ogvz.guardian.beam.cooldown.ticks 0

# Spider - Web
execute as @s[scores={ogvz.spider.web.cooldown.seconds=1..}] run scoreboard players add @s ogvz.spider.web.cooldown.ticks 1
execute as @s[scores={ogvz.spider.web.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.spider.web.cooldown.seconds 1
execute as @s[scores={ogvz.spider.web.cooldown.ticks=20..,ogvz.spider.web.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.spider.web.cooldown.ticks=20..,ogvz.spider.web.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Web]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.spider.web.cooldown.ticks=20..}] run scoreboard players set @s ogvz.spider.web.cooldown.ticks 0

# Blaze - Fireball
execute as @s[scores={ogvz.blaze.fireball.cooldown.seconds=1..}] run scoreboard players add @s ogvz.blaze.fireball.cooldown.ticks 1
execute as @s[scores={ogvz.blaze.fireball.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.blaze.fireball.cooldown.seconds 1
execute as @s[scores={ogvz.blaze.fireball.cooldown.ticks=20..,ogvz.blaze.fireball.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.blaze.fireball.cooldown.ticks=20..,ogvz.blaze.fireball.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Fireball]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.blaze.fireball.cooldown.ticks=20..}] run scoreboard players set @s ogvz.blaze.fireball.cooldown.ticks 0

# Blaze - Firefly
execute as @s[scores={ogvz.blaze.firefly.cooldown.seconds=1..}] run scoreboard players add @s ogvz.blaze.firefly.cooldown.ticks 1
execute as @s[scores={ogvz.blaze.firefly.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.blaze.firefly.cooldown.seconds 1
execute as @s[scores={ogvz.blaze.firefly.cooldown.ticks=20..,ogvz.blaze.firefly.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.blaze.firefly.cooldown.ticks=20..,ogvz.blaze.firefly.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Firefly]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.blaze.firefly.cooldown.ticks=20..}] run scoreboard players set @s ogvz.blaze.firefly.cooldown.ticks 0

# Blaze - Heat Wave
execute as @s[scores={ogvz.blaze.heat_wave.cooldown.seconds=1..}] run scoreboard players add @s ogvz.blaze.heat_wave.cooldown.ticks 1
execute as @s[scores={ogvz.blaze.heat_wave.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.blaze.heat_wave.cooldown.seconds 1
execute as @s[scores={ogvz.blaze.heat_wave.cooldown.ticks=20..,ogvz.blaze.heat_wave.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.blaze.heat_wave.cooldown.ticks=20..,ogvz.blaze.heat_wave.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Heat Wave]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.blaze.heat_wave.cooldown.ticks=20..}] run scoreboard players set @s ogvz.blaze.heat_wave.cooldown.ticks 0

# Chicken Nugget - Eggsplosive Egg
execute as @s[scores={ogvz.chicken_nugget.eggsplosive_egg.cooldown.seconds=1..}] run scoreboard players add @s ogvz.chicken_nugget.eggsplosive_egg.cooldown.ticks 1
execute as @s[scores={ogvz.chicken_nugget.eggsplosive_egg.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.chicken_nugget.eggsplosive_egg.cooldown.seconds 1
execute as @s[scores={ogvz.chicken_nugget.eggsplosive_egg.cooldown.ticks=20..,ogvz.chicken_nugget.eggsplosive_egg.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.chicken_nugget.eggsplosive_egg.cooldown.ticks=20..,ogvz.chicken_nugget.eggsplosive_egg.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Eggsplosive Egg]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.chicken_nugget.eggsplosive_egg.cooldown.ticks=20..}] run scoreboard players set @s ogvz.chicken_nugget.eggsplosive_egg.cooldown.ticks 0

# Chillager - Invisibility
execute as @s[scores={ogvz.chillager.invisibility.cooldown.seconds=1..}] run scoreboard players add @s ogvz.chillager.invisibility.cooldown.ticks 1
execute as @s[scores={ogvz.chillager.invisibility.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.chillager.invisibility.cooldown.seconds 1
execute as @s[scores={ogvz.chillager.invisibility.cooldown.ticks=20..,ogvz.chillager.invisibility.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.chillager.invisibility.cooldown.ticks=20..,ogvz.chillager.invisibility.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Invisibility]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.chillager.invisibility.cooldown.ticks=20..,ogvz.chillager.invisibility.cooldown.seconds=0}] run scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={ogvz.chillager.invisibility.cooldown.ticks=20..}] run scoreboard players set @s ogvz.chillager.invisibility.cooldown.ticks 0

# Chillager - Ice Bridge
execute as @s[scores={ogvz.chillager.ice_bridge.cooldown.seconds=1..}] run scoreboard players add @s ogvz.chillager.ice_bridge.cooldown.ticks 1
execute as @s[scores={ogvz.chillager.ice_bridge.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.chillager.ice_bridge.cooldown.seconds 1
execute as @s[scores={ogvz.chillager.ice_bridge.cooldown.ticks=20..,ogvz.chillager.ice_bridge.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.chillager.ice_bridge.cooldown.ticks=20..,ogvz.chillager.ice_bridge.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Ice Bridge]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.chillager.ice_bridge.cooldown.ticks=20..,ogvz.chillager.ice_bridge.cooldown.seconds=0}] run scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={ogvz.chillager.ice_bridge.cooldown.ticks=20..}] run scoreboard players set @s ogvz.chillager.ice_bridge.cooldown.ticks 0

# Ocelot - Mana Steal
execute as @s[scores={ogvz.ocelot.mana_steal.cooldown.seconds=1..}] run scoreboard players add @s ogvz.ocelot.mana_steal.cooldown.ticks 1
execute as @s[scores={ogvz.ocelot.mana_steal.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.ocelot.mana_steal.cooldown.seconds 1
execute as @s[scores={ogvz.ocelot.mana_steal.cooldown.ticks=20..,ogvz.ocelot.mana_steal.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.ocelot.mana_steal.cooldown.ticks=20..,ogvz.ocelot.mana_steal.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Mana Steal]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.ocelot.mana_steal.cooldown.ticks=20..}] run scoreboard players set @s ogvz.ocelot.mana_steal.cooldown.ticks 0

# Phantom - Delirium
execute as @s[scores={ogvz.phantom.delirium.cooldown.seconds=1..}] run scoreboard players add @s ogvz.phantom.delirium.cooldown.ticks 1
execute as @s[scores={ogvz.phantom.delirium.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.phantom.delirium.cooldown.seconds 1
execute as @s[scores={ogvz.phantom.delirium.cooldown.ticks=20..,ogvz.phantom.delirium.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.phantom.delirium.cooldown.ticks=20..,ogvz.phantom.delirium.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Delirium]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.phantom.delirium.cooldown.ticks=20..,ogvz.phantom.delirium.cooldown.seconds=0}] run scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={ogvz.phantom.delirium.cooldown.ticks=20..}] run scoreboard players set @s ogvz.phantom.delirium.cooldown.ticks 0

# Snowman - Snowball Barrage
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.seconds=1..}] run scoreboard players add @s ogvz.snowman.snowball_barrage.cooldown.ticks 1
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.snowman.snowball_barrage.cooldown.seconds 1
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..,ogvz.snowman.snowball_barrage.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..,ogvz.snowman.snowball_barrage.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Snowball Barrage]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..,ogvz.snowman.snowball_barrage.cooldown.seconds=0}] run scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players set @s ogvz.snowman.snowball_barrage.cooldown.ticks 0

# Snowman - Freeze
execute as @s[scores={ogvz.snowman.freeze.cooldown.seconds=1..}] run scoreboard players add @s ogvz.snowman.freeze.cooldown.ticks 1
execute as @s[scores={ogvz.snowman.freeze.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.snowman.freeze.cooldown.seconds 1
execute as @s[scores={ogvz.snowman.freeze.cooldown.ticks=20..,ogvz.snowman.freeze.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.snowman.freeze.cooldown.ticks=20..,ogvz.snowman.freeze.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Freeze]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.snowman.freeze.cooldown.ticks=20..,ogvz.snowman.freeze.cooldown.seconds=0}] run scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={ogvz.snowman.freeze.cooldown.ticks=20..}] run scoreboard players set @s ogvz.snowman.freeze.cooldown.ticks 0

# Bee - Honey
execute as @s[scores={ogvz.bee.honey.cooldown.seconds=1..}] run scoreboard players add @s ogvz.bee.honey.cooldown.ticks 1
execute as @s[scores={ogvz.bee.honey.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.bee.honey.cooldown.seconds 1
execute as @s[scores={ogvz.bee.honey.cooldown.ticks=20..,ogvz.bee.honey.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.bee.honey.cooldown.ticks=20..,ogvz.bee.honey.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Honey]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.bee.honey.cooldown.ticks=20..}] run scoreboard players set @s ogvz.bee.honey.cooldown.ticks 0

# Bee - Pollen Bomb
execute as @s[scores={ogvz.bee.pollen_bomb.cooldown.seconds=1..}] run scoreboard players add @s ogvz.bee.pollen_bomb.cooldown.ticks 1
execute as @s[scores={ogvz.bee.pollen_bomb.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.bee.pollen_bomb.cooldown.seconds 1
execute as @s[scores={ogvz.bee.pollen_bomb.cooldown.ticks=20..,ogvz.bee.pollen_bomb.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.bee.pollen_bomb.cooldown.ticks=20..,ogvz.bee.pollen_bomb.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Pollen Bomb]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.bee.pollen_bomb.cooldown.ticks=20..}] run scoreboard players set @s ogvz.bee.pollen_bomb.cooldown.ticks 0

# Silverfish - Roar
execute as @s[scores={ogvz.silverfish.roar.cooldown.seconds=1..}] run scoreboard players add @s ogvz.silverfish.roar.cooldown.ticks 1
execute as @s[scores={ogvz.silverfish.roar.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.silverfish.roar.cooldown.seconds 1
execute as @s[scores={ogvz.silverfish.roar.cooldown.ticks=20..,ogvz.silverfish.roar.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.silverfish.roar.cooldown.ticks=20..,ogvz.silverfish.roar.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Roar]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.silverfish.roar.cooldown.ticks=20..,ogvz.silverfish.roar.cooldown.seconds=0}] run scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={ogvz.silverfish.roar.cooldown.ticks=20..}] run scoreboard players set @s ogvz.silverfish.roar.cooldown.ticks 0

# Enderman - Teleport
execute as @s[scores={ogvz.enderman.teleport.cooldown.seconds=1..}] run scoreboard players add @s ogvz.enderman.teleport.cooldown.ticks 1
execute as @s[scores={ogvz.enderman.teleport.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.enderman.teleport.cooldown.seconds 1
execute as @s[scores={ogvz.enderman.teleport.cooldown.ticks=20..,ogvz.enderman.teleport.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.enderman.teleport.cooldown.ticks=20..,ogvz.enderman.teleport.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Teleport]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.enderman.teleport.cooldown.ticks=20..}] run scoreboard players set @s ogvz.enderman.teleport.cooldown.ticks 0

# Enderman - Create Portal (cooldown)
execute as @s[scores={ogvz.enderman.create_portal.cooldown.seconds=1..}] run scoreboard players add @s ogvz.enderman.create_portal.cooldown.ticks 1
execute as @s[scores={ogvz.enderman.create_portal.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.enderman.create_portal.cooldown.seconds 1
execute as @s[scores={ogvz.enderman.create_portal.cooldown.ticks=20..,ogvz.enderman.create_portal.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.enderman.create_portal.cooldown.ticks=20..,ogvz.enderman.create_portal.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Create Portal]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.enderman.create_portal.cooldown.ticks=20..}] run scoreboard players set @s ogvz.enderman.create_portal.cooldown.ticks 0

# Enderman - Create Portal (warmup)
execute as @s[scores={ogvz.enderman.create_portal.warmup.seconds=1..}] run scoreboard players add @s ogvz.enderman.create_portal.warmup.ticks 1
execute as @s[scores={ogvz.enderman.create_portal.warmup.ticks=20..}] run scoreboard players remove @s ogvz.enderman.create_portal.warmup.seconds 1
execute as @s[scores={ogvz.enderman.create_portal.warmup.ticks=20..}] run scoreboard players set @s ogvz.enderman.create_portal.warmup.ticks 0

# Zombies - Ender Eye (cooldown)
execute as @s[scores={ogvz.zombie.ender_eye.cooldown.seconds=1..}] run scoreboard players add @s ogvz.zombie.ender_eye.cooldown.ticks 1
execute as @s[scores={ogvz.zombie.ender_eye.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.zombie.ender_eye.cooldown.seconds 1
execute as @s[scores={ogvz.zombie.ender_eye.cooldown.ticks=20..,ogvz.zombie.ender_eye.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.zombie.ender_eye.cooldown.ticks=20..,ogvz.zombie.ender_eye.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Ender Eye]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.zombie.ender_eye.cooldown.ticks=20..}] run scoreboard players set @s ogvz.zombie.ender_eye.cooldown.ticks 0

# Zombies - Ender Eye (warmup)
execute as @s[scores={ogvz.zombie.ender_eye.warmup.seconds=1..}] run scoreboard players add @s ogvz.zombie.ender_eye.warmup.ticks 1
execute as @s[scores={ogvz.zombie.ender_eye.warmup.ticks=20..}] run scoreboard players remove @s ogvz.zombie.ender_eye.warmup.seconds 1
execute as @s[scores={ogvz.zombie.ender_eye.warmup.ticks=20..}] run scoreboard players set @s ogvz.zombie.ender_eye.warmup.ticks 0

# Golem - Fissure
execute as @s[scores={ogvz.golem.fissure.cooldown.seconds=1..}] run scoreboard players add @s ogvz.golem.fissure.cooldown.ticks 1
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.golem.fissure.cooldown.seconds 1
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..,ogvz.golem.fissure.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..,ogvz.golem.fissure.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Fissure]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players set @s ogvz.golem.fissure.cooldown.ticks 0

# Golem - Leap
execute as @s[scores={ogvz.golem.leap.cooldown.seconds=1..}] run scoreboard players add @s ogvz.golem.leap.cooldown.ticks 1
execute as @s[scores={ogvz.golem.leap.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.golem.leap.cooldown.seconds 1
execute as @s[scores={ogvz.golem.leap.cooldown.ticks=20..,ogvz.golem.leap.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.golem.leap.cooldown.ticks=20..,ogvz.golem.leap.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Leap]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={ogvz.golem.leap.cooldown.ticks=20..}] run scoreboard players set @s ogvz.golem.leap.cooldown.ticks 0
