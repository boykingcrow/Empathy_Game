EXTERNAL get(var)
EXTERNAL set(var, arg1)
EXTERNAL killthebitch()
EXTERNAL spawnObj5()

VAR ask = 0
VAR choice = 0

{get("BOND") == "2":
->GETTIN_PARTS

-else:
->CREATURE_SHIP
}

=== function alter(ref x, k) ===
	~ x = x + k

=== CREATURE_SHIP ===
{get("BOND") == "3":->GETTIN_PARTS}
{get("BOND") == "4":->GETTIN_PARTS}
{get("BOND") == "5":->GETTIN_PARTS}

{get("hasLeft") == "2": 

You explore for hours until you come across wreckage that is decidedly alien. Oddly no fungus grows on or near the large onyx husk.

As you walk closer you realize just how massive - and ancient - it is. It appears to you as the corpse of a fallen colossus that seems to have less flew through space than drifted through it.

-else:
You return to the large onyx husk.
} 

{get("hasLeft") == "2":
*[Go into the remains.]->ship_interior
}
{get("image") == "0":
*[Explore husk.]-> outside
}

= outside

Outside of the ship is barren and rocky. You aren't sure whether it's because the impact of the ship scorched the earth - or because, for some mysterious reason, lite retreated from the fallen thing. 

As you circle the perimeter of the ship, you notice a large gap in its obsidian carapace.

    *[Go through.]
    You enter the gap. Light streams in from outside — casting a dusty glow on strange images carved into the wall. Images of creatures whose forms are difficult to comprehend. In the corner of the image, you spot a form — much smaller than the others — that reminds you of the creature you've been encountering.
    
    It looks like if you wanted to, you could pry the image from its place on the wall. What will you do?

        **AI:[...] <> You just might want to swipe this, it could come in handy.

        ***[Take the image.]

        You pry it from the wall and leave the crevice.

        {set("image", "1")}
        {get("image") == "1": + Creature family portrait added to inventory.}
            
            ****[continue.]-> CREATURE_SHIP

=ship_interior
{set ("hasLeft", 3)}
You find a large gap in the monoliths side and walk into it. As you move deeper the light filtering in from the outside is devoured by the darkness that oozes from within.

*AI:[...]<> Well this is might bloody spooky, innit?
	
	**[Use light.]
	You pull out your broken plasma rifle and flick on its light.
        
        ***[continue.]

-You wander through the ancient ships labyrinthine halls. It is deathly quiet save for the sound of your footsteps and the whirring and beeping on the AI core's internal components.

You soon find yourself in a large room. Its walls are covered in vine-like tubes of varying sizes. You touch one of them. It emits a faint purple glow. All of the tubes snake along towards a central point on the other side of the room. Color dances and bubbles forth from the circular crevice where they converge.

    *AI:[...]<> Alright, I think this is what passes for this thing's central computer, take us over there and shove us into it, yeah?
        **AI:[...]<> Maybe we can glean some info.
        
            ***[Shove AI into strange hole.]
            
You shove the AI into the crevice. Nothing happens.

	****AI:[...]
    <> Well, that was rather anticlimactic. Here, let me wiggle just so…
	
		*****[continue.]

-The room explodes with hundreds of colors so bright it feels as if they burn themselves into your occipital lobe — like for the rest of your life, you will be doomed to wander the cosmos seeing nothing but these colors.

The AI is screaming. Two streams of constantly color morphing vertical planes stretch from either side of it into some infinite void behind you.

*AI:[...]<> It goes on forever -- and -- OUR GOD -- it’s full of stars!

**The colors fade. 
<> Your vision returns to normal. You retrieve the AI core from the crevice.

-What now?

    *[Run away screaming.]
    You run away screaming.
    
        **[continue.]
        ->creatureship_end
        
    *[Ask AI what just happened.]

    ~alter(ask, 1)
    
        **AI:[...]<> No idea. It does feel like the colors are part of us now. Somewhere in our processor bits, amongst the fungus, wriggling and writhing. Our guess is we can translate the creature’s language if we can somehow tap into those colors.
        
            ***[Leave.]
            You exit the innards of the onyx colossus back into the light of day.
            ****[continue.]->creatureship_end

= creatureship_end

{ask == 0: 

    *[Ask AI what just happened.]

        **AI:[...]<> No idea. It does feel like the colors are part of us now. Somewhere in our processor bits, amongst the fungus, wriggling and writhing. Our guess is we can translate the creature’s language if we can somehow tap into those colors.
        ->middlebit
-else:
->middlebit

}

== middlebit
{choice > 2:->convoend}
You sit and rest for a bit after your encounter.

*[Take a nap.]->nap
*[Eat.]->eat
*[Mull around.]->mull

=nap
~alter(choice, 1)
You try to nap, but the thought of fungus slowly growing over you with murderous intent keeps you awake.->middlebit

=eat
~alter(choice, 1)
You eat some TASTY-GOO brand food-like substance.

    *[Sing it with me now!]
        **[I poop!] 
            ***[You poop!]
                ****[We all poop for TASTY-GOO...P!] ->middlebit

=mull
~alter(choice, 2)
You mull around. Kick around stones and bits of debris. Careful not to disturb any fungal life so the AI core doesn't yell at you again. A decent kick sends a piece of debris hurtling into a steaming pool with a loud plop. It's surface boils over with the thrashing of many tiny angry fish-like beasts, and you notice, of all things, a toothbrush at your feet.
{set("toothbrush", 1)}
{get("toothbrush") == "1":+ Toothbrush added to inventory.}
->middlebit

