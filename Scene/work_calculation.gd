extends Control
@onready var workCalcuation = preload("res://Scene/work_calculation.tscn")

func resume():
	get_tree().paused = false
	$AnimationPlayer.play("blur")
	
func pause():
	get_tree().pause = true
	
func testInteract():
	if Input.is_action_just_pressed("interact") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("interact") and get_tree().paused:
		resume()
		
func exitButton():
	pass
