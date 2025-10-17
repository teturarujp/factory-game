extends CharacterBody2D

@export var speed = 400

func _physics_process(delta):
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_direction * speed * 100 * delta
	move_and_slide()
