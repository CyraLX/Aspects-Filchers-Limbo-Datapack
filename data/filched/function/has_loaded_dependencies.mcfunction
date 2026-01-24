# If Aspects Pack Format is between minimum and maximum allowed Pack Format, return true
execute if predicate aspects:installed if score #aspects aspects.pack_format >= #filched aspects.pack_format.dependency.min if score #aspects aspects.pack_format <= #filched aspects.pack_format.dependency.max run return 1
# Otherwise assume a version missmatch or lacking versions, return fail
return fail
