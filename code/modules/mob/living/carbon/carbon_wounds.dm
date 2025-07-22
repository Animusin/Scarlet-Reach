/mob/living/carbon/get_embedded_objects()
	. = ..()
	for(var/obj/item/bodypart/bodypart as anything in bodyparts)
		if(!length_char(bodypart.embedded_objects))
			continue
		. += bodypart.embedded_objects

/mob/living/carbon/get_wounds()
	. = ..()
	for(var/obj/item/bodypart/bodypart as anything in bodyparts)
		if(!length_char(bodypart.wounds))
			continue
		. += bodypart.wounds