== convoend
{set ("BOND", 1)}
{spawnObj5()}
    *AI:[...]<> So, we need to chat, yeah?
    
	    **[What is it?]
	    
		    ***AI:[...]<> Yeah, you know how we were all like “we did it!” and like “we cracked the code!” — well, that, uh, that’s not entirely… accurate.
		    
			    ****[What is it?]
                ****[Go on.]
                ****[Spit it out.]

- AI: So… the thing is: We broke our empathy module in the crash.
                        
    *[So.]
    *[Uh oh.]
    *[Empathy wha?]

-AI: The creature, its species, they communicate with feelings — if we’re going to convince it to help, we need to be able to talk to it.
                                
    *[Still not following.]
                                
    *[What?]
    What on earth are you going on about?

-AI: We’ve got all the colors. But we can’t translate them if we can’t match them with feelings. Savvy? Which we CAN’T. Without our empathy module.
                                                
    *AI:[...]<> Oh boy. I just had an abysmal idea! We’ll make YOU our empathy module! 
                                                
         **[Hold on a...]
                                            
            ***AI:[...]<> Get to work! Empathy module 2!
            {killthebitch()}            
            ->convoend


=== GETTIN_PARTS ===
You return to the large onyx husk.

{get("BOND") == "1":->bond1}
{get("BOND") == "2":->bond2}
{get("BOND") == "3":->bond3}
{get("BOND") == "4":->bond4}
{get("BOND") == "5":->bond5}

=bond1
 *AI: [...]
    <> The creature didn't come with us... Go bond with it!
    **[Leave.]
{killthebitch()}
->GETTIN_PARTS


=bond2

{get("comms_relay") == "0":
+[Look for comms relay.]->comms_relay
}
+[Leave.]
{killthebitch()}
->GETTIN_PARTS

=bond3

{get("comms_relay") == "0":
*[Look for comms relay.]->comms_relay
}
{get("antenna") == "0":
*[Look around for a metallic rod.]->antenna
}
+[Leave.]
{killthebitch()}
->GETTIN_PARTS


=bond4

{get("comms_relay") == "0":
*[Look for comms relay.]->comms_relay
}
{get("antenna") == "0":
*[Look around for a metallic rod.]->antenna
}
{get("warp_coil") == "0":
*[Look for warp coil.]->warp_coil
}
+[Leave.]
{killthebitch()}
->GETTIN_PARTS


=bond5

{get("comms_relay") == "0":
*[Look for comms relay.]->comms_relay
}
{get("antenna") == "0":
*[Look around for a metallic rod.]->antenna
}
{get("warp_coil") == "0":
*[Look for warp coil.]->warp_coil
}
+[Leave.]
{killthebitch()}
->GETTIN_PARTS



=comms_relay
The alien monolith’s labyrinthine halls are still creepy and deathly silent, but the colorful glow radiated by the creature give them an almost cozy. Like an ancient inhuman homestead or chateau.

The AI guides you back to the ship’s central room.

*AI: [...]
<> Alright, remember the “it’s full of stars!” mind altering computer gizmo? We’re going to need you to crawl right in there and start pulling things out until we tell you one is the communication relay.

**[Ugh...]
AI: Sigh…
**[Is it safe?]
We are one thousand percent certain it is safe. As long as you don’t accidentally interface with the ship’s computer. In which case your head will literally explode. Too much raw information for a squishy brain to possibly download. 

-Good luck.

*[Start gutting the alien computer.]
You climb into the crevice and haphazardly begin to decouple and pull out various parts. You pile them in the center of the room. Some are too heavy. And some are larger than your entire body. The creature lifts those with its strange gaseous telekinesis.

**AI: [...]
<> That’s the one! At least, we’re pretty sure it is. Either that or some sort of impossibly advanced antimatter explosive.

{set("comms_relay", 1)}
{get("comms_relay") == "1": + Comms relay acquired.}

***[Take the “comms relay” to the beacon.]
{killthebitch()}
->GETTIN_PARTS


=antenna
Conveniently, right outside of the alien ship an area is just teeming with large metal rods of all shapes and sizes. Like some kind of rod farm.

*AI: [...]
<> Honestly, we can retrofit any sufficiently large metallic rod into an antenna. Just point to one of these things so we can get back to beaconing.

**[Point to giant metal rod.]
**[Point to giant metal rod.]
**[Point to giant metal rod.]
**[Point to giant metal rod.]
-You point to the giant metal rod. The creature gaseous lifts it.
{set("antenna", 1)}
{get("antenna") == "1": + Antenna acquired.}
***[continue.]
{killthebitch()}
->GETTIN_PARTS

= warp_coil

You make your way into the bowels of the alien ship. You arrive in a room that the AI says “looks a bit engine-room-y, probably.”

*On the far end[…] 
<> of the room an imposing outer sphere surrounds a series of nested smaller spheres, each with a slightly different shape.
**AI:[...]
<> Alright, get in there and find the coil-y bits, please. Just be quick about it. The warp core is possibly still IMMENSELY radioactive - - and we don’t want you growing any extra heads or various other fleshy parts.
***AI:[...]
<> Well, that would be quite fun actually… before all that cancer eats you from the inside out.

****[How am I supposed to find the coil?]
*****AI:[...]
<> Eyeballs?

******[Wander into the probably extremely dangerous hopefully inactive antimatter engine.]
You gather up your courage and rush headlong towards the core. Only to find the creature already emerging from it, coily-bits in hand. Figuratively. Because it doesn’t have hands. And also because it’s carrying the thing with psionic powers.
{set("warp_coil", 1)}
{get("warp_coil") == "1": + Warp coil acquired.}

*******AI:[...]
<> Sigh. I was looking forward to what the new “slobbering mutant” variety of fleshballoon would be like.

********[Take the warp coil back to the beacon.]
{killthebitch()}
->warp_coil


