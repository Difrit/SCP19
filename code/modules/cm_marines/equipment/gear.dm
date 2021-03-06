
/**********************Marine Gear**************************/

//MARINE COMBAT LIGHT

/obj/item/device/flashlight/combat
	name = "combat flashlight"
	desc = "A robust flashlight designed to be held in the hand, or attached to a rifle"
	force = 10 //This is otherwise no different from a normal flashlight minus the flavour.
	throwforce = 12 //"combat" flashlight

//MARINE SNIPER TARPS

/obj/item/bodybag/tarp
	name = "\improper V1 thermal-dapening tarp (folded)"
	desc = "A tarp carried by USCM Snipers. When laying underneath the tarp, the sniper is almost indistinguishable from the landscape if utilized correctly. The tarp contains a thermal-dampening weave to hide the wearer's heat signatures, optical camoflauge, and smell dampening."
	icon = 'icons/obj/bodybag.dmi'
	icon_state = "jungletarp_folded"
	w_class = 3.0
	unfolded_path = /obj/structure/closet/bodybag/tarp



/obj/item/bodybag/tarp/snow
	icon = 'icons/obj/bodybag.dmi'
	icon_state = "snowtarp_folded"
	unfolded_path = /obj/structure/closet/bodybag/tarp/snow

/obj/structure/closet/bodybag/tarp
	name = "\improper V1 thermal-dampening tarp"
	desc = "A tarp carried by USCM Snipers. When laying underneath the tarp, the sniper is almost indistinguishable from the landscape if utilized correctly. The tarp contains a thermal-dampening weave to hide the wearer's heat signatures, optical camouflage, and smell dampening."
	icon = 'icons/obj/bodybag.dmi'
	icon_state = "jungletarp_closed"
	icon_closed = "jungletarp_closed"
	icon_opened = "jungletarp_open"
	open_sound = 'sound/effects/vegetation_walk_1.ogg'
	close_sound = 'sound/effects/vegetation_walk_2.ogg'
	item_path = /obj/item/bodybag/tarp
	anchored = 1

/obj/structure/closet/bodybag/tarp/snow
	icon_state = "snowtarp_closed"
	icon_closed = "snowtarp_closed"
	icon_opened = "snowtarp_open"
	item_path = /obj/item/bodybag/tarp/snow




/obj/item/coin/marine
	name = "marine specialist weapon token"
	desc = "Insert this into a specialist vendor in order to access a single highly dangerous weapon."
	icon_state = "coin_adamantine"

	attackby(obj/item/W as obj, mob/user as mob) //To remove attaching a string functionality
		return

/obj/structure/broken_apc
	name = "\improper M577 armored personnel carrier"
	desc = "A large, armored behemoth capable of ferrying marines around. \nThis one is sitting nonfunctional."
	anchored = 1
	opacity = 1
	density = 1
	icon = 'icons/Marine/apc.dmi'
	icon_state = "apc"


/obj/item/storage/box/uscm_mre
	name = "\improper USCM meal ready to eat"
	desc = "<B>Instructions:</B> Extract food using maximum firepower. Eat.\n\nOn the box is a picture of a shouting Squad Leader. \n\"YOU WILL EAT YOUR NUTRIENT GOO AND YOU WILL ENJOY IT, MAGGOT.\""
	icon_state = "mre1"

	New()
		..()
		pixel_y = rand(-3,3)
		pixel_x = rand(-3,3)
		for(var/i = 0,i < 6,i++)
			var/rand_type = rand(0,8)
			switch(rand_type)
				if(0 to 2)
					new /obj/item/reagent_container/food/snacks/protein_pack(src)
				if(3)
					new /obj/item/reagent_container/food/snacks/mre_pack/meal1(src)
				if(4)
					new /obj/item/reagent_container/food/snacks/mre_pack/meal2(src)
				if(5)
					new /obj/item/reagent_container/food/snacks/mre_pack/meal3(src)
				if(6)
					new /obj/item/reagent_container/food/snacks/mre_pack/meal4(src)
				if(7)
					new /obj/item/reagent_container/food/snacks/mre_pack/meal5(src)
				if(8)
					new /obj/item/reagent_container/food/snacks/mre_pack/meal6(src)


/obj/item/reagent_container/food/snacks/protein_pack
	name = "stale USCM protein bar"
	desc = "The most fake looking protein bar you have ever laid eyes on, covered in the a subtitution chocolate. The powder used to make these is a subsitute of a substitute of whey substitute."
	icon_state = "yummers"
	filling_color = "#ED1169"
	w_class = 1

	New()
		..()
		reagents.add_reagent("nutriment", 8)
		bitesize = 4


/obj/item/reagent_container/food/snacks/mre_pack
	name = "\improper generic MRE pack"
	//trash = /obj/item/trash/USCMtray
	trash = null
	w_class = 2

/obj/item/reagent_container/food/snacks/mre_pack/meal1
	name = "\improper USCM Prepared Meal (bread)"
	desc = "A staple of the Clown Planet, every clown baby's first solid food is a slice of banana bread with cream pie spread."
	icon_state = "MREa"
	filling_color = "#ED1169"

	New()
		..()
		reagents.add_reagent("nutriment", 9)
		bitesize = 3

