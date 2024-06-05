extends CharacterBody2D

var SPEED = -25.0
var facing_right = false
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var is_alive = true
var timer = 1.0
var timerStarted : bool
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d = $CollisionShape2D
@onready var sprite_2d = $Sprite2D
@export var speed: float
@export var deathSprite : Texture2D

func _ready():
	add_to_group("Enemy")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if !$RayCast2D.is_colliding() && is_on_floor():
		flip()
	velocity.x = SPEED
	
	move_and_slide()

func _on_hitbox_body_entered(body):
	if body.is_in_group("Player"):
		is_alive = false
		die()

func flip():
	facing_right = !facing_right
	scale.x = abs(scale.x) * -1
	if facing_right:
		SPEED = abs(SPEED)
	else:
		SPEED = abs(SPEED) * -1

func die():
	collision_shape_2d.queue_free()
	sprite_2d.texture = deathSprite
	velocity.x = 0
	timerStarted = true

func _on_wall_detector_body_entered(body):
	speed = -speed
