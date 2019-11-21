EXTERNAL get(var)
EXTERNAL set(var, arg1)

->POOL

===POOL===

    *The creature floats into view.

    <> You watch as it approaches the steaming pool. There is motion under the surface. It hesitantly extends a tentacle into the water.->pool
=pool
     *[Is it probing?] 
        **[Fishing?]
            ***[Washing?] 
                ****[Its unblinking eye betrays no emotion that you can read.]

After the creature’s appendage dips below the surface, there is motion. The creature flashes YELLOW followed by various shades of RED. It violently whips its long tentacle out of the water. Something is attached. A small, fish-like thing.

    -*[You hear a loud pop.]
    
        **[The fish-like thing explodes in a red mist.]->pool_interact
            
=pool_interact

{pool_interact == 1:

The creature returns to its usual incomprehensible smattering of colors and drifts away into the fungal overgrowth.

-else: What will you do?

}
    
    +[Go back.]-> go_back
    *[Look around.]->look
    *[Investigate steaming pool.] ->investigate
    
=look

    You look around the pool. You find nothing interesting. No movement. Nothing around but rocks and the occasional mushroom.->pool_interact
    
=investigate

        You walk up to the pool and peer into its surface, you see movement just beneath. And even more beneath the beneath, you see a glowing rock. It’s a near duplicate of the one you watched the creature lift a ship chunk to get at earlier. Explains why the creature reached into the pool..

        **[Reach into the pool.]

{investigate > 1:

{set("hands", 1)}
{set("fish", 1)}
{set("crystalBLUE", 1)}

->conclusion
        
-else: You, like most (if not all) humans have had hollow mountains chock full of profoundly idiotic ideas. But this, might be the biggest of them all.

            ***[Chicken out and leave.] ->go_back
            ***[Do it anyway.]
            {set("hands", 1)}
            {set("fish", 1)}
            {set("crystalBLUE", 1)}
            ->conclusion

    Okay. O. K. sure, why not? What the worst that can happen? A melted or maimed arm? Maybe your suit literally fused with your arm? Deadly toxins? Flesh eating, suit eating microorganisms? Or most likely, assuredly even, some beasty — just waiting — to take a big ol’ bite!?

                ****[Yep, still going to do it]
                {set("hands", 1)}
                {set("fish", 1)}
                {set("crystalBLUE", 1)}
                ->conclusion
                ****[Chicken out and leave.]->go_back
                
}

        **[Find an object to fish it out.]
        
        Because, you know, sticking your hand/arm in an unknown liquid is absurd.

        You find a long stalk of fungus and just sort of kick it till it falls down. It melts in the pool.
        
            ***[What now?]->investigate

=conclusion

The crash obviously damaged you more than you thought. The front bits of your neocortex probably favor cheese of some sort. Swiss. Maybe cottage. Anyway, without a hint of reluctance, you plunge your hand into the mystery liquid. It goes about as well as expected.

{get("crystalBLUE") == "1":+ BLUE Crystal added to inventory.}
{get("fish") == "1":+ Small fish-like beast added to inventory.}
{get("hands") == "1":- Hand removed from body.}

Your suit’s automatic ‘don’t die’ systems manage to seal the wound and  stem the massive bleeding, but you pass out anyway.

You wake up, hours later, and sort of half walk, half crawl back to your makeshift camp.

                *****[Go back to the chunk of ship.]->go_back

=go_back
 You walk back to the large husk of ship debris.->END