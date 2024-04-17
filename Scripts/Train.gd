extends Area2D

const speed = 90
var velocity = Vector2(0, speed)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity * delta

func go_up():
	velocity = Vector2(0, -speed)

func go_down():
	velocity = Vector2(0, speed)

func go_right():
	velocity = Vector2(speed, 0)

func go_left():
	velocity = Vector2(-speed, 0)

