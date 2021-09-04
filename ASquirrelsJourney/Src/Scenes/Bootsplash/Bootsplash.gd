extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("splash")
	yield($AnimationPlayer, "animation_finished")
	var _r = get_tree().change_scene(Global.scene_intro1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
