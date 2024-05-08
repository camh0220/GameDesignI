extends CharacterBody2D

@export var speed: float


func _process(delta):
	velocity.x = speed * delta
	
	move_and_slide()
	

func _on_wall_detector_body_entered(body):
	speed = -speed
