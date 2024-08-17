extends Movement
class_name AirplaneMovement

@export var angular_velocity: float = 1


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	super._ready()


func _physics_process(delta: float) -> void:

	# angular movement
	if Input.is_action_pressed("rotate_left"):
		body.rotate(-delta*angular_velocity)
	elif Input.is_action_pressed("rotate_right"):
		body.rotate(delta*angular_velocity)
	else:
		pass

	if Input.is_action_pressed("move_forward"):
		body.velocity = Vector2.UP.rotated(body.rotation)*self.linear_velocity
		body.move_and_slide()
