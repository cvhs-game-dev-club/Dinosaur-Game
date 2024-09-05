extends CharacterBody2D


const SPEED = 300.0
var JUMP_VELOCITY = -1300.0

func _ready() -> void:
	$AnimatedSprite2D.play("default")
	JUMP_VELOCITY = -1300.0
	$AnimatedSprite2D.speed_scale = 1


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta * Global.gravity

	# Handle jump.
	if Input.is_action_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	move_and_slide()


func _on_timer_timeout() -> void:
	Global.gravity += 0.0025
	JUMP_VELOCITY -= .25
	$AnimatedSprite2D.speed_scale += 0.01
