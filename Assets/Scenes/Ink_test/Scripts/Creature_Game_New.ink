EXTERNAL get(var)
EXTERNAL set(var, arg1)
EXTERNAL build_colorGun()
EXTERNAL spawnObj3()
EXTERNAL spawnObj5()



{spawnObj5()}

->CREATURE_GAME

=== CREATURE_GAME ===

    A creature floats before you. Its body illuminates with a smatter of shifting colors.

    {shuffle:

    - Its single, huge, unblinking eye stares at you blankly.

    - It holds a strange glowing crystal in one of its many tentacles, admiring it, before shoving it into what you believe is its mouth. You hear loud crunches but otherwise notice no reaction from the creature.

    - {get("BOND") == "3":It is constructing (what you think is) a small model of you out of rocks and mud.}{get("BOND") == "4":It is constructing (what you think is) a small model of you out of rocks and mud.}{get("BOND") == "5":It is constructing (what you think is) a small model of you out of rocks and mud.}

    - It is sleeping, or at least you think it's sleeping. It at least isn't moving.

    - {get("toothbrush") == "1":It is brushing its... eye? Like you would brush your teeth. You aren't sure where it even got a brush. Nonetheless, watching this activity disturbs you in ways you'd previously been unable to imagine.}

    - {get("BOND") == "4":It picks up a pile of a dozen-or-so rocks and begins to juggle them, using appendages you are pretty sure weren't even visible before.}{get("BOND") == "5":It picks up a pile of a dozen-or-so rocks and begins to juggle them, using appendages you are pretty sure weren't even visible before.}

    }

