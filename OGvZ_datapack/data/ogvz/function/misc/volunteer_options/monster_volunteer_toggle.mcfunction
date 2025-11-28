#> Description: toggles the players status for vounteering for a monster
#> Called by: volunteer_book.json

# return if the game is in boss, combat or final stand phases
execute if score &ogvz ogvz.game.phase matches 4..6 run return run title @s actionbar [\
  "", \
  {text:"You may only volunteer during setup and build phases!",color:"red"} \
]

# play a sound as feedback for the player
execute as @s at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

# Add a temporary tag to the player if they already volunteered.
tag @s[tag=ogvz.monster_volunteer] add temp.marked_for_death

# Toggle the volunteer tag.
tag @s[tag=!temp.marked_for_death] add ogvz.monster_volunteer
tag @s[tag=temp.marked_for_death] remove ogvz.monster_volunteer

# Display a message if the player is volunteering.
tellraw @s[tag=!temp.marked_for_death] [ \
    "", \
    {text:"You are now ",color:"red"}, \
    {text:"Volunteering for Monster",color:"red",bold:true}, \
    {text:"!",color:"red"} \
]

# Display a message if the player is no longer volunteering.
tellraw @s[tag=temp.marked_for_death] [ \
    "", \
    {text:"You are no longer ",color:"blue"}, \
    {text:"Volunteering for Monster",color:"blue",bold:true}, \
    {text:".",color:"blue"} \
]

# Remove the temporary tag.
tag @s remove temp.marked_for_death

