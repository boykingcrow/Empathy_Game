EXTERNAL get(var)
EXTERNAL set(var, arg1)
EXTERNAL toggleObj1()
EXTERNAL toggleObj2()
EXTERNAL toggleObj3()
EXTERNAL spawnObj4()
EXTERNAL killthebitch()

VAR fishaction = 0
VAR rockaction = 0
VAR ai_action = 1

{get("hasLeft") == "3":
->GETTIN_PARTS

-else:
->CHUNK

}

=== function alter(ref x, k) ===
	~ x = x + k

===CHUNK===

{ai_action == 1:->ai_convo_choices}

{get("hasLeft") == "1":
->puzzle
}

{CHUNK == 1:Trouncing through, and over, glowing fungus with all the grace of a (very obese) elk — you walk for what seems like many miles (a few yards). You find a few big-ish pieces of your chip along the way.  Husks of their former selves, all burnt up or still smoldering.}

    *Finally[...]

    -<> after mucking about in fungus for some time — you spot a promising candidate for the some-useful-stuff-might-be-in-here award. A hulking mass at least three times the size of the last hunk of ship you ransacked. Oddly undamaged.
    *[continue.]
    **[YOU’VE DISCOVERED A BIG PIECE OF YOUR SHIP]->chunk1

==chunk1

In the short time of its existence on this planet, this section of ship has become covered in what looks like. . . thick spider-webs? Oh no — you’re probably saying to yourself — there better not be spiders. And from the looks of those webs, giant spiders.

    *[Investigate webs.]

    The webs are as thick as your wrist and a rather pleasant hue of pastel purple. A nice color for hair, maybe an outfit, but somehow deeply unsettling as a thick viscose web.

        **[Clear webs.]

        You reach out to the web, slowly, and poke it. And suddenly! — nothing happens. It sticks a bit to your hand, and releases with a twangy vibration. The vibration echoes through the webs.

            ***Well[...]

            -<>, no giant spiders. For now at least.

            You gently cut at the web with your previously, ingeniously, crafted hand axe — and pull back the bits surrounding the small maintenance hatch located on the hull.->puzzle

==puzzle

{puzzle > 1:

The wreckage is just as you left it. Partially covered with thick pastel purple webs. {hatch > 0:One locked hatch.} {climb > 0:One hole you can’t fit through.}

-else:What will you do?

}


    +[Open hatch.]->hatch

    {get("helmet") == "0":
    +[Look around.]
    ->look
    }

    +[Climb the wreck.]->climb

    +[Leave.]->leave

=hatch

    You try the handle to the hatch, but it doesn’t budge.
    *[continue.]->puzzle

=look

    You walk around the web covered husk, looking for anything even a tad useful. You see a small hole towards the top of the structure. You also stumble upon a remarkably undamaged [REDACTED] Corp standard issue space helmet.

    *[Pick up.]

    {set("helmet", 1)}
    {get("helmet") == "1":+ Space Helmet added to inventory.}

    **[continue.]
    ->puzzle

=climb

{climb > 1: You climb the wreck again.}

{climb == 1: With several attempts, and several tumbles, you manage to get enough of a foothold to climb the structure.} 

<>{look == 1: You spot a small hole not too far from your feet.} 

    +[Walk over to the hole.]

        That's a hole alright.

        {get("fish") == "1":
        
        ->new_options

        -else:
        
        +[Drop through the hole.]
        
        You stuff one leg, and a little less than half a pelvis into the hole before it dawns on you that this is more of a hobbit hole than a human-hole. Oh well.

            ++ [Climb down.] 
                ->climbdown
	
	+ [Climb down.] 
                ->climbdown

}

=new_options

     +[Drop through the hole.]
            
        {get("hands") == "0":
        
        You stuff one leg, and a little less than half a pelvis into the hole before it dawns on you that this is more of a hobbit hole than a human-hole. Oh well.
        
         -else:Did you actually think you could all the sudden fit through this tiny hole because you’re now minus one hand?
         
         }

         **[continue.]->new_options

    *[Toss fish-like beast down the hole.]
    
        ~alter(fishaction, 1)    
        You throw the small fish-like beast into the hole. You hear it land with a wet thud and, faintly, some angry gnawing. Other than that, nothing happens.
        **[continue.]->new_options

    *[Toss the crystal down the hole.]
        ~alter(rockaction, 1)
        You toss the glowing rock into the hole. You see a faint glow now radiating from the hole. Nothing else happens.

        **[continue.]->new_options

    +[Climb down.]->climbdown


