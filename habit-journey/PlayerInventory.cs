using Godot;
using System;

public partial class PlayerInventory : Control
{
	private void OnButtonPressed()
	{
		GetTree().ChangeSceneToFile("res://Menu.tscn");
	}
}
