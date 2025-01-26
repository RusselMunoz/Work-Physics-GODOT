extends RigidBody2D

var initial_mass = 8.0  # The initial mass set in the inspector
var new_mass = 5.0      # The new mass to change to

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_mass(initial_mass)  # Set the initial mass programmatically if needed

func change_mass(value: float) -> void:
	set_mass(value)
	print("Mass changed to: ", get_mass())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
