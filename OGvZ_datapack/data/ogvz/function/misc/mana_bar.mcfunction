#> Description: Displays the amount of mana a player has on you experience bar (capped at level 100)

# Create temporary scoreboards.
scoreboard objectives add temp.current_mana.1 dummy
scoreboard objectives add temp.current_mana.2 dummy

# Save the player's current mana into the scoreboard.
execute store result score @s temp.current_mana.1 run experience query @s levels

# Copy the value to another scoreboard.
execute store result score @s temp.current_mana.2 run scoreboard players get @s temp.current_mana.1

# Set the player's exp level to 51 (301 exp to level up).
experience set @s 51 levels

# Reset bar.
experience set @s 0 points

### Properly set the exp bar.
# If the player has 100 or more mana, just fill out the mana bar.
execute as @s[scores={temp.current_mana.1=100..}] run experience add @s 300 points
execute as @s[scores={temp.current_mana.1=100..}] run scoreboard players set @s temp.current_mana.1 0
# If the player has less than 100 mana, use powers of 2 to properly fill their mana bar.
execute as @s[scores={temp.current_mana.1=64..}] run experience add @s 192 points
execute as @s[scores={temp.current_mana.1=64..}] run scoreboard players remove @s temp.current_mana.1 64
execute as @s[scores={temp.current_mana.1=32..}] run experience add @s 96 points
execute as @s[scores={temp.current_mana.1=32..}] run scoreboard players remove @s temp.current_mana.1 32
execute as @s[scores={temp.current_mana.1=16..}] run experience add @s 48 points
execute as @s[scores={temp.current_mana.1=16..}] run scoreboard players remove @s temp.current_mana.1 16
execute as @s[scores={temp.current_mana.1=8..}] run experience add @s 24 points
execute as @s[scores={temp.current_mana.1=8..}] run scoreboard players remove @s temp.current_mana.1 8
execute as @s[scores={temp.current_mana.1=4..}] run experience add @s 12 points
execute as @s[scores={temp.current_mana.1=4..}] run scoreboard players remove @s temp.current_mana.1 4
execute as @s[scores={temp.current_mana.1=2..}] run experience add @s 6 points
execute as @s[scores={temp.current_mana.1=2..}] run scoreboard players remove @s temp.current_mana.1 2
execute as @s[scores={temp.current_mana.1=1..}] run experience add @s 3 points

# Reset exp levels.
experience set @s 0 levels

# Return the players mana/levels.
execute as @s[scores={temp.current_mana.2=8192..}] run experience add @s 8192 levels
execute as @s[scores={temp.current_mana.2=8192..}] run scoreboard players remove @s temp.current_mana.2 8192
execute as @s[scores={temp.current_mana.2=4096..}] run experience add @s 4096 levels
execute as @s[scores={temp.current_mana.2=4096..}] run scoreboard players remove @s temp.current_mana.2 4096
execute as @s[scores={temp.current_mana.2=2048..}] run experience add @s 2048 levels
execute as @s[scores={temp.current_mana.2=2048..}] run scoreboard players remove @s temp.current_mana.2 2048
execute as @s[scores={temp.current_mana.2=1024..}] run experience add @s 1024 levels
execute as @s[scores={temp.current_mana.2=1024..}] run scoreboard players remove @s temp.current_mana.2 1024
execute as @s[scores={temp.current_mana.2=512..}] run experience add @s 512 levels
execute as @s[scores={temp.current_mana.2=512..}] run scoreboard players remove @s temp.current_mana.2 512
execute as @s[scores={temp.current_mana.2=256..}] run experience add @s 256 levels
execute as @s[scores={temp.current_mana.2=256..}] run scoreboard players remove @s temp.current_mana.2 256
execute as @s[scores={temp.current_mana.2=128..}] run experience add @s 128 levels
execute as @s[scores={temp.current_mana.2=128..}] run scoreboard players remove @s temp.current_mana.2 128
execute as @s[scores={temp.current_mana.2=64..}] run experience add @s 64 levels
execute as @s[scores={temp.current_mana.2=64..}] run scoreboard players remove @s temp.current_mana.2 64
execute as @s[scores={temp.current_mana.2=32..}] run experience add @s 32 levels
execute as @s[scores={temp.current_mana.2=32..}] run scoreboard players remove @s temp.current_mana.2 32
execute as @s[scores={temp.current_mana.2=16..}] run experience add @s 16 levels
execute as @s[scores={temp.current_mana.2=16..}] run scoreboard players remove @s temp.current_mana.2 16
execute as @s[scores={temp.current_mana.2=8..}] run experience add @s 8 levels
execute as @s[scores={temp.current_mana.2=8..}] run scoreboard players remove @s temp.current_mana.2 8
execute as @s[scores={temp.current_mana.2=4..}] run experience add @s 4 levels
execute as @s[scores={temp.current_mana.2=4..}] run scoreboard players remove @s temp.current_mana.2 4
execute as @s[scores={temp.current_mana.2=2..}] run experience add @s 2 levels
execute as @s[scores={temp.current_mana.2=2..}] run scoreboard players remove @s temp.current_mana.2 2
execute as @s[scores={temp.current_mana.2=1..}] run experience add @s 1 levels

# Remove the temporary scoreboards.
scoreboard objectives remove temp.current_mana.1
scoreboard objectives remove temp.current_mana.2
