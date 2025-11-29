#> Description: toggles the players status for vounteering for the hero
#> Called by: volunteer_book.json

# Reset scoreboard.
scoreboard players set @s volunteer_for_hero 0
# Re-enable trigger.
scoreboard players enable @s volunteer_for_hero

# play a sound as feedback for the player
execute as @s at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2
# Add a temporary tag to the player if they already volunteered.
tag @s[tag=ogvz.hero_volunteer] add temp.marked_for_death

# Toggle the volunteer tag.
tag @s[tag=!temp.marked_for_death] add ogvz.hero_volunteer
tag @s[tag=temp.marked_for_death] remove ogvz.hero_volunteer

# Display a message if the player is volunteering.
tellraw @s[tag=!temp.marked_for_death] [ \
    "", \
    {text:"You are now ",color:"red"}, \
    {text:"Volunteering for the Hero!/n",color:"red",bold:true}, \
    {text:"Note: if you die to the boss, you will not become the hero.",color:"red"} \
]

# Display a message if the player is no longer volunteering.
tellraw @s[tag=temp.marked_for_death] [ \
    "", \
    {text:"You are no longer ",color:"blue"}, \
    {text:"Volunteering for the Hero.",color:"blue",bold:true}, \
]

# Remove the temporary tag.
tag @s remove temp.marked_for_death
