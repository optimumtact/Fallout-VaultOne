/datum/interaction/lewd/kiss
	command = "deepkiss"
	description = "Kiss them deeply."
	require_user_mouth = 1
	write_log_user = "kissed"
	write_log_target = "was kissed by"
	interaction_sound = null
	max_distance = 1

/datum/interaction/lewd/kiss/post_interaction(var/mob/user, var/mob/target)
	. = ..()
	if(user.lust < 5)   user.lust = 5
	if(target.lust < 5) target.lust = 5

/datum/interaction/lewd/kiss/evaluate_user(var/mob/user, var/silent=1)
	if(..())
		//if(!user.has_lips())
		//	if(!silent) user << "<span class='warning'>You don't have any lips.</span>")
		//	return 0
		return 1
	return 0

/datum/interaction/lewd/kiss/display_interaction(var/mob/user, var/mob/target)
	if (user.lust >= 3)
		user.visible_message("<span class='warning'>\The [user] gives an intense, lingering kiss to \the [target].</span>")
	else
		user.visible_message("<span class='warning'>\The [user] kisses \the [target] deeply.</span>")

/datum/interaction/lewd/oral
	command = "suckvag"
	description = "Go down on them."
	require_user_mouth = 1
	require_target_vagina = 1
	write_log_user = "gave head to"
	write_log_target = "was given head by"
	interaction_sound = null
	user_not_tired = 1
	require_target_naked = 1
	max_distance = 0

/datum/interaction/lewd/oral/display_interaction(var/mob/user, var/mob/target)
	user.do_oral(target)

/datum/interaction/lewd/oral/blowjob
	command = "suckcock"
	description = "Suck them off."
	require_target_vagina = 0
	require_target_penis = 1
	target_not_tired = 1

/datum/interaction/lewd/fuck
	command = "fuckvag"
	description = "Fuck their pussy."
	require_user_penis = 1
	require_target_vagina = 1
	write_log_user = "fucked"
	write_log_target = "was fucked by"
	interaction_sound = null
	user_not_tired = 1
	require_user_naked = 1
	require_target_naked = 1
	max_distance = 0

/datum/interaction/lewd/fuck/display_interaction(var/mob/user, var/mob/target)
	user.do_vaginal(target)

/datum/interaction/lewd/fuck/anal
	command = "fuckass"
	description = "Fuck their ass."
	require_target_vagina = 0
	require_target_anus = 1
	user_not_tired = 1

/datum/interaction/lewd/fuck/anal/display_interaction(var/mob/user, var/mob/target)
	user.do_anal(target)

/datum/interaction/lewd/finger
	command = "finger"
	description = "Finger them."
	require_user_hands = 1
	require_target_vagina = 1
	interaction_sound = null
	user_not_tired = 1
	require_target_naked = 1
	max_distance = 0

/datum/interaction/lewd/finger/display_interaction(var/mob/user, var/mob/target)
	user.do_fingering(target)

/datum/interaction/lewd/facefuck
	command = "facefuck"
	description = "Fuck their mouth."
	require_target_mouth = 1
	interaction_sound = null
	user_not_tired = 1
	require_user_naked = 1
	max_distance = 0

/datum/interaction/lewd/facefuck/display_interaction(var/mob/user, var/mob/target)
	user.do_facefuck(target)

/datum/interaction/lewd/mount
	command = "mount"
	description = "Mount their cock."
	require_user_vagina = 1
	require_target_penis = 1
	interaction_sound = null
	user_not_tired = 1
	target_not_tired = 1
	require_user_naked = 1
	require_target_naked = 1
	max_distance = 0

/datum/interaction/lewd/mount/display_interaction(var/mob/user, var/mob/target)
	user.do_mount(target)

/datum/interaction/lewd/rimjob
	command = "rimjob"
	description = "Lick their ass."
	require_user_mouth = 1
	require_target_anus = 1
	interaction_sound = null
	user_not_tired = 1
	require_target_naked = 1
	max_distance = 0

/datum/interaction/lewd/rimjob/display_interaction(var/mob/user, var/mob/target)
	user.do_rimjob(target)