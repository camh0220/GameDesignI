extends Node

var player_lives = 3


func spawn_mushroom(pos):
	var MushroomScene = load("res://mushroom.tscn")
	var mushroom = MushroomScene.instantiate()
	mushroom.global_position = pos
	get_tree().root.add_child(mushroom)
