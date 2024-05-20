extends CanvasLayer

func _process(delta):
	$Label.text = "Lives: " + str(Global.player_lives)
