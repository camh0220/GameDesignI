extends CharacterBody2D

var is_dying = false
var is_jumping = false
var is_big = false
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var death_timer = $death_timer

func _ready():
	death_timer.connect("timeout,", Callable(self, "_on_DeathTimer_timeout"))

func _physics_process(delta):
	if is_dying:
		return
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		is_jumping = false
	# Handle Jump.
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		is_jumping = true
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	update_animation(direction)
	move_and_slide()

func update_animation(direction):
	if is_jumping:
		animated_sprite_2d.play("jump")
	elif direction != 0:
		animated_sprite_2d.flip_h = (direction < 0)
		animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("idle")


func _on_hitbox_body_entered(body):
	if is_dying:
		return
		
	if body.is_in_group("Enemy") and body.is_alive:
		if is_big:
			become_small()
		else:
			die()
		
func die():
	if is_dying:
		return
		
	is_dying = true
	animated_sprite_2d.play("die")
	await move_player_up_and_down()
	Global.player_lives -= 1
	
	if Global.player_lives > 0:
		get_tree().reload_current_scene()
	else:
		queue_free()
	
func move_player_up_and_down():
	var start_position = position
	var up_position = start_position + Vector2(0, -100)
	var down_position = start_position + Vector2(0, 600)
	
	while position.y > up_position.y:
		position.y -= 4
		await get_tree().create_timer(0.01).timeout
	
	while position.y < down_position.y:
		position.y += 4
		await get_tree().create_timer(0.01).timeout
		
func on_DeathTimer_timeout():
	get_tree().reload_current_scene()
	
func become_big():
	is_big = true
	self.scale = Vector2(1.5, 1.5)

func become_small():
	is_big = false
	self.scale = Vector2(1, 1)
