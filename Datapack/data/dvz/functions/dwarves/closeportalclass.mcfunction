# -------------------------------------------
# Called By: dvz:dwarves/closeportal
# File Name: closeportalclass
# File Purpose: Adds a tag to dwarves that want to become monsters when combat time begins. OLD: Removes dwarves from being selected as a boss (if applicable) before selecting their class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: OLD: Dwarves can still be seleted to be a boss on the off chance that everyone clicks their item
# -------------------------------------------

#tag @s[tag=slay] add takeslay
#tag @s[tag=!slay] add giveslay

#tag @s[tag=takeslay] remove slay
#tag @s[tag=giveslay] add slay

#title @s[tag=slay] actionbar {"text":" * [Slay] You will become a mob automatically!","color":"red","italic":true}
#title @s[tag=takeslay] actionbar {"text":" * [Slay] You will no longer become a mob automatically.","color":"red","italic":true}

#tag @s remove giveslay
#tag @s remove takeslay

tag @s[tag=!volunteer] add givevolunteer
tag @s[tag=volunteer] add takevolunteer

tag @s[tag=givevolunteer] add volunteer
tag @s[tag=takevolunteer] remove volunteer

title @s[tag=volunteer] actionbar {"text":" * [Volunteer] You now have a HIGHER chance to become the boss!","color":"red","italic":true}
title @s[tag=takevolunteer] actionbar {"text":" * [Volunteer] You now have a LOWER chace to become the boss!","color":"red","italic":true}

tag @s remove givevolunteer
tag @s remove takevolunteer

#tag @s[tag=!noboss] add givenotboss
#tag @s[tag=noboss] add takenotboss

#tag @s[tag=givenotboss] add noboss
#tag @s[tag=takenotboss] remove noboss

#tellraw @s[tag=noboss] {"text":" * [Remove] You will have lower piority to be selected for the plague event!","color":"red","italic":true}
#tellraw @s[tag=!noboss] {"text":" * [Remove] You will have normal piority to be selected for the plague event!","color":"gold","italic":true}

#tag @s remove givenotboss
#tag @s remove takenotboss