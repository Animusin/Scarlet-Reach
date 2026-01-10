
///SPAWNER///


/obj/effect/mobspawner/undead_all
	name = "skelly spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	restart_time = 10 MINUTES
	mob_types = list(
	/mob/living/carbon/human/species/skeleton/npc/ambush = 1,
	/mob/living/simple_animal/hostile/rogue/skeleton/bow = 3,
	/mob/living/carbon/human/species/dwarfskeleton/ambush = 1,
	/mob/living/carbon/human/species/skeleton/npc/dungeon = 1,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/xbow = 2,
	/mob/living/simple_animal/hostile/rogue/skeleton/axe = 5,
	/mob/living/simple_animal/hostile/rogue/skeleton/bow = 4,
	/mob/living/simple_animal/hostile/rogue/skeleton/spear = 6,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard = 5,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/shield = 4,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard = 2,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard_spear = 2,
	/mob/living/simple_animal/hostile/rogue/ghost/wraith = 3)

	text_faction = "Skeletons"
	objfaction = list("undead")

/obj/effect/mobspawner/skeleton_spawner_hard
	name = "skelly spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	min_mobs = 2
	max_mobs = 3
	restart_time = 10 MINUTES
	mob_types = list(
	/mob/living/carbon/human/species/skeleton/npc/ambush = 6,
	/mob/living/simple_animal/hostile/rogue/skeleton/bow = 4,
	/mob/living/carbon/human/species/dwarfskeleton/ambush = 4,
	/mob/living/carbon/human/species/skeleton/npc/dungeon = 3,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/xbow = 3)
	text_faction = "Skeletons"
	objfaction = list("undead")

/obj/effect/mobspawner/skeleton_spawner_simple
	name = "skelly spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	restart_time = 10 MINUTES
	min_mobs = 5
	max_mobs = 8
	mob_types = list(
	/mob/living/simple_animal/hostile/rogue/skeleton/axe = 6,
	/mob/living/simple_animal/hostile/rogue/skeleton/spear = 6,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard = 5,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/shield = 4,
	/mob/living/simple_animal/hostile/rogue/skeleton/bow = 4,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard = 2,
	/mob/living/simple_animal/hostile/rogue/skeleton/guard/crypt_guard_spear = 2
	)
	text_faction = "Skeletons"
	objfaction = list("undead")


/obj/effect/mobspawner/ghosts_all
	name = "wraith spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	restart_time = 10 MINUTES
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/rogue/ghost/wraith = 1
		)
	text_faction = "Wraiths"
	objfaction = list("undead")


/obj/effect/mobspawner/ghosts_wraiths
	name = "wraith spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	restart_time = 10 MINUTES
	min_mobs = 1
	max_mobs = 2
	mob_types = list(
	/mob/living/simple_animal/hostile/rogue/ghost/wraith = 1
		)
	text_faction = "Wraiths"
	objfaction = list("undead")

/*
/obj/effect/mobspawner/ghosts_cursedsouls
	name = "cursed soul spawner"
	desc = ""
	anchored = TRUE
	density = FALSE
	restart_time = 10 MINUTES
	min_mobs = 2
	max_mobs = 3
	mob_types = list(
	/mob/living/simple_animal/hostile/rogue/ghost/cursed = 1
		)
	text_faction = "Cursed souls"
	objfaction = list("undead")
*/
