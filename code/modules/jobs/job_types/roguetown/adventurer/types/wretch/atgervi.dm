/datum/advclass/wretch/atgervi
	name = "Atgervi Shaman"
	tutorial = "Fear. What more can you feel when a stranger tears apart your friend with naught but hand and maw? What more can you feel when your warriors fail to slay an invader? What more could you ask for?"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/wretch/atgervi
	category_tags = list(CTAG_WRETCH)
	maximum_possible_slots = 2
	traits_applied = list(TRAIT_OUTLANDER, TRAIT_OUTLAW, TRAIT_HERESIARCH)
 
/datum/outfit/job/roguetown/wretch/atgervi/pre_equip(mob/living/carbon/human/H)
	H.set_blindness(0)
	to_chat(H, span_warning("You are a Shaman of the Fjall, The Northern Empty. Savage combatants who commune with the Ecclesical Beast gods through ritualistic violence, rather than idle prayer."))
	H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 5, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.adjust_skillrank(/datum/skill/craft/tanning, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.adjust_skillrank(/datum/skill/magic/holy, 3, TRUE)
	H.adjust_skillrank(/datum/skill/magic/arcane, 2, TRUE)
	H.dna.species.soundpack_m = new /datum/voicepack/male/warrior()
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/touch/summonrogueweapon/evil/inhumenblade)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/message)
	H.change_stat("strength", 3) 
	H.change_stat("endurance", 2)
	H.change_stat("constitution", 2)
	H.change_stat("intelligence", -1)
	H.change_stat("perception", -1)
	H.change_stat("speed", 1)

	head = /obj/item/clothing/head/roguetown/helmet/leather/saiga/atgervi
	gloves = /obj/item/clothing/gloves/roguetown/plate/atgervi
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/atgervi
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
	pants = /obj/item/clothing/under/roguetown/trou/leather/atgervi
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/atgervi
	backr = /obj/item/storage/backpack/rogue/satchel/black
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltl = /obj/item/flashlight/flare/torch

	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_miracles(H, cleric_tier = CLERIC_T2, passive_gain = CLERIC_REGEN_MINOR, devotion_limit = CLERIC_REQ_2)	//Capped to T2 miracles.

	ADD_TRAIT(H, TRAIT_STRONGBITE, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_CIVILIZEDBARBARIAN, TRAIT_GENERIC) //No weapons. Just beating them to death as God intended.
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC) //Their entire purpose is to rip people apart with their hands and teeth. I don't think they'd be too preturbed to see someone lose a limb.
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC) //Either no armor, or light armor. So dodge expert.
	ADD_TRAIT(H, TRAIT_ARCYNE_T1, TRAIT_GENERIC)
	H.cmode_music = 'sound/music/combat_shaman2.ogg'

	H.grant_language(/datum/language/gronnic)
	backpack_contents = list(/obj/item/rogueweapon/huntingknife)
	wretch_select_bounty(H)
