#> Description: Air toggles the Air nbt of an entity.
#> Note: Air toggling is used to force server-client snyc.
#> Note: Set ogvz.misc.air_toggle to 0 to infinitely air toggle the entity.

# Copy the entity's air_toggle scoreboard into it's Air nbt.
execute store result entity @s Air short 1 run scoreboard players get @s ogvz.misc.air_toggle

# Decrement the air_toggle scoreboard by 1 if it isn't negative.
scoreboard players remove @s ogvz.misc.air_toggle 1

# Reset the air_toggle scoreboard if it was decremented to 0 (0 -> NULL).
scoreboard players reset @s[scores={ogvz.misc.air_toggle=0}] ogvz.misc.air_toggle

# If air_toggle is negative, infinitely change it between 0 and -1.
scoreboard players set @s[scores={ogvz.misc.air_toggle=..-2}] ogvz.misc.air_toggle 0
