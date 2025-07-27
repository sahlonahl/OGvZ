#> Description: Play a munching sound. The sound gets deeper the closer the player gets to evolving.

# Create temporary scoreboards.
scoreboard objectives add temp.playsound_value dummy
scoreboard objectives add temp.max_value dummy

# There are 42 different sound pitches.
scoreboard players set @s temp.playsound_value 42

# Set the maximum experience.
# If you have changed the max experience, you also have to change this to that value.
scoreboard players set @s temp.max_value 99

# Calculate the sound pitch.
# This can be represented as: custom bar width * current value / max value
scoreboard players operation @s temp.playsound_value *= @s ogvz.piglin.evolution.progress
scoreboard players operation @s temp.playsound_value /= @s temp.max_value

# Display the custom bar in the actionbar.
execute as @s[scores={temp.playsound_value=0}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.20
execute as @s[scores={temp.playsound_value=1}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.18
execute as @s[scores={temp.playsound_value=2}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.16
execute as @s[scores={temp.playsound_value=3}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.14
execute as @s[scores={temp.playsound_value=4}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.12
execute as @s[scores={temp.playsound_value=5}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.10
execute as @s[scores={temp.playsound_value=6}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.08
execute as @s[scores={temp.playsound_value=7}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.06
execute as @s[scores={temp.playsound_value=8}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.04
execute as @s[scores={temp.playsound_value=9}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.02
execute as @s[scores={temp.playsound_value=10}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.00
execute as @s[scores={temp.playsound_value=11}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.98
execute as @s[scores={temp.playsound_value=12}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.96
execute as @s[scores={temp.playsound_value=13}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.94
execute as @s[scores={temp.playsound_value=14}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.92
execute as @s[scores={temp.playsound_value=15}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.90
execute as @s[scores={temp.playsound_value=16}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.88
execute as @s[scores={temp.playsound_value=17}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.86
execute as @s[scores={temp.playsound_value=18}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.84
execute as @s[scores={temp.playsound_value=19}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.82
execute as @s[scores={temp.playsound_value=20}  ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.80
execute as @s[scores={temp.playsound_value=21}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.20
execute as @s[scores={temp.playsound_value=22}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.18
execute as @s[scores={temp.playsound_value=23}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.16
execute as @s[scores={temp.playsound_value=24}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.14
execute as @s[scores={temp.playsound_value=25}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.12
execute as @s[scores={temp.playsound_value=26}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.10
execute as @s[scores={temp.playsound_value=27}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.08
execute as @s[scores={temp.playsound_value=28}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.06
execute as @s[scores={temp.playsound_value=29}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.04
execute as @s[scores={temp.playsound_value=30}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.02
execute as @s[scores={temp.playsound_value=31}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.00
execute as @s[scores={temp.playsound_value=32}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.98
execute as @s[scores={temp.playsound_value=33}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.96
execute as @s[scores={temp.playsound_value=34}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.94
execute as @s[scores={temp.playsound_value=35}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.92
execute as @s[scores={temp.playsound_value=36}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.90
execute as @s[scores={temp.playsound_value=37}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.88
execute as @s[scores={temp.playsound_value=38}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.86
execute as @s[scores={temp.playsound_value=39}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.84
execute as @s[scores={temp.playsound_value=40}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.82
execute as @s[scores={temp.playsound_value=41..}] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.80

# Remove temporary scoreboards.
scoreboard objectives remove temp.playsound_value
scoreboard objectives remove temp.max_value
