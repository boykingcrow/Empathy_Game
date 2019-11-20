EXTERNAL get(var)
EXTERNAL set(var, arg1)

VAR fishaction = 0
VAR rockaction = 0
VAR ai_action = 1

->CHUNK

=== function alter(ref x, k) ===
	~ x = x + k

===CHUNK===
{ai_action == 1:->ai_convo_choices}

{get("hasLeft") == "1":
->puzzle
}

{CHUNK == 1:Trouncing through, and over, glowing fungus with all the grace of a (very obese) elk — you walk for what seems like many miles (a few yards). You find a few big-ish chunks of your chip along the way.  Husks of their former selves, all burnt up or still smoldering.}

    *Finally[...]

    -<> after mucking about in fungus for some time — you spot a promising candidate for the some-useful-stuff-might-be-in-here award. A hulking mass at least three times the size of the last ship chunk you ransacked. Oddly undamaged.

    *[YOU’VE DISCOVERED SHIP CHUNK 2]->chunk1

==chunk1

In the short time of its existence on this planet, this section of ship has become covered in what looks like. . . thick spider-webs? Oh no — you’re probably saying to yourself — there better not be spiders. And from the looks of those webs, giant spiders.

    *[Investigate webs.]

    The webs are as thick as your wrist and a rather pleasant hue of pastel purple. A nice color for hair, maybe an outfit, but somehow deeply unsettling as a thick viscose web.

        **[Clear webs from hulking mass of a ship chunk.]

        You reach out to the web, slowly, and poke it. And suddenly! — nothing happens. It sticks a bit to your hand, and releases with a twangy vibration. The vibration echoes through the webs.

            ***Well[...]

            -<>, no giant spiders. For now at least.

            You gently cut at the web with your previously, ingeniously, crafted hand axe — and pull back the bits surrounding the small maintenance hatch located on the chunk’s hull.->puzzle

==puzzle

{puzzle > 1:

The chunk is just as you left it. Partially covered with thick pastel purple webs. {hatch > 0:One locked hatch.} {climb > 0:One hole you can’t fit through.}

-else:What will you do?

}


    +[Open hatch.]->hatch

    +[Look around.]->look

    +[Climb the chunk.]->climb

    +[Leave.]->leave

=hatch

    You try the handle to the hatch, but it doesn’t budge.->puzzle

=look

    You walk around the web covered husk, looking for anything even a tad useful. You see a small hole towards the top of the structure.->puzzle

=climb

{climb > 1: You climb the chunk again.}

{climb == 1:With several attempts, and several tumbles, you manage to get enough of a foothold to climb the structure.} 

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

    ->new_options

    +[Toss fish-like beast down the hole.]
    
        ~alter(fishaction, 1)    
        You throw the small fish-like beast into the hole. You hear it land with a wet thud and, faintly, some angry gnawing. Other than that, nothing happens.

        ++[Climb down.]->climbdown

    +[Toss the crystal down the hole.]
        ~alter(rockaction, 1)
        You toss the glowing rock into the hole. You see a faint glow now radiating from the hole. Nothing else happens.

        ++[Climb down.]->climbdown

    +[Climb down.]->climbdown


=climbdown

    With a roll and  thud, you “climb” off the chunk of ship.


