extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_time(60)
	if Global.full_speed == true:
		$Speed/Full.visible = true
		$Speed/Half.visible = false
	else:
		$Speed/Full.visible = false
		$Speed/Half.visible = true
	var parent_name = str(get_parent().get_parent().name)
	$DayCount/Count.text = parent_name.substr(3,1)


func _process(_delta):
	$HasAcorn.visible = Global.player_has_acorn
	$AcornsCount/Count.text = str(Global.acorns_count)


func set_time(sec):
	$TimeLeft/Time.text = str(sec)
