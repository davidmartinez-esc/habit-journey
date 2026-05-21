extends CharacterBody3D

const SPEED := 10.0
const GRAVITY := 20.0

func _physics_process(delta: float) -> void:
	_move(delta)
	print("Posición del jugador: ", global_position)

func _move(delta: float) -> void:
	var input := Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	).normalized()

	velocity.x = input.x * SPEED
	velocity.z = input.y * SPEED

	# La gravedad normal de Godot se encargará de mantenerlo en el suelo
	if not is_on_floor():
		velocity.y -= GRAVITY * delta
	else:
		velocity.y = 0 # Evita acumular gravedad negativa en el suelo

	move_and_slide()