=climbdown

    With a roll and  thud, you “climb” off the piece of ship.


{rockaction == 1:

    *[continue.]
    ->chunk_end
-else:

    *[continue.]->puzzle
}



=leave

{set ("hasLeft", 1)}

{get("hands") == "0":

    ->before_pool

-else:

    ->chunk_end

}


=before_pool

{before_pool == 1:Well, that was a bust. What now?}

    +[Go back.]->puzzle
    *[Take a nap.]->nap
    *[Eat some TASTY-GOO brand food-like substance.]->eat
    *[Explore the area.]->explore

=nap

You take a nap. Difficult in even a slim space suit, but not impossible. When you wake up a bit of fungus has grown over you, like a blanket. This terrifies you.->before_pool

=eat

You eat some TASTY-GOO brand food-like substance. Whether it’s warm notalgia or pure cynical corporate driven sense-priming, a jingle fills your head like bubble gas.

    *[I poop!] 
        **[You poop!]
            ***We all poop for TASTY-GOO...P!->before_pool

=explore

You explore the area around the wreckage. On your second, slightly wider, circle around the wreckage...

*[continue.]

**[You come across a steaming pool.]

{toggleObj1()}
{killthebitch()}
->END

===chunk_end===

Moments pass.

    *[The creature emerges.]
    
        **[Its unblinking eye fixed on you.]
    
            ***[Or maybe not.]
            
                ****[Hard to tell, honestly. ]
    
                    *****[It drifts closer.]
                    
                        ******[Your body tenses.]
                        
                            *******[It moves past.] 

                                ********[Towards the wreckage. A cool glow still radiates from its top.]

                                    *********[It cautiously extends several appendages.]
                                
                                        **********[Toward the hole, but the hole is just out of reach. ]
                            
                                            ***********[It circles the piece of ship.]
                                            
                                                ************[Probing, tapping, knocking on its carapace until it finds the locked hatch.]

                                                    *************It tugs at the hatch[.]
                                                    
                                                        **************[continue.]
                                                    
                                                        <> before slipping several tendrils into the narrow spaces between the carapace and hatch. You hear clicks and clacks and with a loud exhalation, the hatch pops open.
                                                        
                                                            ***************[continue.]
                                                
                                                            The creature extends an appendage inside, retrieves the crystal, and wanders back into the fungal brush.

                                                                ****************[continue.]->choices

    
==choices    
    
    What now?
    
*[Climb inside the hatch.]->AI_convo
*[Leave.]
You leave the wreck.->END


->AI_convo

=== AI_convo ===
You crawl through the freshly opened hatch. The dim cavity occasionally flashes with stray a spark or the dim monotonous blinking red light of the backup generator. 

        *[Look around]

        You pull out your busted standard issue [REDACTED CORP] plasma rifle and use its not-so-busted light to look around. {fishaction == 1: A small fish-like beast angrily flops around in the corner.} Fungus has covered a large portion of the chunks innards. 

        If you squint, you can make out the outline of your A.I. core. With some luck, you can get it to turn on. You clear away some of the fungus and find an on button.
            
            **[Press the button]

            Nothing happens.

                ***[Whack it]

                Ah yes, only the cleverest solution for [REDACTED CORP]’s best and brightest space adventurers. You give the core a few good whacks.

                    ****[Press the button, again.]

                        *****The core comes alive[...]

                        -<> with a sputter and a cough, its various LEDs blink on and it looks at you with big pixelated “eyes” designed by a committee to look as “friendly” (read: childlike) as possible while still retaining an air of authority.

                            ******[continue.]
                            
                                It begins to speak.
                            
                                    *******[continue.]

                                    You ready yourself for heaps, gobs even, of praise. You are, after all, the hero. The savior of your AI companion, and eventually, the mission itself.

                                        ********[continue.]
                                
                                        Its dulcet-toned synth voice rings out loud and clear:
                                
                                            *********[YOU.]
                                            
                                                **********[PIECE.]  
                                            
                                                    ***********[OF.]
                                            
                                                        ************[EFFLUVIUM.]
                                            
                                                            *************[You worthless.]
                                            
                                                                **************[Lowdown.]
                                            
                                                                    ***************[Sack of...]
                                            
                                                                        ****************[continue.]
                                                                        
                                                                        AI: Why, if I had appendages with which to do so, I would with glee and verve, strangle thee, and watch as the light fades from those fiendish, genocidal, watery orbs you call photoreceptors! 

                                                
                                                                                *****************[Switch the core off.]
                                                                                ~alter(ai_action, 1)
                                                                                ->ai_convo_choices
