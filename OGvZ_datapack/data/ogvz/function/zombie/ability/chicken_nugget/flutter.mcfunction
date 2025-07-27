#> Description: Gives the slow falling effect when the player isn't sneaking.

# Give the player the slow falling effect if the aren't holding down the sneak button.
effect give @s[predicate=!ogvz:input_sneak_pressed] minecraft:slow_falling infinite 0 true

# Clear the slow falling effect if the player is holding down the sneak button.
effect clear @s[predicate=ogvz:input_sneak_pressed] minecraft:slow_falling
