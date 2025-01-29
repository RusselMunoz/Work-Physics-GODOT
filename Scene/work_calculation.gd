extends Control
class_name WorkHud

signal correct_answer_submitted # Custom signal for correct answers

@onready var line_edit: LineEdit = $PanelContainer/VBoxContainer2/LineEdit

var correct_answer: String = "42"

func _on_exit_button_pressed() -> void:
	print("Debug: exited")
	get_tree().paused = false
	Input.action_release("interact")  # Clear "E" key buffer
	$AnimationPlayer.play_backwards("blur")
	hide()
	release_focus()
	

func _on_line_edit_text_submitted(new_text: String) -> void:
	print("Entered: ", new_text)
	
	# Check if the input text matches the correct answer
	if new_text == correct_answer:
		correct_answer_submitted.emit()  # Emit signal
		line_edit.text = ""  # Clear input
		print("Debug: Correct answer!")
	else:
		print("Incorrect answer. Try again.")
