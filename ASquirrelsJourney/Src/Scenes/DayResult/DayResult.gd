extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$ContinueDialog.visible = false


func hide_eat_acorn_dialog():
	$EatAcornDialog.visible = false
	$ContinueDialog.visible = true


func fade_in():
	if Global.total_acorns_count <= 0:
		$ContinueDialog.visible = true
		$EatAcornDialog.visible = false
	$AnimationPlayer.play('fade_in')
	$Stats/Collected/Count.text = str(Global.acorns_count)
	$Stats/TotalStored/Count.text = str(Global.total_acorns_count)
	


func _on_Yes_pressed():
	$ButtonClick.play()
	yield($ButtonClick, "finished")
	get_parent().get_parent().next_day_with_acorn()


func _on_No_pressed():
	$ButtonClick.play()
	yield($ButtonClick, "finished")
	get_parent().get_parent().next_day_without_acorn()


func _on_ContinueButton_pressed():
	$ButtonClick.play()
	yield($ButtonClick, "finished")
	get_parent().get_parent().next_day_without_acorn()
