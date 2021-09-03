extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$OYLeaves/OrangeYellowLeaves.emitting = true
	$OYLeaves/OrangeYellowLeaves2.emitting = true
	$OYLeaves/OrangeYellowLeaves3.emitting = true
	$POLeaves/PinkOrangeLeaves.emitting = true
	$POLeaves/PinkOrangeLeaves2.emitting = true
	$POLeaves/PinkOrangeLeaves3.emitting = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
