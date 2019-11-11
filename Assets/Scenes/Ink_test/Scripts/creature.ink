VAR bond = 50

->creature

=== function alter(ref x, k) ===
	~ x = x + k

=== function describe_bond(x) ===
{ 
- x == 100:
	~ return "GREEN"
- x > 75:
	~ return "MANY COLORS"
- x > 45:
	~ return "BLUE"
- else:
	~ return "RED"
}


=== creature ===


= random_behavior
A creature floats before you. Its body illuminates with a smatter of shifting colors.

{shuffle:

- Its single, huge, unblinking eye stares at you blankly.

- It holds a strange glowing crystal in one of its many tentacles, admiring it, before shoving it into what you believe is its mouth. You hear loud crunches but otherwise notice no reaction from the creature.

- It is constructing (what you think is) a small model of you out of rocks and mud.

- It watches a strange little insect intently.

- It is sleeping, or at least you think it's sleeping. It at least isn't moving.

- //{has Item brush:It is brushing its... eye? Like you would brush your teeth. You aren't sure where it even got a brush. Nonetheless, watching this activity disturbs you in ways you'd previously been unable to imagine.}

- It picks up a pile of a dozen-or-so rocks and begins to juggle them, using appendages you are pretty sure weren't even visible before.

}

[Creature mood: {describe_bond(bond)}]

+[Poke the creature.] -> poke

+[Talk to the creature.] -> talk

+[Trade with the creature.] -> trade

{has Item Color Gun}+[Communicate.] -> communicate


= poke

You reach out and poke the creature.

{ poke > 1:
    It lashes a tentacle at you.
	    + [Dodge.] -> creature 
- else:
	    *[It smacks you.] ->creature
}


= talk

You attempt to talk to the creature.
    + [Hey there little... er, cutie?] 
        It stares at you, unblinking.
        ~ alter(bond, 0)
        ->creature
        
    + [Can you speak?]
        It stares at you, mute and unblinking. It probably can't speak.
        ~ alter(bond, 0)
        ->creature
        
    + [I hate you. I hate this entire stupid planet.]
        It stares at you, unblinking. You feel bad for your outburst.
        ~ alter(bond, 0)
        ->creature
        
    + [GRAHHHRGH!]
        The creature smacks you.
        ~ alter(bond, -10)
        ->creature


= trade

What will you trade?
+ [TASTEY GOO BRAND FOOD-LIKE SUBSTANCE]
You give the creature rations marked "DO NOT FEED TO ALIEN ORGANISMS. WE MEAN IT." It flashes a series of colors. Is it pleased? It didn't hit you, so maybe. 

As you're puzzling the nuances of its mental state, the creature turns a greenish blue, spews bright neon liquid everywhere, and falls over. 

Oh lord, you've killed it. Oh, actually, nevermind. It is getting back up.
~ alter(bond, -25)
->creature

+ [An angry fish-like creature.]
You aren't sure what makes this vicious little beastie "fish-like". It sort of swims like a fish, you guess. Regardless, you throw it at the creature. The fish-like beastie bites into the creature with its creepy little mandibles and the creatures turns an eye-melting shade of red before vaporizing the vicious little thing.
~ alter(bond, -25)
->creature

+ [A rock.]
It takes the rock in ones of its multitudes of appendages and shoves it... somewhere. You hear crunching sounds. It stares at you, unblinking.
~ alter(bond, 0)
->creature

+ [A GLOWING rock.]
It takes the GLOWING rock in ones of its multitudes of appendages and shoves it... somewhere. You hear crunching sounds. It glows in patterns of progressively brighter shades of purple. 
~ alter(bond, 25)
->creature


= communicate

You attempt to mimic the creature. You sort of waggle your arms in a way (you feel) resembles the creatures various waggles and vellications.

{shuffle:
- It smacks you. You must have waggled boorishly.
        ~ alter(bond, -50)
        
- It stares at you, unblinking.
        ~ alter(bond, 0)
        
- It squirms, bends, wobbles, and undulates in a series of increasingly complex movements that are either a dance of pure ecstasy or a grand mal seizure.
        ~ alter(bond, 50)
}

->creature


-> END