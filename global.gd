extends Node

func spawn_mushroom(pos):
	var MushroomScene = load("res://1upMushroom.png")
	var mushroom = MushroomScene.instantiate()
	mushroom.global_position = pos
	get_tree().root.add_child(mushroom)
