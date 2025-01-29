extends Area2D

var showInteractionLabel = false
var isAnswered = false  # Track if already answered

@onready var rigidbody = $RigidBody2D
@onready var work_hud: WorkHud = $CanvasLayer/Work_Calculation


func _ready() -> void:
	# Connect WorkHud's custom signal to this script
	work_hud.correct_answer_submitted.connect(_on_correct_answer_submitted)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.visible = showInteractionLabel && !isAnswered  # Hide if answered
	
	# Only allow interaction if:
	# - Player is nearby
	# - Not answered
	# - "E" is pressed (interact action)
	if showInteractionLabel && Input.is_action_just_pressed("interact") && !isAnswered:
		get_tree().paused = true
		work_hud.show()  # Ensure WorkHud is visible
		print("Interacted")
		$CanvasLayer/Work_Calculation/AnimationPlayer.play("blur")

func _on_body_entered(body: Node2D) -> void:
	if body is Player: showInteractionLabel = true
	
	
func _on_body_exited(body: Node2D) -> void:
	if body is Player: showInteractionLabel = false
	
func _on_correct_answer_submitted():
	# Handle correct answer logic
	isAnswered = true
	change_rigidbody_mass()
	get_tree().paused = false
	$CanvasLayer/Work_Calculation/AnimationPlayer.play_backwards("blur")
	
func change_rigidbody_mass() -> void:
	var rigidbody = $RigidBody2D
	if rigidbody:
		rigidbody.change_mass(5.0)  # Call the method to change the mass
		print("Mass changed to 5.0")
	else:
		print("RigidBody2D not found!")
