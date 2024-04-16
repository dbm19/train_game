extends Node2D

var rng = RandomNumberGenerator.new()
var spawn_rng
var train_index = 1
var trains = {
	"1": 0,
	"2": 0,
	"3": 0
}
var blue_train = preload("res://blue_train.tscn")
var yellow_train = preload("res://yellow_train.tscn")
var purple_train = preload("res://purple_train.tscn")

func _ready():
	if spawn_rng == 1:
		trains[train_index] = blue_train.instantiate()
	elif spawn_rng == 2:
		trains[train_index] = yellow_train.instantiate()
	else:
		trains[train_index] = purple_train.instantiate()
	trains[train_index].position.x = 35
	trains[train_index].position.y = 0
	trains[train_index].scale.x = 1
	trains[train_index].scale.y = 1
	if train_index == 1:
		trains[train_index].add_to_group("train_index_1")
	elif train_index == 2:
		trains[train_index].add_to_group("train_index_2")
	else:
		trains[train_index].add_to_group("train_index_3")
	self.add_child(trains[train_index])

func _process(delta):
	pass
	
func _on_timer_timeout():
	if train_index < 3:
		train_index += 1
	else:
		train_index = 1
	
	if spawn_rng == 1:
		spawn_rng = rng.randi_range(2.0, 3.0)
	elif spawn_rng == 2:
		spawn_rng = rng.randi_range(1.0, 3.0)
	else:
		spawn_rng = rng.randi_range(1.0, 2.0)
		
	_ready()
	
	
