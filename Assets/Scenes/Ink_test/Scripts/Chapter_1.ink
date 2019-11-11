VAR planet = 0
VAR shoot = 0
VAR wait = 0
VAR outside = 0

-> PLANET

=== function alter(ref x, k) ===
    ~ x = x + k

=== PLANET ===

    {planet == 0: You wake up again. Somehow. Somehow really should be stressed. The odds of survival were absolutely abysmal. It’s a miracle really. You should count your lucky… debris. I mean. The statistical likelihood of your continued survival is still quite remote. You’ve landed on a — what seems to be — very inhospitable if not downright hostile planet after all. And — as you’ll no doubt notice — the ship is in hundreds if not thousands of pieces strewn for miles.}

    {planet == 4: What now?}

*[Look around.]

    You look around. You see massive tree-like clusters of fungus surrounded by fern-like ground plants(?) that seem to writhe and wriggle to some unknown music. Wreckage is strewn about. Its various shapes and sizes lay mangled, or smoking, or steaming, or even — sporadically — mostly unharmed. 

        ~ alter(planet, 1)

    -> PLANET

*[Scout the area.]

    You explore your immediate area. The bits of wreckage around you hiss. Creak. Pop. The woodland, or I suppose, fungusland (mushroomland?) around you is overbearing, full of purples. Teals. Blues. Bioluminescence traces the biota in flecks, lines, and spots. Something unsettles you. You aren’t sure why. It dawns on you that there are no ambient noises here. No bird-ish twitter, no insect-ish hum, buzz, nor chirp. No mammal-ish screams or cries. Just. Silence.

        ~ alter(planet, 1)

    -> PLANET

*[Sift through the wreckage.]

    You kick around some of the broken bits of your former ship, occasionally finding something cool enough to the touch to be picked up and examined. The bits of wreckage around you hiss, creak, and pop. Not too far in the distance is a large chunk of what used to be your vessel. Once it cools off a bit, it would be advisable to see if anything useable remains within.

        ~ alter(planet, 1)

    -> PLANET

*[Walk over to the remains of your vessel.]

    You walk to the smoking remains of your vessel. Or, technically, about a third of it. You enter its interior through a large hole. Inside nothing blinks, nothing flashes, nothing beeps. All is silent, except for the sporadic hiss or pop. You pry open any compartments or storage spaces you can locate. Here’s what you’re left with: One month’s worth of TASTY-GOO brand liquid rations and one standard [REDACTED] CORP. issued plasma rifle.

        ~ alter(planet, 1)

    -> PLANET

* {planet == 4} [Keep looting the remains.]

    You dig through compartments, cubbies, crevices — but find nothing else  of use.

    -> PLANET

* {planet == 4} [Leave the remains.]

    You exit the remains of your ship. The silence is broken. Something else is here. Something large. It moves through the huge fungus. They sway and creak. You draw the [REDACTED] CORP. issued plasma rifle and point it at the disturbed fungus.
    
    **The stalks of massive fungi part[...]
    
    ->outside_ship

=== outside_ship ===

    {outside == 0: 
    
    -<> and something emerges. The first thing you notice is the flash of colors. The second a single unblinking eye. The third is movement. Squirming. Writhing. Toward the edges of the creature. Appendages dance. A hundred. A thousand.
    }
    
    *[Shoot.]
    
        That's right! The motto of any good space adventurer: SHOOT FIRST! You shoot wildly at the creature, filling its terrifying form full of holes — well, at least that's what you intended to do. 
        
        In reality,

    * [Wait.]

    You wait. [REDACTED] CORP. issued plasma rifle pointed at... this unknownable Thing. Just being strange doesn't deserve a plasma beam to the face after all. Such senseless murder probably, definitely even, would make you a complete. unforgivable. monster.
    
     **Unfortunately[...]
        <>, the uncontrollable fear induced shaking of your hands accedentally sets to gun to "KILL THEM ALL" mode. 
        
        However,
    
-<> the gun spontaniously bursts into flames.
    
You drop the rifle. The creature stares at the smoking husk of a gun with an unblinking eye. It then flashes RED. Turns. And disappears back into the stalks of fungi. Speculation: You’ve offended it. You know, trying to shoot things, even cross-culturally, tends to be quite rude.
    
    *[You arent' sure why...]
    
    You aren’t sure why, but when the creature looked at you, you felt as if you were being studied, judged. Maybe you’re anthropomorphizing  — but this creature — it seems to be intelligent. It is unclear what this creature wants. If it wants. What it even is. 
    
    Questions linger in your mind. Was the gun damaged? Or was it something the creature did? 
    
    But these things, for now at least, are low on your list of priorities. 

    **[Actually, what *are* your priorities?] -> priorities

=priorities

* [Gather food/water.]

Good desert island instincts, unfortunately, you are not on a desert island. You are on a seemingly unoccupied and most definitely hostile planet. Also, you have plenty of  TASTY-GOO brand liquid rations. I know, I know, they taste like used tires and dog farts (NOTE: come up with better comparisons) — but the fruits and veggies on this planet will make you explode, or something, probably.

-> priorities

* [Scream in sheer horror of how small you are compared to the infinitely vast and uncaring void that is the universe.]

You scream in horror of how small you are compared to the infinitely vast and uncaring void that is the universe.

-> priorities

* [Repair ship.]

Okay, let’s think this out. There are two colossal-ish problems to solve if you want to repair your ship:

** [Problem one]

Problem one, the various materials — formerly known as your ship — have been scattered over a strip of land approximately two miles in length. But that, in itself, is more of a time management issue than a good-and-proper problem. Which brings you to the realization that not all chunks are created equal. In other words, some debris are small, things you can pick up and carry. Some, are not. Unless you can deadlift 1.5 tons (hint: you can’t), this is quite an obstacle.

*** [Problem two]

Problem two, even if you had all the materials in one place, you are lacking the tools to put it all together and get it working. This can be divided into a set of smaller problems: Sub-problem A: You are pretty sure there was an arc welder — or was it a stir welder? — stored away somewhere. It is essential that you locate it. You know, to put it all together. Glue just won’t do. Sub-problem B: Even a perfectly whole-again ship is useless without a propulsion module. Sub-problem C: And you, in turn, will be useless (a.k.a. dead) without a life support module. Sub-problem D: Even if you were to make it (insert better phrase than “out of orbit”) — without your trusty A.I., you’d end up immediately. Invariably. Ineffably. Lost. -> END

