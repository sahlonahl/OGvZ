# -------------------------------------------
# Called By: dvz:bosses/[various]
# File Name: monster_volunteer
# File Purpose: kills players who volunteer for monster
# Created By: Wilkekids
# 
# Created On: 2024.08.12
# Last Modified On: 2024.08.12
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

kill @a[tag=slay]
tellraw @a[tag=slay] {"text":"\u2620 You have died because you chose to become mob!","color":"gray"}
tag @a[tag=slay] remove slay
