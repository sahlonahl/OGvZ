#> Description: Called every tick to execute all game logic.
#> Comment: Should contain only function/schedule calls to keep things tidy.

# Game functions
execute as @a[tag=!ogvz.initialized] at @s run function ogvz:tick/player_join_server
execute as @a[scores={ogvz.misc.leave_game=1..}] at @s run function ogvz:tick/player_rejoin_server
execute as @a[tag=ogvz.kill] at @s run function ogvz:tick/kill_player
function ogvz:tick/timer
function ogvz:tick/day_time
function ogvz:tick/shrine_health
function ogvz:tick/update_bossbars
function ogvz:tick/update_sidebar
function ogvz:tick/phase_switch
function ogvz:tick/kill_entities
function ogvz:tick/permanent_effects
function ogvz:tick/particles
execute as @a at @s run function ogvz:tick/triggers
execute as @a at @s run function ogvz:tick/natural_regeneration
execute as @a at @s run function ogvz:tick/zones
execute as @a at @s run function ogvz:tick/frozen_custom_effect
execute as @a at @s run function ogvz:tick/dolphins_grace_nerf
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function ogvz:tick/adventure_mode_toggle
execute as @a[tag=ogvz.zombie,tag=!ogvz.zombie.class] at @s run function ogvz:tick/zombie_spawn_immobilize
execute as @e[type=minecraft:player,tag=ogvz.dead] at @s run function ogvz:tick/player_respawn
execute as @e[type=minecraft:item,tag=!ogvz.processed] at @s run function ogvz:tick/check_item
#execute as @e[scores={ogvz.misc.air_toggle=-2147483648..2147483647}] at @s run function ogvz:tick/air_toggle

# Detect functions
execute as @a at @s run function ogvz:tick/passive_detect
execute as @a at @s run function ogvz:tick/active_detect

# Cooldown/warmup/timer functions
execute as @a at @s run function ogvz:tick/active_cooldown
execute as @a[tag=ogvz.zombie.punish,tag=ogvz.zombie.class] at @s run function ogvz:tick/punish_timer

# Custom functions
execute as @a at @s run function ogvz:tick/custom_bars

# Multitick functions
function ogvz:tick/multitick

# Mana functions
execute as @a[tag=ogvz.dwarf,tag=ogvz.mana] at @s run function ogvz:tick/mana_buildup
execute as @a[tag=ogvz.mana,scores={ogvz.dwarf.mana_buildup.micromana=1000000..}] at @s run function ogvz:tick/micromana_add
execute as @a[tag=ogvz.mana,scores={ogvz.dwarf.mana_buildup.micromana=..-1000000}] at @s run function ogvz:tick/micromana_subtract
execute as @a[tag=ogvz.mana,scores={ogvz.dwarf.mana_buildup.mana=1..}] at @s run function ogvz:tick/mana_add
execute as @a[tag=ogvz.mana,scores={ogvz.dwarf.mana_buildup.mana=..-1}] at @s run function ogvz:tick/mana_subtract

# Misc functions
execute as @a[tag=ogvz.zombie] at @s run function ogvz:tick/innate_abilities
execute as @e[type=#minecraft:arrows,tag=!ogvz.arrow.processed] at @s run function ogvz:tick/arrow_check
