extends Button

var rng = RandomNumberGenerator.new()
var map_index

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	SoundPlayer.play_menu_sound()
	map_index = rng.randi_range(1, 5)
	if self.name == "4Trains":
		if map_index == 1:
			get_tree().change_scene_to_file("res://scenes/levels/4_trains/4_train_map_one.tscn")
		elif map_index == 2:
			get_tree().change_scene_to_file("res://scenes/levels/4_trains/4_train_map_two.tscn")
		elif map_index == 3:
			get_tree().change_scene_to_file("res://scenes/levels/4_trains/4_train_map_three.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/levels/4_trains/4_train_map_four.tscn")
	elif self.name == "5Trains":
		if map_index == 1:
			get_tree().change_scene_to_file("res://scenes/levels/5_trains/5_train_map_one.tscn")
		elif map_index == 2:
			get_tree().change_scene_to_file("res://scenes/levels/5_trains/5_train_map_two.tscn")
		elif map_index == 3:
			get_tree().change_scene_to_file("res://scenes/levels/5_trains/5_train_map_three.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/levels/5_trains/5_train_map_four.tscn")
	elif self.name == "6Trains":
		if map_index == 1:
			get_tree().change_scene_to_file("res://scenes/levels/6_trains/6_train_map_one.tscn")
		elif map_index == 2:
			get_tree().change_scene_to_file("res://scenes/levels/6_trains/6_train_map_two.tscn")
		elif map_index == 3:
			get_tree().change_scene_to_file("res://scenes/levels/6_trains/6_train_map_three.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/levels/6_trains/6_train_map_four.tscn")
	elif self.name == "7Trains":
		if map_index == 1:
			get_tree().change_scene_to_file("res://scenes/levels/7_trains/7_train_map_one.tscn")
		elif map_index == 2:
			get_tree().change_scene_to_file("res://scenes/levels/7_trains/7_train_map_two.tscn")
		elif map_index == 3:
			get_tree().change_scene_to_file("res://scenes/levels/7_trains/7_train_map_three.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/levels/7_trains/7_train_map_four.tscn")
	elif self.name == "8Trains":
		if map_index == 1:
			get_tree().change_scene_to_file("res://scenes/levels/8_trains/tile_map.tscn")
		elif map_index == 2:
			get_tree().change_scene_to_file("res://scenes/levels/8_trains/tile_map_2.tscn")
		elif map_index == 3:
			get_tree().change_scene_to_file("res://scenes/levels/8_trains/tile_map_3.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/levels/8_trains/tile_map_4.tscn")
	elif self.name == "9Trains":
		if map_index == 1:
			get_tree().change_scene_to_file("res://scenes/levels/9_trains/tile_map_5.tscn")
		elif map_index == 2:
			get_tree().change_scene_to_file("res://scenes/levels/9_trains/9_train_map_one.tscn")
		elif map_index == 3:
			get_tree().change_scene_to_file("res://scenes/levels/9_trains/9_train_map_two.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/levels/9_trains/9_train_map_three.tscn")
	elif self.name == "10Trains":
		if map_index == 1:
			get_tree().change_scene_to_file("res://scenes/levels/10_trains/10_train_map_one.tscn")
		elif map_index == 2:
			get_tree().change_scene_to_file("res://scenes/levels/10_trains/10_train_map_two.tscn")
		elif map_index == 3:
			get_tree().change_scene_to_file("res://scenes/levels/10_trains/10_train_map_three.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/levels/10_trains/10_train_map_four.tscn")
	elif self.name == "11Trains":
		if map_index == 1:
			get_tree().change_scene_to_file("res://scenes/levels/11_trains/11_train_map_one.tscn")
		elif map_index == 2:
			get_tree().change_scene_to_file("res://scenes/levels/11_trains/11_train_map_two.tscn")
		elif map_index == 3:
			get_tree().change_scene_to_file("res://scenes/levels/11_trains/11_train_map_three.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/levels/11_trains/11_train_map_four.tscn")
