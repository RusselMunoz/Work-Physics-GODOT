extends Node2D

@onready var line_edit: LineEdit = $Entiti/Area2D/CanvasLayer/Work_Calculation/PanelContainer/VBoxContainer2/LineEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Debug: test run")
	
func test_answer():
	print("Test Box: ", line_edit)
	
	