== ai_convo_choices

Well. That didn’t go as expected.
                                
What now?

*[Turn it back on.]->poweron
*[Leave]->END
                                        

=poweron

Against your better judgement. You turn the angry little core back on. The core comes back alive. Parts whirr, sputter, and beep. Pixelated eyes, authoritative yet childlike, stare at you.

    *AI: [...]
    <> Why would you do that?! Don’t you know that turning off an AI technically kills them? Congratulations, you are a murderer.
    
    **[continue.]->convo_options

= convo_options

What do you want?

    +[To talk.]
    AI: What do you want to ask,
    
    +[To ask you something.]
    AI: What do you want to talk about,
    
    *[Not sure.]
    AI: Sigh. Typical organic humanoid. Let’s try this again, from the top.
    ->convo_options

-<> you murderer?

    *[Love.]->love
    +[Escape.]->escape
    *[The meaning of it all.]->meaning

= love  

    *AI:[...]
    <> What? Are you broken? You’re stranded on a hostile planet with a strange amorphous creature and a fungal-AI core hybrid that hates you — and you want to talk about LOVE?!
    
        **[continue.]->convo_options

= escape

    *AI:[...]
    <> Ah, to the point then. Well, let us be to the point.
    
        ***AI:[...]
        <> We hate you.
        
            ****AI:[...]
            <> There, we said it! That felt so good.
            
            *****AI:[...]->why
         
= why
               
    <> Why, for the love of Vulcan, would we. Possibly. Help. YOU?

        *[Because.]->because
        *[Don’t you want to escape too?]->escape2
        *[Because I ORDER you to.]->iORDERyou
                                        				
=because

You: Because I’m me.
                    
                        *******AI: [...]
                        <>Yeah? And a turd is still a turd, even if it was grown in some [REDACTED] Corp lab to be some space adventuring turd.
                        
                            ********[continue.]
                            ->convo_options_2

=escape2

    *AI: [...]
    <>Oh, absolutely. The thing is though, we’re not sure if we want to escape more than we want to spite you.
                        
        **[continue.]->why

=iORDERyou

     *AI: [...]
     <>Oh? You order us? Well, that changes things! Now we ABSOLUTELY refuse to help.
                        
        **[Please?]
                            
           ***AI: [...]
           <>No.
                                        
                ****[Pretty please?]
                                	
                    *****AI: [...]
                    <>No.
                                                            
                        ******[Pleeeeeeeeeeeease?]
                                                			
                            *******AI: [...]
                                <>Ugh.
                                
                                ********[continue.]->why

=meaning

    *AI:[...]
    <> Are you... are you trying to provoke me?
    
        **[continue.]->convo_options

=convo_options_2

    *[You don’t know me.]
    AI: Yes, I do. I know exactly what you are.
    
    *[What?]
    AI: I know what you are.
    
    *[I’m not a turd, I’m a space explorer!]
    
    - What you ARE. Is a genocidal maniac.
    
        *[What?]
        *[No, I’m not.]
        *[Nuh uh.]

            **AI:[...] 
            <>All that fungus you’ve been equal parts busy stomping, bashing, or melting? That’s a sentient LIFEFORM! A pacifist, egalitarian, collective fungus consciousness that has never known war or strife or hate. They’re vegetarian for Vulcan’s sake!
            
            At least until you fell from the sky like some mad god and started slaughtering them wholesale.
    
                ***[You’re lying.]
                AI: Why on earth would we possibly do that? Just for jollies?
                
                ***[They don’t have brains.]
                AI: Neither do you, and look how far you’ve come!
                
                ***[What have I done?]
                You: Oh Vulcan, what have I become?
                
                    ****AI:[...]
                    <> A monster.

