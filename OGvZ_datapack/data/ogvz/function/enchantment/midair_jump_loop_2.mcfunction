#> Description: The first loop that launches the player in the air for every 0.1 additional points in jump strength attribute.

# Summon an explosion by summoning an end crystals and damaging it.
execute at @s positioned ~ ~-10.8 ~ summon minecraft:end_crystal run damage @s 0

# Decrement scoreboard by 1.
scoreboard players remove @s temp.jump_strength 1

# Loop until scoreboard is 0.
execute as @s[scores={temp.jump_strength=1..}] at @s run function ogvz:enchantment/midair_jump_loop_1
