extends Node2D

var rng = RandomNumberGenerator.new()
var spawn_rng = rng.randi_range(1, 6)
var current_spawn
var spawn
var train_index = 1
var trains = {
	"1": 0,
	"2": 0,
	"3": 0,
	"4": 0,
	"5": 0,
	"6": 0
}
var blue_train = preload("res://scenes/train_scenes/blue_train.tscn")
var yellow_train = preload("res://scenes/train_scenes/yellow_train.tscn")
var purple_train = preload("res://scenes/train_scenes/purple_train.tscn")
var orange_train = preload("res://scenes/train_scenes/orange_train.tscn")
var pink_train = preload("res://scenes/train_scenes/pink_train.tscn")
var silver_train = preload("res://scenes/train_scenes/silver_train.tscn")
var train_count = 10 

func _ready():
	spawn = get_node("Spawn")
	
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
	else:
		trains[train_index] = silver_train.instantiate()
	trains[train_index].position.x = spawn.position.x
	trains[train_index].position.y = spawn.position.y
	trains[train_index].scale.x = 1
	trains[train_index].scale.y = 1
	if train_index == 1:
		trains[train_index].add_to_group("train_index_1")
	elif train_index == 2:
		trains[train_index].add_to_group("train_index_2")
	elif train_index == 3:
		trains[train_index].add_to_group("train_index_3")
	elif train_index == 4:
		trains[train_index].add_to_group("train_index_4")
	elif train_index == 5:
		trains[train_index].add_to_group("train_index_5")
	else:
		trains[train_index].add_to_group("train_index_6")
	self.add_child(trains[train_index])

func _process(delta):
	pass
	
func _on_timer_timeout():
	train_count -= 1

	if train_count == 0:
		get_node("Timer").one_shot = true
	else:
		if train_index < 6:
			train_index += 1
		else:
			train_index = 1
			
		current_spawn = spawn_rng
		while spawn_rng == current_spawn:
			spawn_rng = rng.randi_range(1, 6)
			
		_ready()

	
