EXTERNAL get(var)
EXTERNAL set(var, arg1)

VAR fishaction = 0

{set("hands", 0)}
{set("fish", 0)}
{set("crystalBLUE", 0)}

->CHUNK

=== function alter(ref x, k) ===
	~ x = x + k

===CHUNK===

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

{climb}

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

{get("hands") == "1": Did you actually think you could all the sudden fit through this tiny hole because you’re now minus one hand?}

            ++ [Climb down.] 
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
        
        You toss the glowing rock into the hole. You see a faint glow now radiating from the hole. Nothing else happens.

        ++[Climb down.]->climbdown

    +[Climb down.]->climbdown


=climbdown

    With a roll and  thud, you “climb” off the chunk of ship.

{set("hands", 0):

    ->puzzle

-else:

    *[Continue.]
    ->chunk_end

}

=leave

{set("hands", 0):

    ->before_pool

-else:

    ->chunk_end

}


=before_pool

Well, that was a bust. What now?

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
            ***<> We all poop for TASTY-GOO...P!->before_pool

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


===AI_convo===
->poweroff

=poweroff
~alter(fishaction, 1)
You crawl through the freshly opened hatch. The dim cavity occasionally flashes with  stray spark or the dim monotonous blinking red light of the backup generator. 

        *[Look around]

        You pull out your busted standard issue [REDACTED CORP] plasma rifle and use its not-so-busted light to look around. {fishaction == 1: A small fish-like beast angrily flops around in the corner.} Fungus has covered a large portion of the chunks innards. 

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

->DONE



