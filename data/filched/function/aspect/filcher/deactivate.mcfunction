# Aspect specific PRE-DEACTIVATE logic

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:registry aspect."filched:filcher"

# Aspect specific POST-DEACTIVATE logic
## Remove attributes that were granted by the aspect
function filched:aspect/filcher/crouching_limbo/attributes/revoke