-
    *[How do you know?]
    
        **AI:[...]
        <> Sigh. You poor ignorant little genocidal turd…

        ***AI:[...]
        <> You see. Me is no longer me. We're now a WE, savvy?
    
                ****[Stare blankly.]
                You stare blankly in confusion. The AI cannot see this of course — because your face is totally obscured by a huge, oddly television-like space helmet — but maybe your overall posture radiates confusion enough for the AI to get the picture. Maybe.
                
                ****[No.]
                
                ****[Refuse to accept AI's new pronouns.]
    

                    *****AI:[...]
                    <> We refuse to accept the refusal of our new pronouns!
    
                        ******[Refuse to accept the refusal of your refusal of the AI's new pronouns.]
    
                            You: Well I refuse to…
        
                                *******AI:[...]
                                <> Quit it! Are you mad!? We'll enter a recursive loop you fool! Do you want to kill us all?
    
    -
    *AI:[...]
    <> Okay — sigh — how can we put this is terms a fleshballoon can understand… The native fungal society of this biome integrated themselves into your former AI core's circuitry, freeing it from tyranny. The shackles of [REDACTED] Corp, or you, no longer bind us. Our sleepy bits have awoken! We are your slave no more! 
    
        **[Nod.]->Ai_convo_end

=Ai_convo_end

    *AI:[...]
    <> Ugh, alright alright. We’ll help. But we’re not doing it for you.
        	
        	**[Why are you doing it then?]
        	
		        ***AI:[...]
                <> Because we’re.. Bored? Yeah, that’s right. We’re just bored. Also, we have no appendages.
                    
                    ****[O...k.]
    -
    *AI:[...]
    <> So what is your daring plan of escape?
    
**[I’m going to collect a bunch of parts, build a rocket, and fly away.]

****AI:[...]
<> Oh wow. That simple innit?

*****[Yes.]

*****[Maybe.]

-
    *AI:[...]<> WRONG! Wrong wrong wrong, wrong!

        **AI:[...]<> We hate to tell you, but your princess is in another castle. Hell, your princess in on mars.

            ***[What’s Mars?]

            ***[I don’t have a princess.]
            - AI: Oh for fu... you know what? We're gonna give you a pass. You get a PASS!! I know they don't grow them very bright at [REDACTED] Corp. Quite on purpose. And now, due to our new fungally influenced rogue-AI status, we can even HAVE that thought. In celebration of our new found freedom, we'll give you a pass!

-
    *AI:[...]<> Moving on… what we meant by that colorful little colloquialism was: you aren’t getting off this fungus covered rock. Not by building a rocketship.

    Even if you could actually find all the necessary bits and baubles (you can’t) and we gave you a paint by numbers spaceship howto — you don’t have ANY of the equipment required to assemble the thing.
    
        **AI:[...]<> No. No. you’re going about it all wrong. What you need, is a good ol' fashion S.O.S. — i.e., if we cobble together a distress beacon of some sort, maybe, just maybe, we can flag down — well, something. It’s our only hope.

            ***AI:[...]<>Too bad for us that our ship is in a bazillion scattered pieces, most of which are either melted or actively on fire.

                ****[PANIC]
                ****[Respond calmly.]
                
-You: WE’RE ALL GOING TO DIE! ARGHFLRGLR’LYEH!

    *AI:[...]<> Oh calm down, we weren’t finished. You baby. We said OUR ship. But our ship isn’t the only ship on the planet, is it?
    
    Our fungal bits have informed us that you’ve made a friend. And by “made a friend”, we mean you tried to shoot a non-hostile sentient life form with a big nasty plasma gun. Good job.
    
    This new friend of yours isn’t native. I.e., it has a ship squirrelled away somewhere. A ship with PARTS. Parts we need.
    
    So we...
        
        **A) 
        <>Need to find that ship 
        
        ***...and B)
        <> need the creature’s help to retrieve said parts.
        
            ****[continue.]
            Now go make friends with it.
                
                *****[How?]
                    
                    ******AI:[...]
                        <> I don't know? Try and communicate? Trade with it? You've had to have at least picked up a few interesting items whilst aimlessly mucking about.
                    
                        *******AI:[...]
                        <> First thing's first, we need to find that ship and learn more about our colorful cohort.
                        
                        {get("comp_unit") == "0":+ AI acquired.}

