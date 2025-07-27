#> Description: Creates scoreboards and initializes the game scoreboards.
#> Note: All game scoreboards are stored in &ogvz, with the exception of ogvz.game.player_count which is stored in Dwarves and Zombies.

### Game Scoreboards
# Times the datapack was reloaded scoreboard
scoreboard objectives add ogvz.game.reload_count dummy
# Game time in ticks scoreboard
scoreboard objectives add ogvz.game.timer dummy
# Player count scoreboard
scoreboard objectives add ogvz.game.player_count dummy
# Zombie spawn count scoreboard
scoreboard objectives add ogvz.game.zombie_spawn_count dummy
# Shrine health scoreboard
scoreboard objectives add ogvz.game.shrine_health dummy
# Game phase scoreboard:
# 0 - Setup phase
# 1 - Build phase
# 2 - Boss phase
# 3 - Plague phase
# 4 - Zombie phase
# 5 - Last Stand phase
# 6 - Game Over phase
scoreboard objectives add ogvz.game.phase dummy
# Selected boss scoreboard
# 0 - none
# 1 - AI Ender Dragon
# 2 - AI Wither
# 3 - AI Elder Guardian
# 4 - Assassin
scoreboard objectives add ogvz.game.boss dummy
# Minimum/Maximum required zombie players to start the zombie phase in percentage (will be rounded up).
scoreboard objectives add ogvz.game.zombie_players.percentage.min dummy
scoreboard objectives add ogvz.game.zombie_players.percentage.max dummy

### Game Scoreboards Setup
scoreboard players add &ogvz ogvz.game.reload_count 1
scoreboard players reset Dwarves ogvz.game.player_count
scoreboard players reset Zombies ogvz.game.player_count
scoreboard objectives modify ogvz.game.player_count displayname {text:"\u1000",font:"ogvz:custom"}
scoreboard objectives modify ogvz.game.player_count numberformat styled {color:"red",bold:true}
scoreboard objectives setdisplay sidebar ogvz.game.player_count
scoreboard players set &ogvz ogvz.game.timer 0
scoreboard players set &ogvz ogvz.game.shrine_health 0
scoreboard players set &ogvz ogvz.game.phase 0
scoreboard players set &ogvz ogvz.game.boss 0
scoreboard players set &ogvz ogvz.game.zombie_players.percentage.min 35
scoreboard players set &ogvz ogvz.game.zombie_players.percentage.max 50

### Right click scoreboards
scoreboard objectives add ogvz.rclick.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ogvz.rclick.cooldown dummy
scoreboard objectives add ogvz.rclick.active_id dummy

### Inventory info scoreboards
scoreboard objectives add ogvz.inventory.lava_bucket dummy
scoreboard objectives add ogvz.inventory.shrine_tape_measure dummy
scoreboard objectives add ogvz.inventory.soulstone dummy
scoreboard objectives add ogvz.inventory.undying_bond dummy
scoreboard objectives add ogvz.inventory.sharing_grace dummy
scoreboard objectives add ogvz.inventory.flutter dummy
scoreboard objectives add ogvz.inventory.hover dummy
scoreboard objectives add ogvz.inventory.evolution dummy

### Enchantment scoreboards
scoreboard objectives add ogvz.midair_jump.jumps dummy
scoreboard objectives add ogvz.midair_jump.button_state.current dummy
scoreboard objectives add ogvz.midair_jump.button_state.previous dummy
scoreboard objectives add ogvz.midair_jump.is_airborne.current dummy
scoreboard objectives add ogvz.midair_jump.is_airborne.previous dummy

### Miscellaneous scoreboards
scoreboard objectives add ogvz.misc.health health
scoreboard objectives add ogvz.misc.food food
scoreboard objectives add ogvz.misc.natural_regeneration_timer dummy
scoreboard objectives add ogvz.misc.leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add ogvz.misc.custom_bar_hide.ticks dummy
scoreboard objectives add ogvz.misc.air_toggle dummy

