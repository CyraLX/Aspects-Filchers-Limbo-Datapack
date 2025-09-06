# Reset advancement so it can re-trigger
advancement revoke @s only filched:dimension/limbo/limbo_killed_player
# Expose player data for summoning
function aspectlib:player/id/expose
function aspects:aspect/expose_aspect with storage aspectlib:dummy
# Summon Wasted in-place of player
function filched:entity/wasted/summon
# Banish player to the shadow realm
tp @s ~ ~-4332 ~