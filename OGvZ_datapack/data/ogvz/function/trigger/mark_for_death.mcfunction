#> Description: Handles the toggle mark for death trigger.

# Reset scoreboard.
scoreboard players set @s mark_for_death 0
# Re-enable trigger.
scoreboard players enable @s mark_for_death

# Add a temporary tag to the player if they are marked for death.
tag @s[tag=ogvz.marked_for_death] add temp.marked_for_death

# Toggle the marked for death tag.
tag @s[tag=!temp.marked_for_death] add ogvz.marked_for_death
tag @s[tag=temp.marked_for_death] remove ogvz.marked_for_death

# Display a marked message if the player has been marked for death.
tellraw @s[tag=!temp.marked_for_death] [ \
    "", \
    {text:"You are now ",color:"red"}, \
    {text:"Marked for Death",color:"red",bold:true}, \
    {text:"!",color:"red"} \
]

# Display an unmarked message if the player is no longer marked for death.
tellraw @s[tag=temp.marked_for_death] [ \
    "", \
    {text:"You are no longer ",color:"blue"}, \
    {text:"Marked for Death",color:"blue",bold:true}, \
    {text:".",color:"blue"} \
]

# Remove the temporary tag.
tag @s remove temp.marked_for_death
