extends StaticBody2D

var showInteractionLabel = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.visible = showInteractionLabel
	
	if showInteractionLabel && Input.is_action_just_pressed("interact"):
		queue_free()
		
func _on_body_entered(body: Node2D) -> void:
	if body is Player: showInteractionLabel = true
	print("Player touched the object") # Debug message
	
func _on_body_exited(body: Node2D) -> void:
	if body is Player: showInteractionLabel = false

#func _on_exit_button_pressed() -> void:
	#$Popup.hide()