/obj/item/reagent_container/food/snacks/mre_pack/meal2
	name = "\improper USCM Prepared Meal (pork)"
	desc = "It's hard to go wrong with rice and pork."
	icon_state = "MREb"

	New()
		..()
		reagents.add_reagent("nutriment", 9)
		bitesize = 2

/obj/item/reagent_container/food/snacks/mre_pack/meal3
	name = "\improper USCM Prepared Meal (spag)"
	desc = "That's-a spicy meat-aball!"
	icon_state = "MREc"

	New()
		..()
		reagents.add_reagent("nutriment", 9)
		bitesize = 3

/obj/item/reagent_container/food/snacks/mre_pack/meal4
	name = "\improper USCM Prepared Meal (pizza)"
	desc = "Aubergine, carrot and sweetcorn, all on a bed of cheese and tomato sauce."
	icon_state = "MREd"

	New()
		..()
		reagents.add_reagent("nutriment", 8)
		bitesize = 1

/obj/item/reagent_container/food/snacks/mre_pack/meal5
	name = "\improper USCM Prepared Meal (monkey)"
	desc = "Sopa de Macaco, Uma Delicia."
	icon_state = "MREe"

	New()
		..()
		reagents.add_reagent("nutriment", 10)
		bitesize = 3

/obj/item/reagent_container/food/snacks/mre_pack/meal6
	name = "\improper USCM Prepared Meal (tofu)"
	desc = "BBQ sticky tofu in a bun, hand crafted by Hungarian children who believe in a galaxy with soldiers that kill people, not animals."
	icon_state = "MREf"

	New()
		..()
		reagents.add_reagent("nutriment", 8)
		bitesize = 2

/obj/item/reagent_container/food/snacks/mre_pack/xmas1
	name = "\improper Xmas Prepared Meal:sugar cookies"
	desc = "Delicious Sugar Cookies"
	icon_state = "mreCookies"

	New()
		..()
		reagents.add_reagent("nutriment", 10)
		bitesize = 2

/obj/item/reagent_container/food/snacks/mre_pack/xmas2
	name = "\improper Xmas Prepared Meal:gingerbread cookie"
	desc = "A cookie without a soul."
	icon_state = "mreGingerbread"

	New()
		..()
		reagents.add_reagent("nutriment", 10)
		bitesize = 2

/obj/item/reagent_container/food/snacks/mre_pack/xmas3
	name = "\improper Xmas Prepared Meal:fruitcake"
	desc = "Also known as ''the Commander''."
	icon_state = "mreFruitcake"

	New()
		..()
		reagents.add_reagent("nutriment", 10)
		bitesize = 2

/obj/item/storage/box/pizza
	name = "food delivery box"
	desc = "A space-age food storage device, capable of keeping food extra fresh. Actually, it's just a box."

	New()
		..()
		pixel_y = rand(-3,3)
		pixel_x = rand(-3,3)
		new /obj/item/reagent_container/food/snacks/donkpocket(src)
		new /obj/item/reagent_container/food/snacks/donkpocket(src)
		var/randsnack
		for(var/i = 1 to 3)
			randsnack = rand(0,5)
			switch(randsnack)
				if(0)
					new /obj/item/reagent_container/food/snacks/fries(src)
				if(1)
					new /obj/item/reagent_container/food/snacks/cheesyfries(src)
				if(2)
					new /obj/item/reagent_container/food/snacks/bigbiteburger(src)
				if(4)
					new /obj/item/reagent_container/food/snacks/taco(src)
				if(5)
					new /obj/item/reagent_container/food/snacks/hotdog(src)

/obj/item/paper/janitor
	name = "crumbled paper"
	icon_state = "pamphlet"
	info = "In loving memory of Cub Johnson."



/obj/item/storage/box/wy_mre
	name = "\improper Weyland-Yutani brand MRE"
	desc = "A prepackaged, long-lasting food box from Weyland Yutani Industries.\nOn the box is the Weyland Yutani logo, with a slogan surrounding it: \n<b>WEYLAND-YUTANI. BUILDING BETTER LUNCHES</b>"
	icon_state = "mre2"
	can_hold = list("/obj/item/reagent_container/food/snacks")
	w_class = 4

	New()
		..()
		pixel_y = rand(-3,3)
		pixel_x = rand(-3,3)
		new /obj/item/reagent_container/food/snacks/donkpocket(src)
		new /obj/item/reagent_container/food/snacks/donkpocket(src)
		new /obj/item/reagent_container/food/snacks/donkpocket(src)
		new /obj/item/reagent_container/food/drinks/coffee(src)
		var/randsnack = rand(0,5)
		switch(randsnack)
			if(0)
				new /obj/item/reagent_container/food/snacks/cheesiehonkers(src)
			if(1)
				new /obj/item/reagent_container/food/snacks/no_raisin(src)
			if(2)
				new /obj/item/reagent_container/food/snacks/spacetwinkie(src)
			if(4)
				new /obj/item/reagent_container/food/snacks/cookie(src)
			if(5)
				new /obj/item/reagent_container/food/snacks/chocolatebar(src)
