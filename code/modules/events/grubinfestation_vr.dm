/datum/event/grub_infestation
	announceWhen	= 90
	endWhen			= 200
	var/spawncount = 1
	var/list/vents = list()
	var/give_positions = 0

/datum/event/grub_infestation/setup()
	announceWhen = rand(announceWhen, announceWhen + 60)

	spawncount = rand(2 * severity, 6 * severity)

	for(var/obj/machinery/atmospherics/unary/vent_pump/temp_vent in machines)
<<<<<<< HEAD
		//CHOMPEdit: Added a couple areas to the exclusion. Also made this actually work.
		var/in_area = get_area(temp_vent)
		if(istype(in_area, /area/crew_quarters/sleep) || istype(in_area, /area/hallway/secondary/entry))
=======
		var/area/A = get_area(temp_vent)
		if(A.forbid_events)
>>>>>>> eb06a4b9e2... Merge pull request #13220 from Heroman3003/forbid-events
			continue
		if(!temp_vent.welded && temp_vent.network && (temp_vent.loc.z in using_map.station_levels))
			if(temp_vent.network.normal_members.len > 10) //CHOMP Edit: Most our networks are 40. SM is 4 and toxins is 2. This needed to change in order to spawn.
				vents += temp_vent

/datum/event/grub_infestation/announce()
	command_announcement.Announce("Solargrubs detected coming aboard [station_name()]. Please clear them out before this starts to affect productivity. All crew efforts are appreciated and encouraged.", "Lifesign Alert", new_sound = 'sound/AI/aliens.ogg')

/datum/event/grub_infestation/start()
	while((spawncount >= 1) && vents.len)
		var/obj/vent = pick(vents)
		new /mob/living/simple_mob/animal/solargrub_larva(get_turf(vent))
		vents -= vent
		spawncount--
	vents.Cut()

/datum/event/grub_infestation/end()
	var/list/area_names = list()
	for(var/mob/living/G as anything in existing_solargrubs)
		if(!G || G.stat == DEAD)
			continue
		var/area/grub_area = get_area(G)
		if(!grub_area) //Huh, really?
			if(!get_turf(G)) //No turf either?
				qdel(G) //Must have been nullspaced
				continue
		area_names |= grub_area.name
	if(area_names.len)
		var/english_list = english_list(area_names)
		command_announcement.Announce("Sensors have narrowed down remaining active solargrubs to the following areas: [english_list]", "Lifesign Alert")
