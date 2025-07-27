#> Description: Deals massive damage when backstabbing a player.

# Display a fail message and return if the secondary attack is on a cooldown.
execute if entity @s[scores={ogvz.assassin_slayer.assassinate.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Assassinate]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.assassin_slayer.assassinate.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.assassin_slayer.assassinate.cooldown.seconds=1..}] run return 0

# Give the player a temporary tag.
tag @s add temp.ray_caster

# Summon two markers at the players feet and give them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/hero/assassin_slayer/assassinate_loop

# Create temporary scoreboards.
scoreboard objectives add temp.rotation.p1 dummy
scoreboard objectives add temp.rotation.p2 dummy
scoreboard objectives add temp.rotation.delta dummy

# Store the attacking player's rotation value (value is in range [-180.0, +180.0]).
execute store result score @s temp.rotation.p1 run data get entity @s Rotation[0] 1000

# Store the targeted player's rotation value (value is in range [-180.0, +180.0]).
execute store result score @s temp.rotation.p2 run data get entity @p[tag=temp.hit] Rotation[0] 1000

# Get the difference (delta) between the 2 rotation values.
execute if score @s temp.rotation.p2 >= @s temp.rotation.p1 store result score @s temp.rotation.delta run scoreboard players get @s temp.rotation.p2
execute if score @s temp.rotation.p2 >= @s temp.rotation.p1 run scoreboard players operation @s temp.rotation.delta -= @s temp.rotation.p1
execute if score @s temp.rotation.p2 < @s temp.rotation.p1 store result score @s temp.rotation.delta run scoreboard players get @s temp.rotation.p1
execute if score @s temp.rotation.p2 < @s temp.rotation.p1 run scoreboard players operation @s temp.rotation.delta -= @s temp.rotation.p2

# Deal big damage, play a sound and show particles if the rotation difference is between ±60°.
execute as @s[scores={temp.rotation.delta=-60000..60000}] run damage @p[tag=temp.hit] 24 minecraft:player_attack by @s
execute as @s[scores={temp.rotation.delta=-60000..60000}] at @p[tag=temp.hit] run playsound minecraft:item.trident.hit player @a ~ ~ ~ 1 1
execute as @s[scores={temp.rotation.delta=-60000..60000}] at @p[tag=temp.hit] run particle minecraft:dust{color:[0.6,0.0,0.0],scale:1.0} ~ ~1.0 ~ 0.2 0.2 0.2 0 20

# Deal small damage and play a sound if the rotation difference is outside ±60°.
execute as @s[scores={temp.rotation.delta=..-60001}] run damage @p[tag=temp.hit] 8 minecraft:player_attack by @s
execute as @s[scores={temp.rotation.delta=60001..}] run damage @p[tag=temp.hit] 8 minecraft:player_attack by @s
execute as @s[scores={temp.rotation.delta=..-60001}] at @p[tag=temp.hit] run playsound minecraft:entity.player.attack.weak player @a ~ ~ ~ 1 1
execute as @s[scores={temp.rotation.delta=60001..}] at @p[tag=temp.hit] run playsound minecraft:entity.player.attack.weak player @a ~ ~ ~ 1 1

# Add cooldown if a player was hit.
execute if entity @a[tag=temp.hit] run scoreboard players set @s ogvz.assassin_slayer.assassinate.cooldown.seconds 8

# Remove scoreboards.
scoreboard objectives remove temp.rotation.p1
scoreboard objectives remove temp.rotation.p2
scoreboard objectives remove temp.rotation.delta

# Remove temporary tags.
tag @s remove temp.ray_caster
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox

# Remove temporary markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
