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
	map_index = rng.randi_range(1, 5)
	if map_index == 1:
		get_tree().change_scene_to_file("res://scenes/levels/7_trains/7_train_map_one.tscn")
	elif map_index == 2:
		get_tree().change_scene_to_file("res://scenes/levels/7_trains/7_train_map_two.tscn")
	elif map_index == 3:
		get_tree().change_scene_to_file("res://scenes/levels/7_trains/7_train_map_three.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/levels/7_trains/7_train_map_four.tscn")
