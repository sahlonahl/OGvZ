# -------------------------------------------
# Called By: dvz:tick
# File Name: shrinefall_effects
# File Purpose: Applies potion effects to all players after the shrine has fallen
# Created By: Wilkekids
# 
# Created On: 2024.08.12
# Last Modified On: 2024.08.12
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: This function should be called every tick after the shrine falls to make sure effects are always applied
# -------------------------------------------

# Give potion effects to everyone to allow post-shrine killing
effect give @a[tag=dwarves] glowing infinite
effect give @a[tag=dwarves] weakness infinite 1 true
effect give @a[tag=dwarves] slowness infinite 1 true

effect give @a[tag=zombies] resistance infinite 1 true
effect give @a[tag=zombies] strength infinite 1 true
effect give @a[tag=zombies] speed infinite 1 true


