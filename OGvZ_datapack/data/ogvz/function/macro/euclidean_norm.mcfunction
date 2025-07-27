#> Description: Macro to calculate the euclidean norm of a 3D vector.
#> Input: (x), (y), (z) components of the vector.
#> Output: ogvz:euclidean.norm

# Summon a block display and give it a temporary tag.
execute summon minecraft:block_display run tag @s add temp.euclidean_norm

# Input the vector into the block display's transformation matrix. This will result in transformation.scale[0] becoming the euclidean norm [sqrt(x^2 + y^2 + z^2)].
$data modify entity @n[type=minecraft:block_display,tag=temp.euclidean_norm] transformation set value [$(x)f, 0f, 0f, 0f, $(y)f, 0f, 0f, 0f, $(z)f, 0f, 0f, 0f, 0f, 0f, 0f, 1f]

# Store the euclidean norm into storage.
execute store result storage ogvz:euclidean norm float 1 run data get entity @n[type=minecraft:block_display,tag=temp.euclidean_norm] transformation.scale[0]

# Kill the block display.
kill @n[type=minecraft:block_display,tag=temp.euclidean_norm]
