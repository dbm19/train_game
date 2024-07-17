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
	if area.is_in_group("train_index_1"):
		_change_train_orientation("train_index_1")
	elif area.is_in_group("train_index_2"):
		_change_train_orientation("train_index_2") 
	elif area.is_in_group("train_index_3"):
		_change_train_orientation("train_index_3")
	elif area.is_in_group("train_index_4"):
		_change_train_orientation("train_index_4")
	elif area.is_in_group("train_index_5"):
		_change_train_orientation("train_index_5")
	elif area.is_in_group("train_index_6"):
		_change_train_orientation("train_index_6")
	elif area.is_in_group("train_index_7"):
		_change_train_orientation("train_index_7")
	else:
		_change_train_orientation("train_index_8")

func _on_button_pressed():
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
			
func _change_train_orientation(train_index_group):
	if orientation == orientations["down"]:
		get_tree().call_group(train_index_group, "go_down")
	elif orientation == orientations["right"]:
		get_tree().call_group(train_index_group, "go_right")
	elif orientation == orientations["left"]:
		get_tree().call_group(train_index_group, "go_left")
	else:
		get_tree().call_group(train_index_group, "go_up")
