#> Description: Spawns the player in as a zombie player.

# Put the player on the dead team.
team join z9DEAD @s

# Give the zombie tag to the player.
tag @s add ogvz.zombie

# If the game is in Zombie, Last Stand or Game Over phases, give the player spawn discs.
# If the player has the punish tag, give them only the zombie and skeleton variant discs.
execute as @s[tag=!ogvz.zombie.punish] at @s if score &ogvz ogvz.game.phase matches 4..6 run function ogvz:zombie/give_discs
execute as @s[tag=ogvz.zombie.punish] at @s if score &ogvz ogvz.game.phase matches 4..6 run function ogvz:zombie/give_discs_punish

# Remove the punish tag from the player.
tag @s remove ogvz.zombie.punish

# If the game is in Build, Boss or Plague phase, tell the player to wait for the boss kill.
execute if score &ogvz ogvz.game.phase matches 1..3 run tellraw @s [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {text:"Hang tight, you’ll join the fight as a ",color:"light_purple"}, \
  {text:"Zombie",color:"light_purple",bold:true}, \
  {text:" once the\n",color:"light_purple"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"Boss",color:"light_purple",bold:true}, \
  {text:" is defeated.",color:"light_purple"} \
]
