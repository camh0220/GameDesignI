extends CharacterBody2D

@export var speed: float
@export var deathSprite : Texture2D

@onready var collision_shape_2d = $CollisionShape2D
@onready var sprite_2d = $Sprite2D

var timer = 1.0
var timerStarted : bool

func _ready():
	add_to_group("Enemy")

func _process(delta):
	if timerStarted:
		timer -= delta
	else:
		velocity.x = speed * delta
		move_and_slide()
	if timer <= 0:
		queue_free()
	
	

func _on_wall_detector_body_entered(body):
	speed = -speed


func _on_player_detector_body_entered(body):
	if body.name == "player":
		die()
	
func die():
	collision_shape_2d.queue_free()
	sprite_2d.texture = deathSprite
	velocity.x = 0
	timerStarted = true