### Marker scoreboards
scoreboard objectives add ogvz.marker.glowing_shell.duration.ticks dummy
scoreboard objectives add ogvz.marker.glowing_shell.duration.seconds dummy
scoreboard objectives add ogvz.marker.pollen_bomb.heal_cooldown.ticks dummy
scoreboard objectives add ogvz.marker.pollen_bomb.lifetime.ticks dummy
scoreboard objectives add ogvz.marker.ender_portal.animation.ticks dummy

### Dwarf scoreboards
# All dwarves
scoreboard objectives add ogvz.dwarf.mana_buildup.mana dummy
scoreboard objectives add ogvz.dwarf.mana_buildup.micromana dummy
scoreboard objectives add ogvz.dwarf.pearl_rod.cooldown.ticks dummy
scoreboard objectives add ogvz.dwarf.pearl_rod.cooldown.seconds dummy
scoreboard objectives add ogvz.dwarf.pearl_rod.warmup.ticks dummy
scoreboard objectives add ogvz.dwarf.pearl_rod.warmup.seconds dummy
scoreboard objectives add ogvz.dwarf.oceans_pearl_buff.cooldown.ticks dummy
scoreboard objectives add ogvz.dwarf.oceans_pearl_buff.cooldown.seconds dummy

# Builder
scoreboard objectives add ogvz.builder.summoning_book.cooldown.ticks dummy
scoreboard objectives add ogvz.builder.summoning_book.cooldown.seconds dummy

### Dwarf hero scoreboards
# Dragon Warrior
scoreboard objectives add ogvz.dragon_warrior.dragon_scale.cooldown.ticks dummy
scoreboard objectives add ogvz.dragon_warrior.dragon_scale.cooldown.seconds dummy
scoreboard objectives add ogvz.dragon_warrior.dragon_scale.damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks dummy
scoreboard objectives add ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds dummy

# Wither Warrior
scoreboard objectives add ogvz.wither_warrior.soul_charges.count dummy
scoreboard objectives add ogvz.wither_warrior.phantom_slash.cooldown.ticks dummy
scoreboard objectives add ogvz.wither_warrior.phantom_slash.cooldown.seconds dummy

# Assassin Slayer
scoreboard objectives add ogvz.assassin_slayer.assassinate.cooldown.ticks dummy
scoreboard objectives add ogvz.assassin_slayer.assassinate.cooldown.seconds dummy
scoreboard objectives add ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks dummy
scoreboard objectives add ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds dummy
scoreboard objectives add ogvz.assassin_slayer.mana_star.cooldown.ticks dummy
scoreboard objectives add ogvz.assassin_slayer.mana_star.cooldown.seconds dummy

# Dwarven Guard
scoreboard objectives add ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks dummy
scoreboard objectives add ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds dummy
scoreboard objectives add ogvz.dwarven_guard.oceans_pearl.cooldown.ticks dummy
scoreboard objectives add ogvz.dwarven_guard.oceans_pearl.cooldown.seconds dummy
scoreboard objectives add ogvz.dwarven_guard.glowing_shell.cooldown.ticks dummy
scoreboard objectives add ogvz.dwarven_guard.glowing_shell.cooldown.seconds dummy

### Zombie scoreboards
# All zombies
scoreboard objectives add ogvz.zombie.punish_timer.ticks dummy
scoreboard objectives add ogvz.zombie.ender_eye.cooldown.ticks dummy
scoreboard objectives add ogvz.zombie.ender_eye.cooldown.seconds dummy
scoreboard objectives add ogvz.zombie.ender_eye.warmup.ticks dummy
scoreboard objectives add ogvz.zombie.ender_eye.warmup.seconds dummy

# Guardian
scoreboard objectives add ogvz.guardian.beam.cooldown.ticks dummy
scoreboard objectives add ogvz.guardian.beam.cooldown.seconds dummy

# Spider
scoreboard objectives add ogvz.spider.web.cooldown.ticks dummy
scoreboard objectives add ogvz.spider.web.cooldown.seconds dummy

