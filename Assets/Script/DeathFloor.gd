extends CollisionShape3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (position.y < -20):
		# Trigger death animation or game over logic here
		get_tree().quit()  # or emit a signal to handle death
