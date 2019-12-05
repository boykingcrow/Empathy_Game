EXTERNAL set(var, arg1)
EXTERNAL get(var)
EXTERNAL build_BEACON()
EXTERNAL killthebitch()
EXTERNAL endgame()


{build_BEACON()}

{get("BEACON") == "1":
->GAME_END

-else:
->BEACON
}
=== BEACON ===

{get("hasLeft") == "5":
->notbuilt
}

*AI:[...]
<> Alright, this is the perfect spot for a distress beacon.

**AI:[...]
<>  Now all we need is, well, the beacon part. We’ll have to pull those from the alien ship, obviously -- here’s the thing though. We have the same big problem we always did of "how?" -- savvy?

***[Not following.]
Sigh.
***[I see.]
Don’t pretend to be in-the-know now, it’s unbecoming of a strapping young turd.

-You see, murderer, you are hardly one-handed Heracles reincarnate. And as we’ve no doubt mentioned, we have ZERO appendages. Even if we can snag parts from that big scary hunk, we can’t LIFT them.

->convo2

=convo2
{set("hasLeft", 5)}
*[We’ll find a way.]
You: We’ll find a way, through science!
	**AI:[...]
    <> Oh! That’s adorable!
    ->convo2
*[The creature can.]
AI: What now? I know it’s got lots of appendages, unlike us, but they hardly look like forklifts.

**[It does a thing.]
AI: Ohhh… It does a THING! How helpful.
***[It can make those angry fish-things explode.]
AI: Well, we don’t see how that’s relevant to… wait. You don’t mean...
***[It makes bubbles.]
AI: Bubbles!? How in the… wait. What do these bubbles do?
****[I think it has extremely powerful psionic capabilities.]
-You: It lifts things. Big things. I've seen it.
*AI:[...]
<> YES! Yes! Oh lord yes!
**AI:[...]
<> Honestly? Up until this point we were just stringing you along with false hopes of escape to torture you.
***AI:[...]
<> But if the creature can do what you say it can, we might actually… maybe… supposedly... get off this stupid rock!->parts

= parts
*AI:[...]
<> We’ll need at least 4 things in order to cobble together a beacon. In order of heaviness:

**1) A computation unit.
We can probably rip one from the chunk where you found us -- shouldn’t be too banged up.
***2) A comms relay.
Don’t worry your pretty little head about what that even IS, murderer. We need it, it does a thing, grab it from the alien ship.
****3) An antennae.
A big long metal rod. Think you can manage to find one?
*****4) A warp coil. 
That is, the coil-y bits of a Warp Drive. They’ll be in the alien ship’s engine room.
******[continue.]
-After our scavenger hunt we’ll need to interface with the thing. To do that, we’ll need you to do your duty as our new Empathy Module and tell us what some of those emotional colors match with.
**AI:[...]
<> You follow?
	***[No.]
	***[Yes.]
-Great! Now get out there and do your corporate overlords proud, scamp!
{killthebitch()}
->BEACON

= notbuilt

You return to the site where you'll construct the distress beacon.
*[Leave.]
{killthebitch()}
->notbuilt

===GAME_END===
It takes a few weeks to build the beacon. Your supply of TASTY GOO rations dwindles to dangerous levels and you can feel your formerly robust space adventurer suit begin to fray -- just a bit -- at the seams.

*[continue]

-At some point, the AI grows tired of ridiculing you. Just kidding, the AI can’t grow tired -- it’s a computer.

The creature follows you around mostly, observing your various, to it, likely bizarre behaviors and rituals with its unmoving eye. You can’t shake the feeling, after all this time -- that there’s a childlike, almost babyish, quality to the creature. You quickly put it out of your mind. Thoughts of what an infant like that could some day become invoke some kind of primordial panic that seems to make every cell in your body shudder.
*[continue]

-Regardless, the creature is your friend.

*AI:[...]
<> Finally, it’s built. We’ve built it.

**AI:[...]
<> Just one last step.

***AI:[...]
<> We have to interface with it. And to do that, we need your services empathy module 2. Final exam time.

****AI:[...]
<> We need you to tell us which colors match which emotions yeah? We’ll be able to use our vastly superior processing power to piece together the more complicated stuff. You just gotta tell us the basics.

*****AI:[...]
<>: We can’t muck this up, or it’s game over. We’ll all die here. Well, you’ll die. We’ll “die” of boredom, probably, so to speak. No pressure though.
******[continue.]
->Q1

=Q1
AI: We’ll start with RED.

*[Fear.]
->Q2
*[Anger.]
->Q2
*[Lust.]
AI: ...No. Just no.
**[continue.]
->Q1
*[A toothache.]
AI: Not an emotion.
**[continue.]
->Q1
*[Excitement.]
->Q2
*[BLUE.]
AI: Sigh.
**[continue.]
->Q1

=Q2
AI: Okay, now GREEN.

*[Excitement.]
->Q3
*[Calm.]
->Q3
*[Jealousy.]
AI: You think jealousy is a BASIC emotion? Wow.
**[continue.]
->Q2
*[Happiness.]
->Q3
*[Grass-y-ness.]
AI: Not an emotion.
**[continue.]
->Q2

=Q3
AI: YELLOW?

*[Excitement.]
->Q4
*[Anger.]
->Q4
*[Uh, go slow?]
AI: Not an emotion. If you don't take this seriously we will die. 
**[continue.]
->Q3
*[Happiness.]
->Q4
*[Fear.]
->Q4


=Q4
AI: BLUE?

*[BLUE.]
AI: What? Why would you... Ugh.
**[continue.]
->Q4
*[Sadness.]
->Q5
*[Calm.]
->Q5
*[BLUE.]
AI:... Is this a joke to you? AM I A JOKE TO YOU!?
**[continue.]
->Q4
*[That feeling you get when you look at the sky and it’s just… too big, you know?]
AI: No. I do not know.
**[continue.]
->Q4
*[Happiness.]
->Q5

=Q5
AI: And PURPLE.

*[Calm.]
->end_game
*[Boredom.]
->end_game
*[Sadness.]
->end_game
*[Royal-ness?]
AI:...
**[continue.]
->Q5
*[Hopelessness.]
->end_game

===end_game

The AI uses your emotional color inputs to interface with the beacon and grows quiet. Hundreds of colors flash through its facial display and the beacon begins to emit a low hum.

The creature floats over and begins to... Writhe? Dance? You aren't sure. But it is flashing various shades of GREEN.

	*[Time passes.]

	The AI continues its steady silent display of colors, its silence unnerves you for some reason. 

		**[You nod off.]

		When you awake the sky is full of clouds that don't resemble any you've ever seen. You're high up. Being carried by... you can't see. The clouds obscure the forms that writhe around your body. 

			***[continue.]

			You look around for the creature, for the AI core. You spot the core's flashing color display not far off.

				****[Something taps your shoulder.]
				It's the creature. Still flashing many brilliant shades of GREEN. It's being carried upwards as well.

					*****[continue.]

					These clouds. They remind you of the creature's abilities. 

						******[continue.]

						You look up to see huge forms moving in the distance, somewhere behind those gaseous telekenetic clouds. You may not have been rescued by [REDACTED] Corp, but at least you've been rescued.

							*******[continue.]

								********[THE END.]
								{killthebitch()}
								{endgame()}
								->BEACON





