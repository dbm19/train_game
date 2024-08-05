extends Node2D

var rng = RandomNumberGenerator.new()
var spawn_rng 
var current_spawn
var spawn
var spawn_orientation
var train_index = 1
var train_total = 8
var trains = {
	"1": 0,
	"2": 0,
	"3": 0,
	"4": 0,
	"5": 0,
	"6": 0,
	"7": 0,
	"8": 0,
	"9": 0,
	"10": 0
}
var blue_train = preload("res://scenes/trains/blue_train.tscn")
var yellow_train = preload("res://scenes/trains/yellow_train.tscn")
var purple_train = preload("res://scenes/trains/purple_train.tscn")
var orange_train = preload("res://scenes/trains/orange_train.tscn")
var pink_train = preload("res://scenes/trains/pink_train.tscn")
var silver_train = preload("res://scenes/trains/silver_train.tscn")
var red_train = preload("res://scenes/trains/red_train.tscn")
var green_train = preload("res://scenes/trains/green_train.tscn")
var black_train = preload("res://scenes/trains/black_train.tscn")
var white_train = preload("res://scenes/trains/white_train.tscn")
var train_count = 15
var random_numbers_index = 0
var random_numbers = []

func _ready():
	spawn = get_node("Spawn")
	
	if self.has_node("TileMapThreeTrains"):
		for n in range(1, 4):
			random_numbers.append(n)
	elif self.has_node("TileMapFourTrains"):
		for n in range(1, 5):
			random_numbers.append(n)
	elif self.has_node("TileMapFiveTrains"):
		for n in range(1, 6):
			random_numbers.append(n)
	elif self.has_node("TileMapSixTrains"):
		for n in range(1, 7):
			random_numbers.append(n)
	elif self.has_node("TileMapSevenTrains"):
		for n in range(1, 8):
			random_numbers.append(n)
	elif self.has_node("TileMapEightTrains"):
		for n in range(1, 9):
			random_numbers.append(n)
	elif self.has_node("TileMapNineTrains"):
		for n in range(1, 10):
			random_numbers.append(n)
	else:
		for n in range(1, 11):
			random_numbers.append(n)
	_spawn()

func _process(delta):
	pass

func _on_timer_timeout():
	train_count -= 1

	if train_count == 2:
		get_node("Timer").one_shot = true
	else:
		if train_index < 9:
			train_index += 1
		else:
			train_index = 1
			
	_spawn()

func _spawn():
	if random_numbers_index == 0:
		random_numbers.shuffle()
		
	if random_numbers_index < random_numbers.size():
		spawn_rng = random_numbers[random_numbers_index]
		random_numbers_index += 1
	else:
		random_numbers_index = 0
	
	if spawn_rng == 1:
		trains[train_index] = blue_train.instantiate()
	elif spawn_rng == 2:
		trains[train_index] = yellow_train.instantiate()
	elif spawn_rng == 3:
		trains[train_index] = purple_train.instantiate()
	elif spawn_rng == 4:
		trains[train_index] = orange_train.instantiate()
	elif spawn_rng == 5:
		trains[train_index] = pink_train.instantiate()
	elif spawn_rng == 6:
		trains[train_index] = silver_train.instantiate()
	elif spawn_rng == 7:
		trains[train_index] = red_train.instantiate()
	elif spawn_rng == 8:
		trains[train_index] = green_train.instantiate()
	elif spawn_rng == 9:
		trains[train_index] = black_train.instantiate()
	else:
		trains[train_index] = white_train.instantiate()
	
	trains[train_index].position.x = spawn.position.x
	trains[train_index].position.y = spawn.position.y
	trains[train_index].scale.x = 1
	trains[train_index].scale.y = 1

	self.add_child(trains[train_index])

func _on_timeout():
	get_tree().change_scene_to_file("res://scenes/score_screen.tscn")
