#> Description: Launches the player into the air.

# Transfer the (now old) current jump button state scoreboard to the previous jump button state scoreboard.
scoreboard players operation @s ogvz.midair_jump.button_state.previous = @s ogvz.midair_jump.button_state.current

# Get the new jump button state.
execute store success score @s ogvz.midair_jump.button_state.current run execute if predicate ogvz:input_jump_pressed

# Transfer the (now old) current is airborne scoreboard to the previous is airborne scoreboard.
scoreboard players operation @s ogvz.midair_jump.is_airborne.previous = @s ogvz.midair_jump.is_airborne.current

# Get the new is airborne score.
scoreboard players set @s ogvz.midair_jump.is_airborne.current 1
scoreboard players set @s[predicate=ogvz:is_on_ground] ogvz.midair_jump.is_airborne.current 0

# Reset midair jumps and return if the player is grounded.
execute as @s[scores={ogvz.midair_jump.is_airborne.current=0}] run return run scoreboard players set @s ogvz.midair_jump.jumps 0

# Return if the player was previously grounded (the player likely jumped).
execute as @s[scores={ogvz.midair_jump.is_airborne.previous=0}] run return 0

# Return if the player is swimming.
execute as @s[predicate=ogvz:is_swimming] run return 0

# Return if the player is riding something.
execute on vehicle run return 0

# Return if the jump button hasn't been pressed (hasn't went from being released to being held).
execute as @s[scores={ogvz.midair_jump.button_state.current=0}] run return 0
execute as @s[scores={ogvz.midair_jump.button_state.previous=1}] run return 0

# Create a temporary scoreboard.
scoreboard objectives add temp.midair_jump.max_jumps dummy

# Get the player's enchantment level and set it as the max jumps possible.
execute store result score @s temp.midair_jump.max_jumps run data get entity @s equipment.feet.components."minecraft:enchantments"."ogvz:midair_jump"

# Subtract your current jumps from your max jumps to get how many jumps you have left.
scoreboard players operation @s temp.midair_jump.max_jumps -= @s ogvz.midair_jump.jumps

# Return if you have 0 jumps left.
execute as @s[scores={temp.midair_jump.max_jumps=..0}] run return run scoreboard objectives remove temp.midair_jump.max_jumps

# Remove the temporary scoreboard.
scoreboard objectives remove temp.midair_jump.max_jumps

# Increment your jumps.
scoreboard players add @s ogvz.midair_jump.jumps 1

# Create a temporary scoreboard and store the player's jump boost amplifier into it.
scoreboard objectives add temp.jump_boost.amplifier dummy
execute store result score @s temp.jump_boost.amplifier run data get entity @s active_effects[{id:"minecraft:jump_boost"}].amplifier

# Create a temporary scoreboard and store the player's jump strength into it, then decrement it by the default value.
scoreboard objectives add temp.jump_strength dummy
execute store result score @s temp.jump_strength run attribute @s minecraft:jump_strength get 10
scoreboard players remove @s temp.jump_strength 4

# Store the player's y position into storage.
data modify storage ogvz:vector y set from entity @s Pos[1]

# Run a macro that resets the player's y motion.
execute as @s run function ogvz:macro/teleport_y with storage ogvz:vector

# Play a sound and show particles.
playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1 1
particle minecraft:dust_plume ~ ~ ~ 0 0 0 0.08 30

# Store the player's gamemode as a tag.
execute as @s[gamemode=creative] run tag @s add temp.gamemode.creative
execute as @s[gamemode=survival] run tag @s add temp.gamemode.survival
execute as @s[gamemode=adventure] run tag @s add temp.gamemode.adventure
execute as @s[gamemode=spectator] run tag @s add temp.gamemode.spectator

# Set the player's gamemode to creative, which has immunity to explosion damage.
gamemode creative

# Disable any knockback resistance the player has by multiplying it with x0.
attribute @s minecraft:explosion_knockback_resistance modifier add ogvz:temp.remove.knockback_resistance -1 add_multiplied_total

# Teleport the player 10000 blocks into the air, where the soon to be summon explosion cannot be heard or affect anything.
tp @s ~ ~10000 ~

# Summon an explosion by summoning an end crystals and damaging it.
execute at @s positioned ~ ~-6 ~ summon minecraft:end_crystal run damage @s 0

# Run 2 loops for extra explosions depending on the player's jump boost amplifier and jump strength attribute.
execute as @s[scores={temp.jump_boost.amplifier=1..}] at @s run function ogvz:enchantment/midair_jump_loop_1
execute as @s[scores={temp.jump_strength=1..}] at @s run function ogvz:enchantment/midair_jump_loop_2

# Teleport the player back to where they've been.
tp @s ~ ~ ~

# Remove the attribute that disables knockback resistance.
attribute @s minecraft:explosion_knockback_resistance modifier remove ogvz:temp.remove.knockback_resistance

# Restore the player's gamemode.
execute as @s[tag=temp.gamemode.creative] run gamemode creative @s
execute as @s[tag=temp.gamemode.survival] run gamemode survival @s
execute as @s[tag=temp.gamemode.adventure] run gamemode adventure @s
execute as @s[tag=temp.gamemode.spectator] run gamemode spectator @s

# Remove all temporary scoreboards.
scoreboard objectives remove temp.jump_boost.amplifier
scoreboard objectives remove temp.jump_strength

# Remove all temporary tags.
tag @s remove temp.gamemode.creative
tag @s remove temp.gamemode.survival
tag @s remove temp.gamemode.adventure
tag @s remove temp.gamemode.spectator
