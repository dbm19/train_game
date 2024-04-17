extends Area2D

var orientations = {
	"up": "up",
	"down": "down",
	"right": "right",
	"left": "left"
}
var orientation

func _ready():
	# Setting initial rotations of each junction
	if get_groups()[0] == "down_right" || get_groups()[0] == "down_left":
		get_node("Sprite2D").rotation_degrees = 0
	elif get_groups()[0] == "right_down" || get_groups()[0] == "right_up":
		get_node("Sprite2D").rotation_degrees = -90
	elif get_groups()[0] == "left_down" || get_groups()[0] == "left_up":	
		get_node("Sprite2D").rotation_degrees = 90
	else:
		get_node("Sprite2D").rotation_degrees = 180
	
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
	else:
		_change_train_orientation("train_index_6")

func _on_button_pressed():
	if get_groups()[0] == "down_right":
		get_node("Sprite2D").flip_h = !get_node("Sprite2D").flip_h
		if get_node("Sprite2D").rotation_degrees == 0:
			orientation = orientations["right"]
			get_node("Sprite2D").rotation_degrees = -90
		else:
			orientation = orientations["down"]
			get_node("Sprite2D").rotation_degrees = 0
	elif get_groups()[0] == "right_down":
		get_node("Sprite2D").flip_h = !get_node("Sprite2D").flip_h
		if get_node("Sprite2D").rotation_degrees == -90:
			orientation = orientations["down"]
			get_node("Sprite2D").rotation_degrees = 0
		else:
			orientation = orientations["right"]
			get_node("Sprite2D").rotation_degrees = -90
	elif get_groups()[0] == "right_up":
		get_node("Sprite2D").flip_h = !get_node("Sprite2D").flip_h
		if get_node("Sprite2D").rotation_degrees == -90:
			orientation = orientations["up"]
			get_node("Sprite2D").rotation_degrees = 180
		else:
			orientation = orientations["right"]
			get_node("Sprite2D").rotation_degrees = -90
			
func _change_train_orientation(train_index_group):
	if orientation == orientations["down"]:
		get_tree().call_group(train_index_group, "go_down")
	elif orientation == orientations["right"]:
		get_tree().call_group(train_index_group, "go_right")
	elif orientation == orientations["left"]:
		get_tree().call_group(train_index_group, "go_left")
	else:
		get_tree().call_group(train_index_group, "go_up")
