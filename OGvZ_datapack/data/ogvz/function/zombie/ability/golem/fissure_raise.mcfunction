#> Description: Clones the block below ground with some exceptions.

# Clone the block from 3 blocks below 3 blocks up.
clone ~ ~-3 ~ ~ ~-3 ~ ~ ~ ~ replace force

# Certain blocks get replaced by different blocks.
execute if block ~ ~-3 ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:stone
execute if block ~ ~-3 ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:obsidian
execute if block ~ ~-3 ~ minecraft:water run setblock ~ ~ ~ minecraft:ice
execute if block ~ ~-3 ~ minecraft:lava run setblock ~ ~ ~ minecraft:magma_block
execute if block ~ ~-3 ~ minecraft:gold_block run setblock ~ ~ ~ minecraft:gilded_blackstone