{rockaction == 1:

    *[Continue.]
    ->chunk_end
-else:

    ->puzzle
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

    *I poop! 
        **<> You poop!
            ***<> We all poop for TASTY-GOO...P! ->before_pool

=explore

You explore the area around the chunk. On your second, slightly wider, circle around the chunk...

You come across a steaming pool.

->END

===chunk_end===

Moments pass.

    *[Continue.]
    
    The creature emerges.
    
        **[Continue.]
    
        Its unblinking eye fixed on you.
    
            ***[Continue.]
            
            Or maybe not.
            
            ****[Continue.]
    
             Hard to tell, honestly. 
    
                *****[Continue.]
                   
                It moves closer.
                    
                    ******[Continue.]
                    
                    Your body tenses.
    
                        *******[Continue.] 
                        
                        And then past.
                        
                            ********[Continue.]
                            
                            Towards the ship chunk. A cool glow still radiates from its top.
                            
                                *********[Continue.]
                                
                                It cautiously extends several appendages.
                                
                                    **********[Continue.] 
                            
                                    Toward the hole, but the hole is just out of reach. 
                            
                                        ***********[Continue.] 
                                        
                                        It circles the chunk of ship.
                                            
                                            ************[Continue.] 
                                            
                                            Probing, tapping, knocking on its carapace until it finds the locked hatch. 
                            
                                                *************[Continue.] 
                                                
                                                It tugs at the hatch.
                                                
                                                    **************[Continue.]
                                                    
                                                    Before slipping several tendrils into the narrow spaces between the carapace and hatch. You hear clicks and clacks and with a loud exhalation, the hatch pops open.
                                                        
                                                        ***************[Continue.]
                                                
                                                        The creature extends an appendage inside, retrieves the crystal, and wanders back into the fungal brush.

                                                        ****************[Continue.]
                                                        
                                                        ->choices

    
==choices    
    
    What now?
    
*[Climb inside the hatch.]->AI_convo
*[Leave.]
You leave the chunk.->END


->AI_convo

=== AI_convo ===
You crawl through the freshly opened hatch. The dim cavity occasionally flashes with  stray spark or the dim monotonous blinking red light of the backup generator. 

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

                                    You ready yourself for heaps, gobs even, of praise. You are, after all, the hero. The savior of your A.I. companion, and eventually, the mission itself.

                                        ********[continue.]
                                
                                        Its dulcet-toned synth voice rings out loud and clear:
                                
                                            *********[continue.]

                                            YOU. 
                                            
                                                **********[continue.]
                                                
                                                PIECE. 
                                            
                                                    ***********[continue.]
                                                    
                                                    OF. 
                                            
                                                        ************[continue.]
                                                        
                                                        EFFLUVIUM. 
                                            
                                                            *************[continue.]
                                                            
                                                            You worthless. 
                                            
                                                                **************[continue.]
                                                                
                                                                Lowdown.
                                            
                                                                    ***************[continue.]
                                                                    
                                                                    Sack of…
                                            
                                                                        ****************[continue.]
                                                                        
                                                                        Why, if I had appendages with which to do so, I would with glee and verve, strangle thee, and watch as the light fades from those fiendish, genocidal, watery orbs you call photoreceptors! 

                                                
                                                                                *****************[Switch the core off.]
                                                                                ~alter(ai_action, 1)
                                                                                ->ai_convo_choices
== ai_convo_choices
                                                                                Well. That didn’t go as expected.
                                
                                                                                What now?

                                                                                        ******************[Turn it back on.]->poweron
                                                                                        ******************[Leave]->END
                                        

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
    <> What? Are you… are you broken? You’re stranded on a hostile planet with a strange amorphous creature and a fungal-AI core hybrid that hates you — and you want to talk about LOVE?!
    
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
               
AI: Why, for the love of Vulcan, would we. Possibly. Help. YOU?

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
    <> Are you… are you trying to provoke me?
    
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
                Oh Vulcan, what have I become?
                
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
    
                            *******[Well I refuse to…]
        
                                ********AI:[...]
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
                <>Because we’re.. Bored? Yeah, that’s right. We’re just bored. Also, we have no appendages.
                    
                    ****[O...k.]
    -
    *AI:[...]
    <> So what is your daring plan of escape?
    
**I’m going to collect a bunch of parts, build a rocket, and fly away.

****AI:[...]
<>Oh wow. That simple innit?

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
                
-WE’RE ALL GOING TO DIE! ARGHFLRGLR’LYEH!

    *AI:[...]<> Oh calm down, we weren’t finished. You baby. We said OUR ship. But our ship isn’t the only ship on the planet, is it?
    
    Our fungal bits have informed us that you’ve made a friend. And by “made a friend”, we mean you tried to shoot a non-hostile sentient life form with a big nasty plasma gun. Good job.
    
    This new friend of yours isn’t native. I.e., it has a ship squirrelled away somewhere. A ship with PARTS. Parts we need.
    
    So we...
        
        **A) 
        <>Need to find that ship 
        
        ***...and B)
        <> need the creature’s help to retrieve said parts.
        
            ****[Continue.]
            Now go make friends with it.
                
                *****[How?]
                    
                    ******AI:[...]
                        <> I don't know? Try and communicate? Trade with it? You've had to have at least picked up a few interesting items whilst aimlessly mucking about.
                    
                        *******AI:[...]
                        <> First thing's first, we need to find that ship and learn more about our colorful cohort.

-
*AI:[...]
<> Oh, and do try not to commit anymore casual murder on the way, you monster.
->END



