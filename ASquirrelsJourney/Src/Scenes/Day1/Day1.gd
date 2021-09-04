extends Node2D


var acorns_count


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.acorns_count = 0
	$CanvasLayer/DayResult.visible = false
	$GamePlayTimer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$CanvasLayer/HUD.set_time(round($GamePlayTimer.time_left))


func _on_GamePlayTimer_timeout():
	$CanvasLayer/DayResult.visible = true
	$CanvasLayer/HUD.visible = false
	get_tree().paused = true
	Global.total_acorns_count += Global.acorns_count
	if Global.player_has_acorn == true:
		Global.total_acorns_count += 1
		Global.player_has_acorn = false
	$CanvasLayer/DayResult.fade_in()

func next_day_with_acorn():
	Global.full_speed = true
	Global.total_acorns_count -= 1
	get_tree().paused = false
	get_tree().change_scene(Global.scene_day2)

func next_day_without_acorn():
	Global.full_speed = false
	get_tree().paused = false
	get_tree().change_scene(Global.scene_day2)
