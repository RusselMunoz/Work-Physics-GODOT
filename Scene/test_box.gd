extends Node2D

@onready var line_edits: LineEdit = $Area2D/CanvasLayer/WorkCalculation/PanelContainer/VBoxContainer2/LineEdit
@onready var control = $Area2D/CanvasLayer/WorkCalculation

var storeText = null
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Debug: test run")
#	line_edits.text = "sadada"
#	storeText = line_edits
#	_on_LineEdit_text_entered(storeText)
#	line_edits.text_submitted.connect(_on_LineEdit_text_entered)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("enter"):
		control.
#func _on_LineEdit_text_entered(new_Text: String) -> void:
#	print(news_Text) 

func testing_new_Text


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
