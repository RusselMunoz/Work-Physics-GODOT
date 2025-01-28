extends Area2D

var showInteractionLabel = false
#@onready var label = $Area2D/Label

var isAnswered = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	$Label.visible = showInteractionLabel
	
	if showInteractionLabel && Input.is_action_just_pressed("interact"):
		get_tree().paused = true
		print("Interacted")
		$CanvasLayer/Work_Calculation/AnimationPlayer.play("blur")
		#await $CanvasLayer/Work_Calculation/AnimationPlayer.animation_finished
		
		#get_tree().call_deferred("res://Scene/work_calculation.tscn")
		#$CanvasLayer/Work_Calculation/AnimationPlayer.stop()
		
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
