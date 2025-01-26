extends Area2D

var showInteractionLabel = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.visible = showInteractionLabel
	
	if showInteractionLabel && Input.is_action_just_pressed("interact"):
		print("Interacted")
		get_tree().change_scene_to_file("res://Scene/work_calculation.tscn")
		
		change_rigidbody_mass()
		showInteractionLabel = false
		

func _on_body_entered(body: Node2D) -> void:
	if body is Player: showInteractionLabel = true
	
	
func _on_body_exited(body: Node2D) -> void:
	if body is Player: showInteractionLabel = false
	
func change_rigidbody_mass() -> void:
	var rigidbody = $RigidBody2D
	if rigidbody:
		rigidbody.change_mass(5.0)  # Call the method to change the mass
	else:
		print("RigidBody2D not found!")
