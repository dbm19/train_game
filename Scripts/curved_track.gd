extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area):
	if get_groups()[0] == "down_left_track":
		area.go_left()
	elif get_groups()[0] == "down_right_track":
		area.go_right()
	elif get_groups()[0] == "up_left_track":
		area.go_left()
	elif get_groups()[0] == "up_right_track":
		area.go_right()
	elif get_groups()[0] == "left_down_track":
		area.go_down()
	elif get_groups()[0] == "left_up_track":
		area.go_up()
	elif get_groups()[0] == "right_down_track":
		area.go_down()
	elif get_groups()[0] == "right_up_track":
		area.go_up()
