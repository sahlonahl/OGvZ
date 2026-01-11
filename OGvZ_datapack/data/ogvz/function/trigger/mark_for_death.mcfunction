#> Description: Handles the toggle mark for death trigger.
#> can be called manually, but also by volunteer_book.json

# Reset scoreboard.
scoreboard players set @s mark_for_death 0
# Re-enable trigger.
scoreboard players enable @s mark_for_death

# play a sound as feedback for the player
execute as @s at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2
# Add a temporary tag to the player if they are marked for death.
tag @s[tag=ogvz.marked_for_death] add temp.marked_for_death

# Toggle the marked for death tag.
tag @s[tag=!temp.marked_for_death] add ogvz.marked_for_death
tag @s[tag=temp.marked_for_death] remove ogvz.marked_for_death

# Display a marked message if the player is now marked for death.
tellraw @s[tag=!temp.marked_for_death] [ \
    "", \
    {text:"You are now ",color:"red"}, \
    {text:"Marked for Death!",color:"red",bold:true}, \
]


# Display an unmarked message if the player is no longer marked for death.
tellraw @s[tag=temp.marked_for_death] [ \
    "", \
    {text:"You are no longer ",color:"blue"}, \
    {text:"Marked for Death.",color:"blue",bold:true}, \
]

# Remove the temporary tag.
tag @s remove temp.marked_for_death
