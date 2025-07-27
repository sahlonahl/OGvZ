#> Description: Manages the lifetime of the mana zone created by the glowing shell.

# Kill if duration score has reached 0.
execute as @s[scores={ogvz.marker.glowing_shell.duration.seconds=..0}] run kill @s

# Decrement duration score.
execute as @s[scores={ogvz.marker.glowing_shell.duration.seconds=1..}] run scoreboard players add @s ogvz.marker.glowing_shell.duration.ticks 1
execute as @s[scores={ogvz.marker.glowing_shell.duration.ticks=20..}] run scoreboard players remove @s ogvz.marker.glowing_shell.duration.seconds 1
execute as @s[scores={ogvz.marker.glowing_shell.duration.ticks=20..}] run scoreboard players set @s ogvz.marker.glowing_shell.duration.ticks 0
