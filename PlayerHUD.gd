extends CanvasLayer

@onready var player = get_tree().get_first_node_in_group("Player")
@onready var hearts = $PlayerHealth/Hearts

const HEART_ROW_SIZE = 10
const HEART_OFFSET = 16

func create_heart():
	var n_heart = Sprite2D.new()
	n_heart.texture = hearts.texture
	n_heart.hframes = hearts.hframes
	n_heart.vframes = hearts.vframes
	n_heart.frame = 8
	hearts.add_child(n_heart)
	
	for heart in hearts.get_children():
		var index = heart.get_index()
		var x = (index % HEART_ROW_SIZE) * HEART_OFFSET
		var y = (index / HEART_ROW_SIZE) * HEART_OFFSET
		heart.position = Vector2(x, y)
