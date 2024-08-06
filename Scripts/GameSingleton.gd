extends Node2D

var timer
var score = 0
var train_count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	timer = get_node("Timer")
	train_count = 15
	score = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start_game():
	_ready()

func endTimer():
	timer.start()

func updateScore():
	score += 1

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/score_screen.tscn")
	SoundPlayer.backgroundChugSound.playing = false
