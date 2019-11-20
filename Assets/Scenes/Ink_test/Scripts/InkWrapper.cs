using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
public class InkWrapper : MonoBehaviour {

	void Awake () {

		// Remove the default message
		RemoveChildren();
		StartStory(DefaultStory);
	}

	public void SetCanvas(GameObject input) {
		canvas = input;
	}

	// Creates a new Story object with the compiled story which we can then play.
	public void StartStory (TextAsset input) {
		
		story = new Story (input.text);

		story.BindExternalFunction ("build_colorGun", () => {
		
        bool var1 = GameObject.Find("Player").GetComponent<Inventory>().crystalRED == "1";
        bool var2 = GameObject.Find("Player").GetComponent<Inventory>().crystalGREEN == "1";
	    bool var3 = GameObject.Find("Player").GetComponent<Inventory>().crystalPURPLE == "1";
		bool var4 = GameObject.Find("Player").GetComponent<Inventory>().crystalYELLOW == "1";
		bool var5 = GameObject.Find("Player").GetComponent<Inventory>().crystalBLUE == "1";
	        
            if (var1 && var2 && var3 &&  var4 && var5)
			{
				GameObject.Find("Player").GetComponent<Inventory>().ColorGun = "1";
			}
		});
		
		//Gets the variables from inventory.
		story.BindExternalFunction ("get", (string var) => {
			if (var == "hands")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().hands;
			}
			if (var == "fish")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().fish;
			}
			if (var == "goo")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().goo;
			}
			if (var == "helmet")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().helmet;
			}
			if (var == "image")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().image;
			}
			if (var == "toothbrush")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().toothbrush;
			}
			if (var == "crystalRED")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().crystalRED;
			}
			if (var == "crystalGREEN")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().crystalGREEN;
			}
			if (var == "crystalPURPLE")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().crystalPURPLE;
			}
			if (var == "crystalYELLOW")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().crystalYELLOW;
			}
			if (var == "crystalBLUE")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().crystalBLUE;
			}
			if (var == "ColorGun")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().ColorGun;
			}
			if (var == "BOND")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().BOND;
			}
			if (var == "hasLeft")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().hasLeft;
			}
			if (var == "interact")
			{
				return GameObject.Find("Player").GetComponent<Inventory>().interact;
			}
			return "null";
		});

		//Sets whether player has inventory item.
		story.BindExternalFunction ("set", (string var, string setTo) => {
			if (var == "hands") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().hands = setTo;
			}
			if (var == "fish") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().fish = setTo;
			}
			if (var == "goo") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().goo = setTo;
			}
			if (var == "helmet") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().helmet = setTo;
			}
			if (var == "image") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().image = setTo;
			}
			if (var == "toothbrush") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().toothbrush = setTo;
			}
			if (var == "crystalRED") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().crystalRED = setTo;
			}
			if (var == "crystalGREEN") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().crystalGREEN = setTo;
			}
			if (var == "crystalPURPLE") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().crystalPURPLE = setTo;
			}
			if (var == "crystalYELLOW") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().crystalYELLOW = setTo;
			}
			if (var == "crystalBLUE") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().crystalBLUE = setTo;
			}
			if (var == "ColorGun") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().ColorGun = setTo;
			}
			if (var == "ColorGun") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().ColorGun = setTo;
			}
			if (var == "BOND") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().BOND = setTo;
			}
			if (var == "hasLeft") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().hasLeft = setTo;
			}
			if (var == "interact") 
			{
				GameObject.Find("Player").GetComponent<Inventory>().interact = setTo;
			}
		});
		
		RefreshView();
	}
	
	// Main function called every time the story changes.
	// Destroys all the old content and choices.
	// Continues over all the lines of text, then displays all the choices. If there are no choices, the story is finished!
	void RefreshView () {
		// Remove all the UI on screen
		RemoveChildren ();
		
		// Read all the content until we can't continue any more
		while (story.canContinue) {
			// Continue gets the next line of the story
			string text = story.Continue ();
			// This removes any white space from the text.
			text = text.Trim();
			// Display the text on screen!
			CreateContentView(text);
		}

		// Display all the choices, if there are any!
		if(story.currentChoices.Count > 0) {

			//if (EventSystem.current.IsPointerOverGameObject())
			//return;

			for (int i = 0; i < story.currentChoices.Count; i++) {
				Choice choice = story.currentChoices [i];
				Button button = CreateChoiceView (choice.text.Trim ());
				// Tell the button what to do when we press it
				button.onClick.AddListener (delegate {
					OnClickChoiceButton (choice);
				});
			}
		}
		// If we've read all the content and there's no choices, the story is finished!
		else {

			Button choice = CreateChoiceView("End.");
			choice.onClick.AddListener(delegate{
				StartStory(DefaultStory);
				gameObject.GetComponent<InkWrapper>().canvas.SetActive(false);
				//GameObject.Find("Creature_Minigame_Background").SetActive(false);
			});
		}
	}

	// When we click the choice button, tell the story to choose that choice!
	void OnClickChoiceButton (Choice choice) {
		story.ChooseChoiceIndex (choice.index);
		RefreshView();
	}

	// Creates a button showing the choice text
	void CreateContentView (string text) {
		Text storyText = Instantiate (textPrefab) as Text;
		storyText.text = text;
		storyText.transform.SetParent (canvas.transform, false);
	}

	// Creates a button showing the choice text
	Button CreateChoiceView (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (buttonPrefab) as Button;
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;

		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	// Destroys all the children of this gameobject (all the UI)
	void RemoveChildren () {
		int childCount = canvas.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			GameObject.Destroy (canvas.transform.GetChild (i).gameObject);
		}
	}

	[SerializeField]
	private TextAsset DefaultStory;
	public Story story;

	[SerializeField]
	public GameObject canvas;

	// UI Prefabs
	[SerializeField]
	private Text textPrefab;

	[SerializeField]
	private Button buttonPrefab;
}
