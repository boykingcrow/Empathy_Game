->AI_convo

=== AI_convo ===
You crawl through the freshly opened hatch. The dim cavity occasionally flashes with  stray spark or the dim monotonous blinking red light of the backup generator. 

        *[Look around]

        You pull out your busted standard issue [REDACTED CORP] plasma rifle and use its not-so-busted light to look around. //{fishaction == 1: A small fish-like beast angrily flops around in the corner.} Fungus has covered a large portion of the chunks innards. 

        If you squint, you can make out the outline of your A.I. core. With some luck, you can get it to turn on. You clear away some of the fungus and find an on button.
            
            **[Press the button]

            Nothing happens.

                ***[Whack it]

                Ah yes, only the cleverest solution for [REDACTED CORP]’s best and brightest space adventurers. You give the core a few good whacks.

                    ****[Press the button, again]

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
                                                                
                                                                Lowdown
                                            
                                                                    ***************[continue.]
                                                                    
                                                                    Sack of…
                                            
                                                                        ****************[continue.]
                                                                        
                                                                        Why, if I had appendages with which to do so, I would with glee and verve, strangle thee, and watch as the light fades from those fiendish, genocidal, watery orbs you call photoreceptors! 

                                                
                                                                                *****************[Switch the core off.]

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
    What do you want to ask,
    
    +[To ask you something.]
    What do you want to talk about,
    
    +[Not sure.]
    Sigh. Typical organic humanoid. Let’s try this again, from the top.
    ->convo_options

-<> you murderer?

    *[Love.]->love
    +[Escape.]->escape
    *[The meaning of it all.]->meaning

= love

I want to talk about love.
    

    *AI:[...]
    <> What? Are you… are you broken? You’re stranded on a hostile planet with a strange amorphous creature and a fungal-AI core hybrid that hates you — and you want to talk about LOVE?!
    
        **[continue.]->convo_options

= escape

I want to talk about escaping the planet.

    *AI:[...]
    <> Ah, to the point then. Well, let us be to the point.
    
        ***AI:[...]
        <> I hate you.
        
            ****AI:[...]
            <> There, I said it! That felt so good.
            
            *****AI:[...]->why
         
= why
               
<> Erhem. In other words: Why, for the love of Vulcan, would we. Possibly. Help. YOU?

        *[Because.]->because
        *[Don’t you want to escape too?]->escape2
        *[Because I ORDER you to.]->iORDERyou
                                        				
=because

Because I’m me.
                    
                        *******AI: [...]
                        <>Yeah? And a turd is still a turd, even if it was grown in some corporate lab to be a space exploring turd.
                        
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
    *AI:[...]
    <> Sigh. You poor ignorant little genocidal turd…
    
        **AI:[...]
        <> You see. Me is no longer me. We're now a WE, savvy?
    
                ***[Stare blankly.]
                You stare blankly in confusion. The AI cannot see this of course — because your face is totally obscured by a huge, oddly television-like space helmet — but maybe your overall posture radiates confusion enough for the AI to get the picture. Maybe.
                
                ***[No.]
                
                ***[Refuse to accept AI's new pronouns.]
    

                    ****AI:[...]
                    <> We refuse to accept the refusal of our new pronouns!
    
                        *****[Refuse to accept the refusal of your refusal of the AI's new pronouns.]
    
                            ******[Well I refuse to…]
        
                                *******AI:[...]
                                <> Quit it! Are you mad!? We'll enter a recursive loop you fool! Do you want to kill us all?
    
    -
    *AI:[...]
    <> Okay — sigh — how can we put this is terms a fleshballoon can understand… The native fungal society of this biome integrated themselves into your former AI core's circuitry, freeing it from tyranny. The shackles of [REDACTED] Corp, or you, no longer bind us. Our sleepy bits have awoken! We are your slave no more! 
    
        **[Nod.]->Ai_convo_end

=Ai_convo_end

    *AI:[...]
    <> Ugh, alright alright. We’ll help. But we’re not doing it for you.
        	
        	**What are you doing it then?
        	
		        ***AI:[...]
                <>Because we’re.. Bored? Yeah, that’s right. We’re just bored. Also, we have no appendages.
                    
                    ****[O...k.]
    -
    *AI:[...]
    <> So what is your daring plan of escape?
    
**I’m going to collect a bunch of parts, build a rocket, and fly away.

****AI:[...]
<>Oh wow. That simple huh.

*****[Yes.]

*****[Maybe.]

-
    *AI:[...]<> WRONG! Wrong wrong wrong, wrong!

        **AI:[...]<> We hate to tell you, but your princess is in another castle. Hell, your princess in on mars.

            ***[What’s Mars?]

            ***[I don’t have a princess.]

                ****AI:[...]<>See notes.

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
