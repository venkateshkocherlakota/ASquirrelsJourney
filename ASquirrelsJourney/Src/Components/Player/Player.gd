extends KinematicBody2D


export var speed = 50


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	
	var movec = Vector2.ZERO
	var moving = false
	
	if Input.is_action_pressed("ui_down"):
		movec.y += 1
		moving = true
	elif Input.is_action_pressed("ui_up"):
		movec.y -= 1
		moving = true
	
	if Input.is_action_pressed("ui_right"):
		movec.x += 1
		moving = true
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("ui_left"):
		movec.x -= 1
		moving = true
		$AnimatedSprite.flip_h = false

	movec = movec.normalized() * speed * delta
	
	position += movec
	
	if moving == true:
		$AnimatedSprite.play("run")
	else:
		$AnimatedSprite.play("idle")
