#> Description: Initializes the player.
#> Note: ONLY runs when the player joins the server for the first time. ogvz:tick/player_rejoin_server handles players rejoining the game.

# Set the player's gamemode to adventure mode. If the player is an admin, set their gamemode to creative mode.
gamemode adventure @s[predicate=!ogvz:is_admin]
gamemode creative @s[predicate=ogvz:is_admin]

# Clear the player's scoreboards and remove the player's tags and attributes.
execute as @s at @s run function ogvz:misc/clear_scoreboards
execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes

# Remove the player's tags that aren't removed by the ogvz:misc/remove_tags function.
tag @s remove ogvz.joined_game
tag @s remove ogvz.admin
tag @s remove ogvz.dead
tag @s remove ogvz.marked_for_death
tag @s remove ogvz.zombie.punish

# Revoke all advancements.
advancement revoke @s everything

# Enable the player to use trigger commands.
scoreboard players enable @s[predicate=ogvz:is_admin] admin_handbook
scoreboard players enable @s game_status
scoreboard players enable @s doom_event
scoreboard players enable @s mark_for_death

# Set the player's health and food scoreboards to max (20).
scoreboard players set @s ogvz.misc.health 20
scoreboard players set @s ogvz.misc.food 20

# Remove the player from any team they are in.
team leave @s

# Set the player's experience points and levels to 0.
xp set @s 0 levels
xp set @s 0 points

# Clear the player's inventory.
clear @s

# Clear the player's effects.
effect clear @s

# Fully heal the player.
effect give @s minecraft:instant_health 1 28

# Give all recipes to the player.
recipe give @s *

# Set the player's reload_count scoreboard to the server's reload_count scoreboard.
execute store result score @s ogvz.game.reload_count run scoreboard players get &ogvz ogvz.game.reload_count

# Give the player the initilaized and lobby adventure mode tags. If the player is an admin, give them the admin tag as well.
tag @s add ogvz.initialized
tag @s add ogvz.adventure.lobby
tag @s[predicate=ogvz:is_admin] add ogvz.admin

# Display a welcoming message to the player.
tellraw @s [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Welcome to ",bold:true,color:"gold"}, \
  {text:"<",bold:true,color:"gold"}, \
  {text:"OG",bold:true,color:"dark_aqua"}, \
  {text:"v",bold:true,color:"gold"}, \
  {text:"Z",bold:true,color:"dark_red"}, \
  {text:">",bold:true,color:"gold"}, \
  {text:"!\n",bold:true,color:"gold"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"By continuing to play, you agree to our ",color:"yellow"}, \
  {text:"Privacy Policy\n",color:"gold"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"and ",color:"yellow"}, \
  {text:"TOS",color:"gold"}, \
  {text:", provided ",color:"yellow"}, \
  {text:"[HERE]",bold:true,color:"gold",hover_event:{"action":"show_text","value":[{text:"link",italic:true}]},click_event:{"action":"open_url","url":"https://ogvz.weebly.com/TOS.html"}}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Please read the ",color:"yellow"}, \
  {text:"Rules",color:"gold"}, \
  {text:" inside the ",color:"yellow"}, \
  {text:"Rulebook",color:"gold"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"If you enjoy playing on the server, please consider\n",color:"yellow"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"supporting us by donating ",color:"yellow"}, \
  {text:"[HERE]",bold:true,color:"gold",hover_event:{"action":"show_text","value":[{text:"link",italic:true}]},click_event:{"action":"open_url","url":"https://ogvz.weebly.com/store.html"}}, \
  {text:".",color:"yellow"} \
]

# Run code common to the player joining the game for the first time and player rejoining the game.
execute as @s at @s run function ogvz:tick/player_rejoin_server
