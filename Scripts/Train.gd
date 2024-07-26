extends Area2D

const speed = 55
var velocity: Vector2

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

func _on_area_entered(area):
	if area.is_in_group("spawn_up"):
		velocity = Vector2(0, -speed)
	elif area.is_in_group("spawn_down"):
		velocity = Vector2(0, speed)
	elif area.is_in_group("spawn_left"):
		velocity = Vector2(-speed, 0)
	elif area.is_in_group("spawn_right"):
		velocity = Vector2(speed, 0)

func whatthefuck():
	print("whatthefuck")