# Blaze
scoreboard objectives add ogvz.blaze.fireball.cooldown.ticks dummy
scoreboard objectives add ogvz.blaze.fireball.cooldown.seconds dummy
scoreboard objectives add ogvz.blaze.fireball.lifetime.ticks dummy
scoreboard objectives add ogvz.blaze.firefly.cooldown.ticks dummy
scoreboard objectives add ogvz.blaze.firefly.cooldown.seconds dummy
scoreboard objectives add ogvz.blaze.firefly.duration.ticks dummy
scoreboard objectives add ogvz.blaze.heat_wave.cooldown.ticks dummy
scoreboard objectives add ogvz.blaze.heat_wave.cooldown.seconds dummy

# Chicken Nugget
scoreboard objectives add ogvz.chicken_nugget.eggsplosive_egg.cooldown.ticks dummy
scoreboard objectives add ogvz.chicken_nugget.eggsplosive_egg.cooldown.seconds dummy

# Chillager
scoreboard objectives add ogvz.chillager.invisibility.cooldown.ticks dummy
scoreboard objectives add ogvz.chillager.invisibility.cooldown.seconds dummy
scoreboard objectives add ogvz.chillager.invisibility.duration dummy
scoreboard objectives add ogvz.chillager.ice_bridge.cooldown.ticks dummy
scoreboard objectives add ogvz.chillager.ice_bridge.cooldown.seconds dummy
scoreboard objectives add ogvz.chillager.ice_bridge.ice_melt.ticks dummy

# Ocelot
scoreboard objectives add ogvz.ocelot.mana_steal.cooldown.ticks dummy
scoreboard objectives add ogvz.ocelot.mana_steal.cooldown.seconds dummy

# Phantom
scoreboard objectives add ogvz.phantom.used.firework_rocket minecraft.used:minecraft.firework_rocket
scoreboard objectives add ogvz.phantom.delirium.cooldown.ticks dummy
scoreboard objectives add ogvz.phantom.delirium.cooldown.seconds dummy

# Snowman
scoreboard objectives add ogvz.snowman.snowball_barrage.cooldown.ticks dummy
scoreboard objectives add ogvz.snowman.snowball_barrage.cooldown.seconds dummy
scoreboard objectives add ogvz.snowman.freeze.cooldown.ticks dummy
scoreboard objectives add ogvz.snowman.freeze.cooldown.seconds dummy

# Bee
scoreboard objectives add ogvz.bee.honey.cooldown.ticks dummy
scoreboard objectives add ogvz.bee.honey.cooldown.seconds dummy
scoreboard objectives add ogvz.bee.pollen_bomb.cooldown.ticks dummy
scoreboard objectives add ogvz.bee.pollen_bomb.cooldown.seconds dummy

# Piglin
scoreboard objectives add ogvz.piglin.used.golden_pickaxe minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add ogvz.piglin.evolution.progress dummy

# Silverfish
scoreboard objectives add ogvz.silverfish.roar.cooldown.ticks dummy
scoreboard objectives add ogvz.silverfish.roar.cooldown.seconds dummy
scoreboard objectives add ogvz.silverfish.silverfish_egg.count dummy
scoreboard objectives add ogvz.silverfish.silverfish_egg.warmup.ticks dummy
scoreboard objectives add ogvz.silverfish.lifetime.ticks dummy

# Enderman
scoreboard objectives add ogvz.enderman.teleport.cooldown.ticks dummy
scoreboard objectives add ogvz.enderman.teleport.cooldown.seconds dummy
scoreboard objectives add ogvz.enderman.create_portal.cooldown.ticks dummy
scoreboard objectives add ogvz.enderman.create_portal.cooldown.seconds dummy
scoreboard objectives add ogvz.enderman.create_portal.warmup.ticks dummy
scoreboard objectives add ogvz.enderman.create_portal.warmup.seconds dummy

# Golem
scoreboard objectives add ogvz.golem.fissure.cooldown.ticks dummy
scoreboard objectives add ogvz.golem.fissure.cooldown.seconds dummy
scoreboard objectives add ogvz.golem.leap.cooldown.ticks dummy
scoreboard objectives add ogvz.golem.leap.cooldown.seconds dummy
