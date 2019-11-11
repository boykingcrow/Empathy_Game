using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CreatureGame_Opener : MonoBehaviour { 

	public GameObject Creature_Minigame_Text;
	public GameObject Creature_Minigame_Background;
	public void ToggleCreature_Minigame_Text()
	{
		if(Creature_Minigame_Text != null)
		{
			bool isActive = Creature_Minigame_Text.activeSelf;
			
			Creature_Minigame_Text.SetActive(!isActive);
		}
	}

	public void ToggleCreature_Minigame_Background()
	{
		if(Creature_Minigame_Background != null)
		{
			bool isActive = Creature_Minigame_Background.activeSelf;
			
			Creature_Minigame_Background.SetActive(!isActive);
		}
	}

	
}
