#> Description: Explode after taking damage from the firework rocket while flying.

# Revoke advancement so it can be granted again.
advancement revoke @s only ogvz:misc/dragon_warrior_take_damage_from_own_firework_rocket_while_in_dragon_form

# Return if the player wasn't flying (can happen if they shoot themselves with a firework rocket shot from the crossbow).
execute as @s[predicate=!ogvz:is_flying] run return 0

# Display a fail message.
title @s actionbar [ \
  "", \
  {text:"[Dragon Scale]",bold:true,color:"red"}, \
  {text:" The firework burns your wings.",color:"red"} \
]

# Gurantee that the player will lose their dragon form.
scoreboard players set @s ogvz.dragon_warrior.dragon_scale.damage 10000

# Show explosion particles.
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 2
