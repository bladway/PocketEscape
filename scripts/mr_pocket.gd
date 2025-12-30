extends CharacterBody2D


@onready var animation = $AnimatedSprite2D
var speed = 400

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("up"):
		move_up()
	elif Input.is_action_pressed("down"):
		move_down()
	elif Input.is_action_pressed("left"):
		move_left()
	elif Input.is_action_pressed("right"):
		move_right()
	else:
		idle()
	move_and_slide()

func move_up():
	animation.play("up")
	velocity.x = 0
	velocity.y = -speed
	
func move_down():
	animation.play("down")
	velocity.x = 0
	velocity.y = speed
	
func move_left():
	animation.play("left")
	velocity.x = -speed
	velocity.y = 0
	
func move_right():
	animation.flip_h = true
	animation.play("left")
	velocity.x = speed
	velocity.y = 0
	
func idle():
	animation.play("idle")
	velocity.x = 0
	velocity.y = 0
