//Micro mecha loot.
/obj/structure/loot_pile/mecha/mouse_tank
	name = "\improper Whisker wreckage"
	desc = "The ruins of a small tank. Perhaps some child's toy?"
	icon = 'icons/mecha/micro.dmi'
	icon_state = "whisker-broken"
	density = TRUE
	anchored = FALSE // In case a dead mecha-mob dies in a bad spot.

	chance_uncommon = 20
	chance_rare = 10

	loot_depletion = TRUE
	loot_left = 5

	common_loot = list(
		/obj/random/tool,
		/obj/random/tool,
		/obj/item/stack/cable_coil/random,
		/obj/random/tank,
		/obj/random/tech_supply/component,
		/obj/random/tech_supply/component,
		/obj/effect/decal/remains/mouse,
		/obj/item/stack/material/steel{amount = 20}
		)

	uncommon_loot = list(
		/obj/item/mecha_parts/mecha_equipment/weapon/ballistic/lmg/rigged,
		/obj/item/mecha_parts/mecha_equipment/generator
		)

	rare_loot = list(
		/obj/item/mecha_parts/mecha_equipment/weapon/ballistic/lmg,
		/obj/item/mecha_parts/mecha_equipment/generator/nuclear
		)

/obj/structure/loot_pile/mecha/mouse_tank/livewire
	name = "\improper Livewire wreckage"
	desc = "The smoldering ruins of a small tank. Perhaps some child's toy?"
	icon = 'icons/mecha/micro.dmi'
	icon_state = "livewire-broken"
	density = TRUE
	anchored = FALSE // In case a dead mecha-mob dies in a bad spot.

	chance_uncommon = 20
	chance_rare = 10

	loot_depletion = TRUE
	loot_left = 5

	common_loot = list(
		/obj/random/tool,
		/obj/random/tool,
		/obj/item/stack/cable_coil/random,
		/obj/random/tank,
		/obj/random/tech_supply/component,
		/obj/random/tech_supply/component,
		/obj/effect/decal/remains/mouse,
		/obj/item/stack/material/steel{amount = 20}
		)

	uncommon_loot = list(
		/obj/item/mecha_parts/mecha_equipment/weapon/energy/flamer/rigged,
		/obj/item/mecha_parts/mecha_equipment/tool/extinguisher
		)

	rare_loot = list(
		/obj/item/mecha_parts/mecha_equipment/weapon/energy/flamer,
		/obj/item/mecha_parts/mecha_equipment/generator
		)

/obj/structure/loot_pile/mecha/mouse_tank/eraticator
	name = "\improper Eraticator wreckage"
	desc = "The blasted ruins of a small tank. Perhaps some child's toy?"
	icon = 'icons/mecha/micro.dmi'
	icon_state = "eraticator-broken"
	density = TRUE
	anchored = FALSE // In case a dead mecha-mob dies in a bad spot.

	chance_uncommon = 20
	chance_rare = 10

	loot_depletion = TRUE
	loot_left = 5

	common_loot = list(
		/obj/random/tool,
		/obj/random/tool,
		/obj/item/stack/cable_coil/random,
		/obj/random/tank,
		/obj/random/tech_supply/component,
		/obj/random/tech_supply/component,
		/obj/item/clothing/head/helmet/eraticator,
		/obj/effect/decal/remains/mouse,
		/obj/item/stack/material/steel{amount = 20}
		)

	uncommon_loot = list(
		/obj/item/ammo_magazine/m75,
		/obj/item/mecha_parts/mecha_equipment/weapon/ballistic/mortar
		)

	rare_loot = list(
		/obj/item/weapon/gun/projectile/gyropistol,
		/obj/item/mecha_parts/mecha_equipment/generator/nuclear
		)

/obj/structure/loot_pile/mecha/ripley/pirate
	icon = 'icons/mob/animal_ch.dmi'
	icon_state = "pirate-broken"