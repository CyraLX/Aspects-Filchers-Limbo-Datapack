item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air

execute unless items entity @s armor.body * run return run item replace entity @s armor.body with minecraft:jigsaw[minecraft:enchantments={"filched:entity/wasted/body":1}, minecraft:equippable={slot:"body", swappable: false, can_be_sheared: false, damage_on_hurt: false, dispensable: false, equip_on_interact: false}]
item modify entity @s armor.body {function: "minecraft:set_enchantments", enchantments: {"filched:entity/wasted/body": 1}}
