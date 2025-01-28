extends Control
#@onready var workCalcuation = preload("res://Scene/work_calculation.tscn")
#@onready var line_edit: LineEdit = $LineEdit

var is_animation_triggered = false
#var right_answer = 42

#func _ready() -> void:
#	line_edit.text_submitted.connect(_on_LineEdit_text_entered)
	
#func _on_LineEdit_text_entered(new_Text: String) -> void:
#	print(new_Text) 
#func _process(delta: float) -> void:
#	if Input.is_action_just_pressed("enter"):
#		sdadwfw()

func _on_exit_button_pressed() -> void:
	print("Debug: exited")
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
#func sdadwfw() -> void:
#	print("dadada")



func _on_line_edit_text_submitted(new_text: String) -> void:
	print(new_text)
	print("entered")
	 # Replace with function body.
