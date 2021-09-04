extends Control


export(Color) var color_success
export(Color) var color_greedy : Color
export(Color) var color_starving : Color

var msg_greedy = '"Seems like you collected more than necessary. Hope you will share them with those in need." the elder squirrel sighed in a hopeless way and left.'
var msg_starving = '"Don\'t worry, we have your back. Even though you collected less than 10 Acorns, others are ready to share with you." assured the elder squirrel.'
var msg_success = '"Well done boy! You sure got some survival skills!" patted the elder squirrel. '

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.total_acorns_count < 10:
		show_starving_msg()
	elif Global.total_acorns_count == 10:
		show_success_msg()
	else:
		show_greedy_msg()


func show_success_msg():
	$bg.color = color_success
	$FinalMessage/Message.text = msg_success
	
func show_starving_msg():
	$bg.color = color_starving
	$FinalMessage/Message.text = msg_starving

func show_greedy_msg():
	$bg.color = color_greedy
	$FinalMessage/Message.text = msg_greedy
