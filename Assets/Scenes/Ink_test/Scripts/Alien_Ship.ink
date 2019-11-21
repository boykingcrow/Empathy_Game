EXTERNAL get(var)
EXTERNAL set(var, arg1)

VAR ask = 0
VAR choice = 0

->CREATURE_SHIP

=== function alter(ref x, k) ===
	~ x = x + k

=== CREATURE_SHIP ===

{get("hasLeft") == "1": 

You explore for hours until you come across wreckage that is decidedly alien. Oddly no fungus grows on or near the large onyx husk.

As you walk closer you realize just how massive - and ancient - it is. It appears to you as the corpse of a fallen colossus that seems to have less flew through space than drifted through it.

} 

{get("hasLeft") == "2": You return to the large onyx husk.}

*[Go into the remains.]->ship_interior
*[Explore husk.]-> outside

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
        {set ("hasLeft", 2)}
            
            ****[continue.]-> CREATURE_SHIP

=ship_interior

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

The AI is screaming. Two streams of constantly color morphing vertical plains stretch from either side of it into some infinite void behind you.

*AI:[...]<> It goes on forever — and — OUR GOD — it’s full of stars!

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
            ->creatureship_end

= creatureship_end

{ask == 0: 

    *[Ask AI what just happened.]

        **AI:[...]<> No idea. It does feel like the colors are part of us now. Somewhere in our processor bits, amongst the fungus, wriggling and writhing. Our guess is we can translate the creature’s language if we can somehow tap into those colors.
        ->middlebit
}

== middlebit
{choice == 3:->convoend}
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
            {set ("hasLeft", 2)} 
            {set ("BOND", 1)}            
            ->END
