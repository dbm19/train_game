extends Area2D

var orientations = {
	"up": "up",
	"down": "down",
	"right": "right",
	"left": "left"
}
var orientation

func _ready():
	#Setting initial rotations of each junction
	if get_groups()[0] == "right_down":
		get_node("Sprite2D").rotation_degrees = -90
	
	#Setting initial orientations of each junction
	if get_groups()[0] == "down_right":
		orientation = orientations["down"]
	elif get_groups()[0] == "right_down":
		orientation = orientations["right"]

func _process(delta):
	pass

func _on_area_entered(area):
	if orientation == orientations["down"]:
		get_tree().call_group("train_sprite", "go_down")
	elif orientation == orientations["right"]:
		get_tree().call_group("train_sprite", "go_right")
	elif orientation == orientations["left"]:
		get_tree().call_group("train_sprite", "go_left")
	else:
		get_tree().call_group("train_sprite", "go_up")

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
