using Godot;
using System;

public partial class Menu : Control
{
	private void OnButtonPressed()
	{
		GetTree().ChangeSceneToFile("res://PlayerInventory.tscn");
	}
}
