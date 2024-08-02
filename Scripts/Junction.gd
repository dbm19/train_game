extends Area2D

var orientations = {
	"up": "up",
	"down": "down",
	"right": "right",
	"left": "left"
}
var orientation

func _ready():
	# Setting initial orientations of each junction
	if get_groups()[0] == "down_right" || get_groups()[0] == "down_left":
		orientation = orientations["down"]
	elif get_groups()[0] == "right_down" || get_groups()[0] == "right_up":
		orientation = orientations["right"]
	elif get_groups()[0] == "left_down" || get_groups()[0] == "left_up":	
		orientation = orientations["left"]
	else:
		orientation = orientations["up"]

func _process(delta):
	pass

func _on_area_entered(area):
	_change_train_orientation(area)

func _on_button_pressed():
	SoundPlayer.play_junction_sound()
	if get_groups()[0] == "down_right":
		if orientation == orientations["down"]:
			orientation = orientations["right"]
			get_node("Sprite2D").texture = load("res://art_assets/down_right_junction.png")
		else:
			orientation = orientations["down"]
			get_node("Sprite2D").texture = load("res://art_assets/vertical_junction.png")
	elif get_groups()[0] == "down_left":
		if orientation == orientations["down"]:
			orientation = orientations["left"]
			get_node("Sprite2D").texture = load("res://art_assets/down_left_junction.png")
		else:
			orientation = orientations["down"]
			get_node("Sprite2D").texture = load("res://art_assets/vertical_junction.png")
	elif get_groups()[0] == "right_down":
		if orientation == orientations["right"]:
			orientation = orientations["down"]
			get_node("Sprite2D").texture = load("res://art_assets/up_left_junction.png")
		else:
			orientation = orientations["right"]
			get_node("Sprite2D").texture = load("res://art_assets/horizontal_junction.png")
	elif get_groups()[0] == "right_up":
		if orientation == orientations["right"]:
			orientation = orientations["up"]
			get_node("Sprite2D").texture = load("res://art_assets/down_left_junction.png")
		else:
			orientation = orientations["right"]
			get_node("Sprite2D").texture = load("res://art_assets/horizontal_junction.png")
	elif get_groups()[0] == "left_up":
		if orientation == orientations["left"]:
			orientation = orientations["up"]
			get_node("Sprite2D").texture = load("res://art_assets/down_right_junction.png")
		else:
			orientation = orientations["left"]
			get_node("Sprite2D").texture = load("res://art_assets/horizontal_junction.png")
	elif get_groups()[0] == "left_down":
		if orientation == orientations["left"]:
			orientation = orientations["down"]
			get_node("Sprite2D").texture = load("res://art_assets/up_right_junction.png")
		else:
			orientation = orientations["left"]
			get_node("Sprite2D").texture = load("res://art_assets/horizontal_junction.png")
	elif get_groups()[0] == "up_right":
		if orientation == orientations["up"]:
			orientation = orientations["right"]
			get_node("Sprite2D").texture = load("res://art_assets/up_right_junction.png")
		else:
			orientation = orientations["up"]
			get_node("Sprite2D").texture = load("res://art_assets/vertical_junction.png")
	elif get_groups()[0] == "up_left":
		if orientation == orientations["up"]:
			orientation = orientations["left"]
			get_node("Sprite2D").texture = load("res://art_assets/up_left_junction.png")
		else:
			orientation = orientations["up"]
			get_node("Sprite2D").texture = load("res://art_assets/vertical_junction.png")
			
func _change_train_orientation(train_area):
	if orientation == orientations["down"]:
		train_area.go_down()
	elif orientation == orientations["right"]:
		train_area.go_right()
	elif orientation == orientations["left"]:
		train_area.go_left()
	else:
		train_area.go_up()
