extends Movement
class_name LinearMovement

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	super._ready()



func move(delta, body_to_move: CharacterBody2D):
	if Input.is_action_pressed("move_forward"):
		body_to_move.velocity = Vector2.UP.rotated(self.rotation)*linear_velocity
