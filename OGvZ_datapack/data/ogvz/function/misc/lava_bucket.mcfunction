#> Description: Dump lava on player with a lava bucket.
#> Comment: Made to prevent easy lava casting.

# Remove all lava buckets from the player.
clear @s minecraft:lava_bucket

# Message the player about the lava being dumped on them.
title @s actionbar {text:"The lava burns through the bucket!",color:"red"}

# Play a bucket breaking sound.
playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1

# Dump the lava on player.
setblock ~ ~ ~ minecraft:lava
