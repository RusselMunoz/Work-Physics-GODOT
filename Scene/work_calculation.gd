extends Control

var input_text: String = ""

var is_animation_triggered = false

func _on_exit_button_pressed() -> void:
	print("Debug: exited")
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")

func _on_line_edit_text_submitted(new_text: String) -> void:
	input_text = new_text
	print(new_text)
	print("Entered")
	
