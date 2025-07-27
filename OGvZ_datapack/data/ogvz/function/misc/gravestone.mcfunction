#> Description: Creates a grave block display.
#> Comment: Players who have bought a custom death message can also get a special grave.

# Remove team so it doesn't show up on the gravestone.
team leave @s

# Give the player a temporary tag.
tag @s add temp.target

# AbraxisPilot - Reinforced (End Stone) Brick Wall + player name
execute as @s[predicate=ogvz:player/is_abraxispilot] align xyz run summon minecraft:block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:end_stone_brick_wall",Properties:{east:"low",west:"low"}}}
execute as @s[predicate=ogvz:player/is_abraxispilot] align xyz run summon minecraft:text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:{selector:"@p[tag=temp.target]"},alignment:"center",background:0}
execute as @s[predicate=ogvz:player/is_abraxispilot] run return run tag @s remove temp.target

# Astraeos_ - Polished Blackstone Brick Wall + player name
execute as @s[predicate=ogvz:player/is_astraeos_] align xyz run summon minecraft:block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:polished_blackstone_brick_wall",Properties:{east:"low",west:"low"}}}
execute as @s[predicate=ogvz:player/is_astraeos_] align xyz run summon minecraft:text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:{selector:"@p[tag=temp.target]"},alignment:"center",background:0}
execute as @s[predicate=ogvz:player/is_astraeos_] run return run tag @s remove temp.target

# Laikbruh - Reinforced (End Stone) Brick Wall + player name
execute as @s[predicate=ogvz:player/is_laikbruh] align xyz run summon minecraft:block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:end_stone_brick_wall",Properties:{east:"low",west:"low"}}}
execute as @s[predicate=ogvz:player/is_laikbruh] align xyz run summon minecraft:text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:{selector:"@p[tag=temp.target]"},alignment:"center",background:0}
execute as @s[predicate=ogvz:player/is_laikbruh] run return run tag @s remove temp.target

# Muff1nArcades - Nether Brick Wall + player name
execute as @s[predicate=ogvz:player/is_muff1narcades] align xyz run summon minecraft:block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:nether_brick_wall",Properties:{east:"low",west:"low"}}}
execute as @s[predicate=ogvz:player/is_muff1narcades] align xyz run summon minecraft:text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:{selector:"@p[tag=temp.target]"},alignment:"center",background:0}
execute as @s[predicate=ogvz:player/is_muff1narcades] run return run tag @s remove temp.target

# MunchieMan321 - Reinforced (End Stone) Brick Wall + player name
execute as @s[predicate=ogvz:player/is_munchieman321] align xyz run summon minecraft:block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:end_stone_brick_wall",Properties:{east:"low",west:"low"}}}
execute as @s[predicate=ogvz:player/is_munchieman321] align xyz run summon minecraft:text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:{selector:"@p[tag=temp.target]"},alignment:"center",background:0}
execute as @s[predicate=ogvz:player/is_munchieman321] run return run tag @s remove temp.target

# Ozald - Reinforced (End Stone) Brick Wall + player name
execute as @s[predicate=ogvz:player/is_ozald] align xyz run summon minecraft:block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:end_stone_brick_wall",Properties:{east:"low",west:"low"}}}
execute as @s[predicate=ogvz:player/is_ozald] align xyz run summon minecraft:text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:{selector:"@p[tag=temp.target]"},alignment:"center",background:0}
execute as @s[predicate=ogvz:player/is_ozald] run return run tag @s remove temp.target

# Default gravestone - Stone Brick Wall + player name
execute align xyz run summon minecraft:block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:stone_brick_wall",Properties:{east:"low",west:"low"}}}
execute align xyz run summon minecraft:text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone","ogvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:{selector:"@p[tag=temp.target]"},alignment:"center",background:0}

# Remove the temporary tag.
tag @s remove temp.target
