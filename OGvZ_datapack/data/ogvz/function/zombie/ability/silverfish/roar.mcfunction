#> Description: Hatch all nearby infested blocks into ai silverfish.

# Hide the custom bars for a bit.
scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.silverfish.roar.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Roar]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.silverfish.roar.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.silverfish.roar.cooldown.seconds=1..}] run return 0

# Terrain modifying abilities cannot be used when the player is in adventure mode.
execute if entity @s[gamemode=adventure] run title @s actionbar [ \
  "", \
  {text:"[Roar]",bold:true,color:"red"}, \
  {text:" You cannnot use this ability right now!",color:"red"} \
]
execute if entity @s[gamemode=adventure] run return 0

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Roar]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Set the cooldown.
scoreboard players set @s ogvz.silverfish.roar.cooldown.seconds 20

# Play an activation sound.
playsound minecraft:entity.silverfish.hurt player @a ~ ~ ~ 4 0.5

# Start the warmup timer for when the Silverfish will regenerate all of it's Silverfish Eggs in ticks (1 second = 20 ticks). 
scoreboard players set @s ogvz.silverfish.silverfish_egg.warmup.ticks 400

# Apply glowing for 5 seconds.
effect give @s minecraft:glowing 5 0 true

# Add a temporary scoreboard for counting the amount of infested blocks.
scoreboard objectives add temp.infested_block_count dummy

# Clear 3 x 3 x 3 area around the infestation markers in proximity of 32 blocks and add the amount of blocks cleared to the infestation marker's scoreboard.
execute as @e[type=minecraft:marker,tag=ogvz.infestation,distance=..32] at @s store result score @s temp.infested_block_count run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace #ogvz:infested_blocks

# Clear all infested blocks in a 32 x 32 x 32 area around the player.
execute store result score @s temp.infested_block_count run fill ~-16 ~-16 ~-16 ~16 ~16 ~16 minecraft:air replace #ogvz:infested_blocks

# Add all the blocks cleared to the player's scoreboard.
scoreboard players operation @s temp.infested_block_count += @e[type=minecraft:marker,tag=ogvz.infestation,distance=..32] temp.infested_block_count

# Loop that summons a silverfish based on how many infested blocks you cleared.
execute as @s[scores={temp.infested_block_count=1..}] at @s run function ogvz:zombie/ability/silverfish/roar_loop

# Loop that summons a silverfish based on how many remaining silverfish eggs you have.
execute as @s[scores={ogvz.silverfish.silverfish_egg.count=1..}] at @s run function ogvz:zombie/ability/silverfish/roar_loop_2

# Kill all infestation markers in proximity of 32 blocks.
kill @e[type=minecraft:marker,tag=ogvz.infestation,distance=..32]

# Remove temporary scoreboard.
scoreboard objectives remove temp.infested_block_count
