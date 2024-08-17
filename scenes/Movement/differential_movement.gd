extends Movement
class_name DifferentialMovement

@export var angular_velocity: float = 0.1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	super._ready()


# if left or right are pressed, rotate of a target angle.
# it moves forward
func move(delta, body_to_move: CharacterBody2D):
	# rotate CharacterBody2D
	body_to_move.rotate(angular_velocity*delta)
	# assuming that the nose of the object is up
	var direction : Vector2 = Vector2.UP.rotated(body_to_move.rotation_degrees)
	body_to_move.velocity = direction*linear_velocity
	print(body_to_move.velocity)
	body_to_move.move_and_slide()
