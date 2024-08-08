extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area):
	if self.name == "DownLeft":
		area.go_left()
	elif self.name == "DownRight":
		area.go_right()
	elif self.name == "UpLeft":
		area.go_left()
	elif self.name == "UpRight":
		area.go_right()
	elif self.name == "LeftDown":
		area.go_down()
	elif self.name == "LeftUp":
		area.go_up()
	elif self.name == "RightDown":
		area.go_down()
		print(area)
	elif self.name == "RightUp":
		area.go_up()
