extends Movement
class_name RotationalMovement

@export var angular_velocity: float = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	super._ready()



func move(delta, body_to_move: CharacterBody2D):
	# angular movement
	if Input.is_action_pressed("rotate_left"):
		body_to_move.rotate(-delta*angular_velocity)
	elif Input.is_action_pressed("rotate_right"):
		body_to_move.rotate(delta*angular_velocity)
	else:
		pass
