# Aspect specific PRE-ACTIVATE logic

# Generic ACTIVATE logic
function aspects:aspect/generic/activate with storage aspects:registry aspect."filched:filcher"

# Aspect specific POST-ACTIVATE logic
## Set Aspect Group
function aspects:aspect_group/set/sensitive_to_bane_of_arthropods
function filched:aspect_group/set/limbo_attuned
## Default scoreboards
scoreboard players add @s filched.focus.filcher.summoned_anchors 0
