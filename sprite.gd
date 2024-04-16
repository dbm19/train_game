extends Area2D

const speed = 80
var velocity = Vector2(0, speed)
var orientations = {
	"up": "up",
	"down": "down",
	"right": "right",
	"left": "left"
}
var orientation = orientations["down"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity * delta

func go_up():
	velocity = Vector2(0, -speed)
	orientation = orientations["up"]

func go_down():
	velocity = Vector2(0, speed)
	orientation = orientations["down"]

func go_right():
	velocity = Vector2(speed, 0)
	orientation = orientations["right"]

func go_left():
	velocity = Vector2(-speed, 0)
	orientation = orientations["left"]

