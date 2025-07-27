#> Description: Replace the used reusable firework rocket with another reusable firework rocket.

# Reset firework rocket uses scoreboard.
scoreboard players set @s ogvz.phantom.used.firework_rocket 0

# Return if the player is in creative mode (items are not consumed when in creative mode).
execute as @s[gamemode=creative] run return 0

# If the player has no firework remainder item in either of their hands (possible if you place it instead of using it to boost yourself), give them a reusable firework rocket.
execute unless items entity @s weapon.* minecraft:poisonous_potato[minecraft:custom_data~{"firework_remainder":1}] run give @s minecraft:firework_rocket[ \
  minecraft:item_name="Reusable Firework Rocket", \
  minecraft:fireworks={flight_duration:1}, \
  minecraft:use_cooldown={seconds:2.55}, \
  minecraft:use_remainder={ \
    id:"minecraft:poisonous_potato", \
    components:{ \
        "minecraft:item_model":"minecraft:firework_rocket", \
        "minecraft:item_name":"Broken Firework Rocket", \
        "minecraft:custom_data":{firework_remainder:1}, \
        "!minecraft:food":{}, \
        "!minecraft:consumable":{} \
    } \
  } \
]

# If the player has the firework remainder item in their main hand, replace it with the reusable firework rocket.
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{"firework_remainder":1}] run item replace entity @s weapon.mainhand with minecraft:firework_rocket[ \
  minecraft:item_name="Reusable Firework Rocket", \
  minecraft:fireworks={flight_duration:1}, \
  minecraft:use_cooldown={seconds:2.55}, \
  minecraft:use_remainder={ \
    id:"minecraft:poisonous_potato", \
    components:{ \
        "minecraft:item_model":"minecraft:firework_rocket", \
        "minecraft:item_name":"Broken Firework Rocket", \
        "minecraft:custom_data":{firework_remainder:1}, \
        "!minecraft:food":{}, \
        "!minecraft:consumable":{} \
    } \
  } \
]

# If the player has the firework remainder item in their offhand, replace it with the reusable firework rocket.
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{"firework_remainder":1}] run item replace entity @s weapon.offhand with minecraft:firework_rocket[ \
  minecraft:item_name="Reusable Firework Rocket", \
  minecraft:fireworks={flight_duration:1}, \
  minecraft:use_cooldown={seconds:2.55}, \
  minecraft:use_remainder={ \
    id:"minecraft:poisonous_potato", \
    components:{ \
        "minecraft:item_model":"minecraft:firework_rocket", \
        "minecraft:item_name":"Broken Firework Rocket", \
        "minecraft:custom_data":{firework_remainder:1}, \
        "!minecraft:food":{}, \
        "!minecraft:consumable":{} \
    } \
  } \
]
