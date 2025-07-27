#> Description: Make the player hover up or down depending on their button presses.

# Give negative gravity attribute to the player if their jump button is pressed.
attribute @s[predicate=ogvz:input_jump_pressed] minecraft:gravity modifier add ogvz.bee.hover.ascend.gravity -0.02 add_value
attribute @s[predicate=!ogvz:input_jump_pressed] minecraft:gravity modifier remove ogvz.bee.hover.ascend.gravity

# Give positive gravity attribute to the player if their jump button is pressed.
attribute @s[predicate=ogvz:input_sneak_pressed] minecraft:gravity modifier add ogvz.bee.hover.descend.gravity 0.02 add_value
attribute @s[predicate=!ogvz:input_sneak_pressed] minecraft:gravity modifier remove ogvz.bee.hover.descend.gravity
