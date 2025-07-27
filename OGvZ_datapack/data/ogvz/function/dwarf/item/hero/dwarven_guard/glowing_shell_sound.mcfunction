#> Description: Periodically plays a sound.

# Return if a full second hasn't passed yet.
execute as @s[scores={ogvz.marker.glowing_shell.duration.ticks=1..}] run return 0

# Create temporary scoreboards.
scoreboard objectives add temp.duration.seconds dummy
scoreboard objectives add temp.modulo dummy

# Copy the duration seconds to the temporary scoreboard.
execute store result score @s temp.duration.seconds run scoreboard players get @s ogvz.marker.glowing_shell.duration.seconds

# Set the constant.
scoreboard players set @s temp.modulo 3

# Modulo the copied duration seconds.
scoreboard players operation @s temp.duration.seconds %= @s temp.modulo

# Play sound if the result of the modulo is 1.
execute as @s[scores={temp.duration.seconds=1}] run playsound minecraft:block.conduit.ambient player @a ~ ~ ~ 1 1

# Remove temporary scoreboards.
scoreboard objectives remove temp.duration.seconds
scoreboard objectives remove temp.modulo
