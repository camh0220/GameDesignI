extends BaseItem

func _init():  super._init(2)
func _ready(): super._ready()

func interact(player):
	player.pickup_money(value)
	remove()
