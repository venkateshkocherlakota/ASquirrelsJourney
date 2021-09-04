extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var already_took = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Acorn_body_entered(body):
	if body.name == 'Player' and already_took == false and Global.player_has_acorn == false:
		Global.player_has_acorn = true
		$AcornTaken.play()
		visible = false
		already_took = true
		yield($AcornTaken, "finished")
		queue_free()
