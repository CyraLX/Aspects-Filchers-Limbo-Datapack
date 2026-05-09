# Determines the range in blocks which new Filcher locations are picked when trying to enter Limbo for the first time or without an active Filcher Anchor.
# (10000 means a random location between 10000 and -10000 will be picked)
# Default: 10000
scoreboard objectives add filched.config.aspect.filcher_limbo_generation_range dummy
scoreboard objectives add filched.config.aspect.filcher_limbo_generation_range.default dummy
scoreboard objectives add filched.config.aspect.filcher_limbo_generation_range.advanced_inputs dummy

# Define Registry Data
#
# Required:
#   namespace           - Namespace string of your project
#   type                - Name string of the category your Config belongs to
#   name                - Name string of your Config
#
# Optional:
#   dialog_type         - Integer ID for what dialog this Config uses
#                         0 = Custom
#                         1 = Boolean/Toggle
#                         2 = Integer/Number
#                         3 = List Choice
#   dialog_data         - Custom data required by some dialog types; defaults to {}
#   name_with           - SNBT Text Component array formatted into the `name` translation key
#                         Defaults to [""]
#   description_with    - SNBT Text Component array formatted into the `description` translation key
#                         Defaults to [""]
#   note_with           - SNBT Text Component array formatted into the `note` translation key
#                         Defaults to [""]
#
# dialog_data fields for dialog_type 2 (Integer/Number):
#
#   Required:
#     start             - Start of the basic slider range (inclusive)
#     end               - End of the basic slider range (inclusive)
#     step              - Step size of the basic slider
#
#   Optional:
#     accepts_namespace - Namespace segment of the "Accepts Values" translation key
#                           Format: dialog.<accepts_namespace>.configs.entry.accepts_values<accepts_name>
#                           Defaults to "aspects"
#     accepts_name      - Suffix segment of the "Accepts Values" translation key (see format above)
#                           Defaults to ""
#     accepts_with      - SNBT Text Component array formatted into the "Accepts Values" translation key
#                           Defaults to [""]
#     initial           - Overrides the initial slider value; must be within [start, end]
#                           In Basic Input Mode, clamped to [start, end] if out of range
#                           Defaults to the current config value
#
# dialog_data fields for dialog_type 3 (List Choice):
#
#   Required:
#     action_list        - Array of actions to populate the config with
#                           This Array will be populated by you manually via helper functions
#     default_display    - SNBT Text Component that will display the default value
#                           This Text Component will be populated by you manually via helper functions
#                           Build file paths are important as internal macros will reference them
#     current_display    - SNBT Text Component that will display the current value
#                           This Text Component will be populated by you manually via helper functions
#                           Build file paths are important as internal macros will reference them
#
#   Optional:
#     accepts_namespace  - Namespace segment of the "Accepts Values" translation key
#                           Format: dialog.<accepts_namespace>.configs.entry.accepts_values<accepts_name>
#                           Defaults to "aspects"
#     accepts_name       - Suffix segment of the "Accepts Values" translation key (see format above)
#                           Defaults to ""
#     accepts_with       - SNBT Text Component array formatted into the "Accepts Values" translation key
#                           Defaults to [""]
#
data modify storage aspectlib:cache temp.config set value {namespace:"filched",type:"aspect",name:"filcher_limbo_generation_range",dialog_type:2,dialog_data:{start:0,end:100000,step:100,accepts_namespace:"aspects",accepts_name:".above_equal",accepts_with:["0"]},name_with:[{translate:"entity.filched.filcher_anchor"}],description_with:[{translate:"dimension.filched.limbo"},{translate:"entity.filched.filcher_anchor"}]}
# Define Default value
scoreboard players set #aspectlib aspectlib.temp 10000

# Convert legacy scoreboard
## From V2 to V3
execute if score #filched filched.config.filcher.limbo_generation_range = #filched filched.config.filcher.limbo_generation_range run scoreboard players operation #filched filched.config.aspect.filcher_limbo_generation_range = #filched filched.config.filcher.limbo_generation_range
execute if score #filched filched.config.filcher.limbo_generation_range = #filched filched.config.filcher.limbo_generation_range run scoreboard objectives remove filched.config.filcher.limbo_generation_range

# Generic REGISTER_CONFIG logic
function aspectlib:config/_macros/register_config with storage aspectlib:cache temp.config