Creature Bond: {get("BOND") == "0":What bond?}{get("BOND") == "1":Well, it doesn't hate you. Probably.}{get("BOND") == "2":Anemic.}{get("BOND") == "3":Wobbly.}{get("BOND") == "4":It actually seems to like you, you think.}{get("BOND") == "5":Best buds with the best (terrifying) hugs.}

    {poke < 2:
    +[Poke the creature.] -> poke
    }

    +[Talk to the creature.] -> talk

    +[Trade.]->TRADE
    
    +[Interact.]->INTERACT

    +[Leave.]
    ->END



= poke

You reach out and poke the creature.

    { poke > 1:
        It lashes a tentacle at you.
            + [Dodge.] -> CREATURE_GAME 
    - else:
            It smacks you. 
                *[continue.]->CREATURE_GAME
    }


= talk

You attempt to talk to the creature.

    * [Hey there little... er, cutie?] 
        It stares at you, unblinking.
        ->CREATURE_GAME
        
    * [Can you speak?]
        It stares at you, mute and unblinking. It probably can't speak.
        ->CREATURE_GAME
        
    * [I hate you. I hate this entire stupid planet.]
        It stares at you, unblinking. You feel bad for your outburst.
        ->CREATURE_GAME
        
    * [GRAHHHRGH!]
        The creature smacks you.
        ->CREATURE_GAME




=== TRADE ===

{get("BOND") == "0":

->pre_trade_text

-else:
->trade_choices

}

= trade_choices

{build_colorGun()}
{get("ColorGun") == "0":

What will you trade?

    {get("goo") == "1":
    *[TASTY GOO brand food-like substance.]-> goo
    }
    {get("image") == "1":
    *[An image of creature’s family]-> image
    }
    {get("toothbrush") == "1":
    *[A toothbrush]->toothbrush
    }
    {get("fish") == "1":
    *[The small fish-like beast]->fish
    }
    {get("helmet") == "1":
    *[A REDACTED Corp standard issue Space Helmet.]->helmet
    }
    
-else:->AI_colorGun_convo

}

= pre_trade_text

{spawnObj3()}

You try to hold out an item to trade, but the creature turns and floats away.

    * AI: [...]
    <> Shot in the dark here: it's still mad at you for the whole shooty shooty thing.

    **[continue.]->CREATURE_GAME

=goo

    You offer the creature TASTY GOO. it stares at you blankly.
        * [Show creature item’s use.]
            
            You crack open the TASTY GOO and attach its seal to your food-delivery nozzle. With a loud slurp, the goo flows through the food tube into your mouthparts.
        
            ** [Hand more TASTY GOO to the creature.]
                
                You hand more TASTY GOO to the creature. It gestures and takes bag of strange goop.

    -It looks at it for a few moments before ripping it open and smearing the goo all over its body.

After said smearing, the creature, seemingly satisfied with the trade, hands you a small crystal that glows YELLOW.
    {set("crystalYELLOW", 1)}
    {get("crystalYELLOW") == "1":+ Yellow crystal added to inventory.}
            
            ***[continue.]->CREATURE_GAME

= image

    You offer the creature the image you took from the alien ship. It gently wraps its tentacles around the object and pulls it close, turning a procession of colors — each flowing into the next as food dye flows into water.

    The creature hands you a small crystal that glows a dull BLUE and wanders away.
    {set("crystalBLUE", 1)}
    {get("crystalBLUE") == "1":+ Blue crystal added to inventory.}

    *[continue.]->CREATURE_GAME

= toothbrush
    You offer the creature a toothbrush. 

    It takes it in a tentacle and stares at it blankly with its unblinking eye.

    *AI:[...] <> The critter obviously doesn’t know the proper usage of a bloody toothbrush… Show. It.

        **[Pantomime brushing your teeth.]
        
        You pantomime brushing your teeth. This looks quite absurd. As you happen to have on a space helmet.
        **[Pantomime cleaning something.]
        
        You find some random piece of debris and exaggeratedly go about fake cleaning it, you feel as if you get the point across -- but in all likelihood, to an outsider, you appear to be attacking a scrap of composite material with a small stick.

    -The creature takes the toothbrush from your hand and… just sort of stares at it (intently?) for a while before a flash of sudden color hints at an insight.

    Following its flash of brilliance, the creature proceeds to vigorously brush its large globular eye with the dental utensil.

    -Satisfied with the trade, the creature gives you another small crystal. This one emits a faint PURPLE glow.
    {set("crystalPURPLE", 1)}
    {get("crystalPURPLE") == "1":+ Purple crystal added to inventory.}

            ***[continue.]->CREATURE_GAME

    =fish
    Holding the vile thing by the tippiest tip of its tail, you present the small fish-like beast to the creature.

    At first, the creature recoils. But soon its body illuminates in a mix of color you’ve never seen before.

    *AI:[...]<>Perhaps this particular mix represents curiosity.

    The creature tentatively takes the vile little monster from your hand and stares at it. It turns the fish-like beast this way and that. Viewing the thing from nearly every angle. Once satisfied, the creature wallops the vicious little beast at least half a dozen times on a rock — an act which seems to only further enrage the angry little thing. Mandibles snapping. Eyes full of bloodlust. The creature flushes RED. And the tiny little beast explodes with a loud pop.

    As you wipe viscera from your [REDACTED] Corp issued space helmet visor — the creature hands you a crystal that emits a faint RED glow.
    {set("crystalRED", 1)}
    {get("crystalRED") == "1":+ Red crystal added to inventory.}
    
        **[continue.]->CREATURE_GAME

= helmet

    {helmet == 1:You hold out the extra [REDACTED] Corp standard issue space helmet to the creature. The helmet is identical to your own in every way, almost. It, however, is unfortunately mauve.}

    *AI:[...]<>
    How gauche…

    -The creature takes the helmet and inspects it.

    *[Point to your own helmet.]
    You point to your own helmet.

    The creature stares at you blankly.
    ->helmet

    +[Take off your helmet to show the creature how it works.]

        ++AI:[...]<>...I would strongly advise against the thought you are currently having. Because, of course, you will die a horrible and agonizingly painful death.
        
            +++[“Decide” not to die a horrible death]
             You decide not to die a horrible and agonizingly painful death in order to instruct the creature on the proper use of space helmets and instead merely point to your own helmet.
             
                ++++[continue.]->helmet2

= helmet2

                The creature takes the helmet from you and carefully sits it on top of its own “head.” The helmet does not fit at all.

                The creature gives you another crystal. This one faintly glows GREEN.
                
                {set("crystalGREEN", 1)}
                {get("crystalGREEN") == "1":+ Green crystal added to inventory.}
                    
                    *[continue.]->CREATURE_GAME
    
=AI_colorGun_convo

*AI:[...]
<> Congrats, murderer. You've traded with the creature for all the crystals. We can jerry-rig your busted murder tool into a decidedly-un-murderous tool for communicating with the creature.

        **[Modify plasma rifle into Color-gun.]
        You've modified the [REDACTED] Corp. Standard issue plasma rifle into the Color-gun.
        
        {get("ColorGun") == "1":+ Color-gun added to inventory.}
            
            ***[continue.]->CREATURE_GAME


=== INTERACT ===

{get("ColorGun") == "1":

{get("interact") == "0":->pool_interact}
{get("interact") == "1":->storm_interact}
{get("interact") == "2":->food_interact}
{get("interact") == "3":->DeadCritter_interact}
{get("interact") == "4":->image_interact}
{get("interact") == "5":->CREATURE_GAME}

-else:->pre_colorGun_text

}

== pre_colorGun_text

You have no way to communicate with the creature.

+[continue.]->CREATURE_GAME

==pool_interact

    You find the creature floating at the edge of one of the planet’s totally not dangerous pools.

    {pool_interact == 1:

        *AI:[...]
        <>Obligatory snarky comment.
        **[continue]->pool_interact

    }

    *[Look into the pool.]

        You peer into the pool. Its composition is the same as the pool that took your hand. Roiling, steaming, chock full of fish-like beasts. Its bottom is littered with faintly glowing crystals.
        
        **[continue]->pool_interact
        
    +[Look at the creature.]

        The creature is staring blankly into the pool. Its ethereal body gives nothing away. The colors that splash across its surface, however, tell another story. ->color_puzzle1



    = color_puzzle1

        The creature’s body illuminates a bright RED.

        What color will you emit from the ColorGun?

        +[RED]->wrong
        +[GREEN]->wrong
        +[BLUE]->wrong
        +[PURPLE]->color_puzzle1_2
        +[YELLOW]->wrong

    = wrong

        Nothing happens.

        ->color_puzzle1

    = color_puzzle1_2

        Its body washes with a deep BLUE.

        +[Emit YELLOW] ->wrong
        +[Emit PURPLE] ->wrong
        +[Emit BLUE]->wrong
        +[Emit RED]->wrong
        +[Emit GREEN]->color_puzzle1_end

    = color_puzzle1_end

        {set("BOND", "1")}
        {get("BOND") == "1":+ BOND INCREASED}
        {set("interact", "1")}

        You emit a bright GREEN glow with your Color-gun. The creature returns to a shifting kaleidoscope of colors and drifts away.

        *[continue.]->CREATURE_GAME

== storm_interact

    A storm--at first over the horizon--suddenly falls upon you. You seek shelter in a nearby cave. 
    This storm is nothing like the storms you’ve seen in the [REDACTED] Corp standard issue entertainment serials. It is loud and vicious and you can’t shake the feeling that if you were to walk out into its roiling maw it would devour you down to the last.

    You are not alone in the cave. You spot the creature. It illuminates the dim cave with its usual dance of colors.

    You can’t place it, but the colors — they seem off somehow.

    A loud crack screams through the cave, reverberating through its depths like a great beast mad with rage.

    *[The creature flushes an alarmed YELLOW at the sound of the storm.]->color_puzzle2

    = color_puzzle2

        The creature flushes an alarming YELLOW at the sound of the storm.

        +Emit BLUE in response.->wrong
        +Emit PURPLE in response.
        The bright YELLOW of the creature dims a bit.->color_puzzle2_2
        +Emit GREEN in response.->wrong
        +Emit RED in response.->wrong
        +Emit YELLOW in response.->wrong

    = color_puzzle2_2

        Another loud howl from the great beast of the storm. The creature washes with a sharp RED.
        *AI:[...]<>No need for fight or flight lad. Is but a storm.

        -How will you respond?
        
        +PURPLE
        The RED dims and is replaced by a neutral mix of shifting colors. -> color_puzzle2_end
        +YELLOW->wrong
        +RED->wrong
        +BLUE->wrong
        +GREEN->wrong

    = color_puzzle2_end

        The creature floats closer to you. The two of you wait out the storm, together.
        
        {set("BOND", "2")}
        {get("BOND") == "2":+ BOND INCREASED}
        {set("interact", "2")}

        *[continue.]->CREATURE_GAME

    = wrong

        Nothing happens.
        ->color_puzzle2

== food_interact

        The creature approaches you. 
        It has something in one of its tentacles. At a glance the object is completely unidentifiable. The only clear thing is its sheer grotesqueness.

        *AI[...]<> FUNNY COMMENT

        The creature hands you the object. You guess from the rapid and erratic shifts of the creatures colors that it is probably either excited, or terrified.

        It carefully shows you a tendril before slowly lowering it and reaching somewhere… out of sight.

        -*[Stare in puzzlement.]

            **AI:[...]<>Oh for Vulcan’s sake, it wants you to eat the thing! Whatever that disgusting little object even is. 12 credits says it makes you explode.->color_puzzle3

    =color_puzzle3

        {color_puzzle3 == 0:The creature flashes a vibrant shade of GREEN as you lift the strange object closer to inspect it.}

        -How will you respond?
        
        +[Inspect the object.]
        You aren’t sure whether or not it’s a trick of the light, but every so often — you swear — you can see it twitch.
        ->color_puzzle3
        +Emit GREEN.->wrong2
        +Emit BLUE.
        The creature turns a deep BLUE and floats away.
        ->END
        +Emit PURPLE.->wrong2
        +Emit RED.
        The creature turns a bright RED and floats away.
        ->END
        +Emit YELLOW.
        The creature turns a deep BLUE and floats away.
        ->END
        +[Do nothing.]->color_puzzle3_2

    = wrong2

        The creature waits expectantly.
        ->color_puzzle3

    = color_puzzle3_2

        {color_puzzle3_2 == 0: The creature turns a simmering dull RED as you stare at the object.}
        
        *AI:[...]<> Wethinks it’s a bit offended.->color_puzzle3_2

        How will you respond?
        
        +Emit BLUE.
            The creature turns a deep BLUE and floats away.
        ->END
        
        +Emit PURPLE.
        It’s RED glow fades, but just a bit.-> color_puzzle3_2
        +Emit RED.
        The creature turns a bright RED and floats away.
        ->END
        +Emit YELLOW.
        The creature turns a bright RED and floats away.
        ->END
        +Emit GREEN.
            You emit a bright GREEN with the Color-gun. The creature continues to wait expectantly.
        ->color_puzzle3_end

    = color_puzzle3_end

        The creature continues to stare at you with unblinking eyes.

        * AI:[...]<>This is agony! (insert clever thing) Just do something!

            ++[Smash the grotesque non-food against your visor.]
                
                You smash the grotesque non-food against your visor. The AI and, seemingly, even the creature find it hilarious.

            {set("BOND", "3")}
            {get("BOND") == "3":+ BOND INCREASED}
            {set("interact", "3")}

                ***[continue.]->CREATURE_GAME
            
            **[Rub your stomach]
                Nothing happens. ->color_puzzle3_end
            ++[Throw it on the ground.]
            The creature turns RED and leaves. 
            -> END
            **[Leave.]
            You’ve had enough. You walk away.
             -> END

==DeadCritter_interact

You find the creature floating beside an object you can’t quite make out from a distance. As you move closer, you begin to make out the object’s features. Odd fur. Feathers, maybe. Splayed limbs. You count six of them. The object is, or was, a creature. A creature like the creature. A creature like you. The tattered remains of a suit still cling to bits of the object that used to be an intrepid adventurer, just like you. Not too far away lies a cracked space helmet.

A deep BLUE washes away all other colors painting the creature’s supernal form.

*AI:[...]<>The cosmos is full of intrepid adventurers. Looks like this one didn’t make it out so lucky. A day late. A companion short. Best we move on and leave it alone.

-What will you do?
*[Leave.]
	You leave the somber scene, and the creature with it.
->END
*[Use the Color-gun to interact.]->color_puzzle4

=color_puzzle4

+Emit BLUE.->color_puzzle4_2
+Emit GREEN.->wrong3
+EmitRED.->wrong3
+Emit YELLOW.->wrong3
+EmitPURPLE.->wrong3

= wrong3

Nothing happens.->color_puzzle4


=color_puzzle4_2

You Color-gun washes the area in a deep BLUE glow. The creature turns to face you. Its unblinking eye betrays nothing. It turns back to the fallen adventurer. Its deep BLUE is replaced by a dull YELLOW.

+Emit BLUE.->wrong3
+Emit RED.->wrong3
+Emit PURPLE.->color_puzzle4_end
+Emit GREEN.->wrong3
+Emit YELLOW.->wrong3

=color_puzzle4_end

The creature returns to its neutral state of many shifting colors. You can’t help but notice, there are now many more shades of BLUE and YELLOW amongst the creature’s usual emulsions.

    +[Leave.]
    ->END
    
    +[Bury the body.]

    You have mostly your hands (your previously crafted janky shrapnel handaxe proves remarkably ineffective at digging, sadly) — but eventually you create a small hole. The creature notices what you’re doing and begins to help, lifting clod after clod of earth with both tentacle and strange gaseous telekinesis.

    Soon you have a sizable hole. You and the creature lift the object formerly known as a brave explorer, gently carry it over to the hole, and place it inside.

    The creature fills the hole back with soil in one fell telekinetic swoop.

    You place the cracked space helm onto the grave, the only marker it will ever have.

        **[Leave.]
        You leave, the creature lingers for a few fleeting moments and then follows.

{set("BOND", "4")}
{get("BOND") == "4":+ BOND INCREASED}
{set("interact", "4")}

            ***[continue.]->CREATURE_GAME

==image_interact

    You find the creature staring at the image you gave it from the ship. It doesn’t seem to notice you approach. As its unblinking eye fixates on the image, the creatures body illuminates with a procession of colors.

    The first color that fills its form is a luminous GREEN, like sun shining through a leaf on a bright summer’s day.
    
        +[Keep watching.]->color_prologue
        +[Use Color-gun to interact.]->color_puzzle5
        +[Leave]
        ->END

    = color_prologue

        After GREEN, its body flushes a deep BLUE, then an alarming YELLOW soon replaced by a vivid RED that quickly fades back into a deep BLUE.
        +[Keep watching]
        It repeats its cycle of emotion, almost dutifully.->color_prologue
        +[Use Color-gun to interact]->color_puzzle5
        +[Leave.]->CREATURE_GAME

    = color_puzzle5

    What will you emit in response to its vivid GREEN?

        +[GREEN]->color_puzzle5_2
        +[BLUE]->wrong4
        +[YELLOW]->wrong4
        +[RED]->wrong4
        +[PURPLE]->wrong4

    = wrong4

        It fails to notice your presence. 
        -> color_puzzle5

    = color_puzzle5_2

        {color_puzzle5_2 == 0:Your Color-gun emits a GREEN glow, similar to the creatures own. This catches its attention and it turns to you, but only for a moment. The image enrapts it once again.}

        The creature’s body fades into a shade of deep BLUE.
        +[Emit GREEN]
        It turns to you and a dull RED begins to wash over it, but as soon as the RED appears, it fades, and the creature resigns itself back to its dutiful procession.
        ->color_puzzle5_2
        +[Emit RED]->wrong4
        +[Emit YELLOW]->wrong4
        +[Emit PURPLE]->wrong4
        +[Emit BLUE]->color_puzzle5_3

    = wrong5

        It fails to notice.
        ->color_puzzle5_2

    = color_puzzle5_3

        The BLUE of your Color-gun mixes with the BLUE of the creature’s form and for just a moment, you do not feel alone on this Vulcan forsaken rock. The deep BLUE fades into a neutral dance of colors and the creature turns to you. The image slips from its tentacle and falls to the floor.

        As it stares at you, unblinking, a dull YELLOW spreads over its form.
        *AI:[...]It’s incredibly difficult to tell — it having a semi-corporeal form and all — but just, ever so, it appears appears to be trembling…

        ++Emit BLUE in response.->wrong5
        ++Emit GREEN->wrong5
        ++EmitYELLOW->wrong5
        ++Emit PURPLE->color_puzzle5_end
        ++Emit RED->wrong5

    =color_puzzle5_end

        Your Color-gun emits a dull PURPLE. In response the YELLOW fades from the creature’s form and is replaced by a similar PURPLE. And after a few moments, its neutral swirling mixture of color returns.

        {set("BOND", "5")}
        {get("BOND") == "5":+ BOND FULLY INCREASED}
        {set("interact", "5")}

        *[continue.]
        ->END


