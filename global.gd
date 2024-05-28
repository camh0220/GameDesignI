extends Node

var player_lives = 3
var coins = 0


func spawn_mushroom(pos):
	var MushroomScene = load("res://mushroom.tscn")
	var mushroom = MushroomScene.instantiate()
	mushroom.global_position = pos
	get_tree().root.add_child(mushroom)


func spawn_coin(pos):
	var CoinScene = load("res://coin1.tscn")
	var coin = CoinScene.instantiate()
	coin.global_position = pos
	get_tree().root.add_child(coin)
