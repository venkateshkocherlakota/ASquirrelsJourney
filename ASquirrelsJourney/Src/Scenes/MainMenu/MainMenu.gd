extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$PinkOrangeLeaves.emitting = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	$ButtonClick.play()
	yield($ButtonClick, "finished")
	var _R = get_tree().change_scene(Global.scene_intro1)