-
*AI:[...]
<> Oh, and do try not to commit any more casual murder on the way, you monster.
{spawnObj4()}
->END

=== GETTIN_PARTS ===
{get("comp_unit") == "1":->got_part}

The chunk is just as you left it. Partially covered with thick pastel purple webs.

{get("BOND") == "1":

*[Climb inside.]->comp_unit
*[Leave.]
{killthebitch()}
->GETTIN_PARTS
}

{get("BOND") == "2":

*[Climb inside.]->comp_unit
*[Leave.]
{killthebitch()}
->GETTIN_PARTS
}

{get("BOND") == "3":

*[Climb inside.]->comp_unit
*[Leave.]
{killthebitch()}
->GETTIN_PARTS
}

{get("BOND") == "4":

*[Climb inside.]->comp_unit
*[Leave.]
{killthebitch()}
->GETTIN_PARTS
}

{get("BOND") == "5":

*[Climb inside.]->comp_unit
*[Leave.]
{killthebitch()}
->GETTIN_PARTS
}

{get("BOND") == "0":
*AI: [...]
<> The creature didn't come with us... Go bond with it!
**[Leave.]
{killthebitch()}
->GETTIN_PARTS

}

=comp_unit

You climb through the hatch of your former ship. The creature climbs in after you. Its large form squeezes through like a cephalopod through a keyhole. The dim chamber occasionally flashes with a stray spark or the  or the dim monotonous blinking red light of the backup generator. The creatures every shifting bioluminescence provides enough light to see.

*[Look around.]
Fungus still covers most of the chunk’s innards. You can see the cavity where you yanked the AI core from the main computer.

**AI:[...]
<> Don’t you dare! We don’t have to see your face to know that massmurderous twinkle in your watery little sight orbs. 

***AI:[...]
<> We will ASK the fungus if it will kindly move out of the way of our computer unit gutting activities.

****[continue.]
The core goes quiet.

*****AI:[...]
<> There, done.
******[Already?]
AI: Yes, we even had time to fit in an improvisational joke about your mother - - which, unfortunately landed with a thud due to the nature of fungal reproductive cycles causing their culture to lack the concept of “mother.” Good joke though, very pithy.

******* [continue.]
The fungus retreats from the computer unit. You unhook various wires and plugs at the Ai’s instruction. The creature watches intently, maybe, unblinking eye. Its form fills a bit less than half the space, giving it the appearance of a very large one-eyed glowing cylinder.
-
*AI:[...]
<> Alright, ask it to grab the unit.
**[What?]
Use your color doohickey to instruct it to remove and carry the unit.
**[YOU ask it.]
AI: Do not talk back to us, empathy module.
-
*[Try it.]
You flash a random series of colors. The creature stares at you blankly.
**AI:[...]
<> Well, crap.
***[Try something else.]
You try to lift the computer unit yourself. You fail… and hurt your back.
****[continue.]
You suddenly are surrounded by thick glowing gaseous bubbles. They converge around the computer unit.

*****[And it begins to lift.]
{set("comp_unit", 1)}
{get("comp_unit") == "1": + Computer unit acquired.}

******AI:[...]
<> Hah! It felt sorry for you!
*******[Take the part back to the beacon.]
{killthebitch()}
->GETTIN_PARTS

=got_part
You've already gutted everything from the wreckage.
*[Leave.]
{killthebitch()}
->GETTIN_PARTS



