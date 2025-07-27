#> Description: Reworks how natural regeneration works.
#> Comment: Because Mojang devs are assholes and didn't let us use ticks for duration in the /effect command, area effect clouds had to be used.

# Create a temporary scoreboard.
scoreboard objectives add temp.max_health dummy

# Store player's maximum health attribute into a temporary scoreboard.
execute store result score @s temp.max_health run attribute @s minecraft:max_health get

# If the player has full health or if they dropped down to or below 6 hunger, reset their natural regeneration timer.
execute if score @s ogvz.misc.health = @s temp.max_health run scoreboard players set @s ogvz.misc.natural_regeneration_timer 0
execute as @s[scores={ogvz.misc.food=..6}] run scoreboard players set @s ogvz.misc.natural_regeneration_timer 0

# If the player is below full health and they have 7+ hunger, increment their natural regeneration timer and give them 75 exhaustion.
execute as @s[scores={ogvz.misc.food=7..}] if score @s ogvz.misc.health < @s temp.max_health run scoreboard players add @s ogvz.misc.natural_regeneration_timer 1
execute as @s[scores={ogvz.misc.food=7..}] if score @s ogvz.misc.health < @s temp.max_health run summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:-1,Radius:0.0f,Duration:1,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:hunger",amplifier:14,duration:1,show_particles:0b,show_icon:0b,ambient:1b}]}}

# If the player's natural regeneration timer has reached 40 ticks (2 seconds), then heal them for 1 hp and reset the timer.
execute as @s[scores={ogvz.misc.natural_regeneration_timer=40..}] run summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:-1,Radius:0.0f,Duration:1,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:5,duration:1,show_particles:0b,show_icon:0b,ambient:1b}]}}
execute as @s[scores={ogvz.misc.natural_regeneration_timer=40..}] run scoreboard players set @s ogvz.misc.natural_regeneration_timer 0

# Remove the temporary scoreboard.
scoreboard objectives remove temp.max_health
