#> Description: toggles the players status for vounteering for the hero
#> Called by: volunteer_book.json

# Reset scoreboard.
scoreboard players set @s volunteer_for_hero 0
# Re-enable trigger.
scoreboard players enable @s volunteer_for_hero

# play a sound as feedback for the player
execute as @s at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2
# Add a temporary tag to the player based on their current status.
tag @s[tag=ogvz.hero_default] add temp.hero_default
tag @s[tag=ogvz.hero_volunteer] add temp.hero_volunteer
tag @s[tag=ogvz.hero_opt_out] add temp.hero_opt_out

# If the player was neutral (default state) have them volunteer for hero
tag @s[tag=temp.hero_default] add ogvz.hero_volunteer
tag @s[tag=temp.hero_default] remove ogvz.hero_default

# send a message to tell the player they have volunteered and that they can click again to opt out
tellraw @s[tag=temp.hero_default] [ \
    "", \
    {text:"You are now ",color:"green"}, \
    {text:"Volunteering for the Hero! ",color:"green",bold:true}, \
    {text:"Click again to opt-out.\n",color:"green"}, \
    {text:"Note: if you die, you will not become the hero.",color:"green"} \
]

# If the player was volunteering, swap them to the opt out state
tag @s[tag=temp.hero_volunteer] add ogvz.hero_opt_out
tag @s[tag=temp.hero_volunteer] remove ogvz.hero_volunteer

# send a message to tell the player they have opted out and that they can click again to return to neutral
tellraw @s[tag=temp.hero_volunteer] [ \
    "", \
    {text:"You are now ",color:"red"}, \
    {text:"Opting-Out of Hero duty! \n",color:"red",bold:true}, \
    {text:"Click again to stop opting out.\n",color:"red"}, \
    {text:"Note: if everyone opts-out there may not be a hero.",color:"red"} \
]

# if the player was opting out, swap them to the default state
tag @s[tag=temp.hero_opt_out] add ogvz.hero_default
tag @s[tag=temp.hero_opt_out] remove ogvz.hero_opt_out

# send a message to tell the player they have return to the default state and that thye can click again to volunteer
tellraw @s[tag=temp.hero_opt_out] [ \
    "", \
    {text:"You are opting neither ",color:"aqua"}, \
    {text:"in or out of Hero duty!\n",color:"aqua",bold:true}, \
    {text:"Click again to volunteer.",color:"aqua"}, \
]

# Remove the temporary tags.
tag @s remove temp.hero_default
tag @s remove temp.hero_volunteer
tag @s remove temp.hero_opt_out
