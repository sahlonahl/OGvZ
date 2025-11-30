#> Description: Explode the player.

# Terrain modifying abilities cannot be used when the player is in adventure mode.
execute if entity @s[gamemode=adventure] run title @s actionbar [ \
  "", \
  {text:"[Explode]",bold:true,color:"red"}, \
  {text:" You cannnot use this ability right now!",color:"red"} \
]
execute if entity @s[gamemode=adventure] run return 0

# Prevent exploding near the ender portal.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal,distance=..8] run title @s actionbar [ \
  "", \
  {text:"[Explode]",bold:true,color:"red"}, \
  {text:" You cannot explode this close to the ",color:"red"}, \
  {text:"Ender Portal",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal,distance=..8] run return 0

# Remove the item.
item replace entity @s[gamemode=!creative,tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[gamemode=!creative,tag=temp.use.offhand] weapon.offhand with minecraft:air

# Remove the punish tag if the player exploded near a dwarf or near dwarf blocks.
execute as @s[tag=ogvz.zombie.punish] if entity @a[tag=ogvz.dwarf,distance=..6] run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~ ~-1 ~ #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~1 ~ ~ #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~-1 ~ ~ #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~ ~ ~1 #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~ ~ ~-1 #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~1 ~1 ~ #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~-1 ~1 ~ #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~ ~1 ~1 #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~ ~1 ~-1 #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish
execute as @s[tag=ogvz.zombie.punish] if block ~ ~2 ~ #ogvz:dwarf_blocks run tag @s remove ogvz.zombie.punish

# Clear dwarf blocks (except reinforced bricks) around the player to promote blowing up keep walls.
fill ~ ~ ~-1 ~ ~1 ~1 minecraft:air replace #ogvz:dwarf_blocks
fill ~-1 ~ ~ ~1 ~1 ~ minecraft:air replace #ogvz:dwarf_blocks

# Summon an invisible tnt that will explode on the next tick and set it's owner nbt to the player's UUID.
summon minecraft:tnt ~ ~ ~ {fuse:0,explosion_power:3,Tags:["temp.processing"],block_state:{Name:"minecraft:air"}}
data modify entity @n[type=minecraft:tnt,tag=temp.processing] owner set from entity @s UUID
tag @n[type=minecraft:tnt,tag=temp.processing] remove temp.processing

# Deal a lot of explosion damage to the player.
damage @s 10000 minecraft:explosion by @s
