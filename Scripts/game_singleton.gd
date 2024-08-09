extends Node2D

var timer
var score = 0
var train_count = 0
var music

# Called when the node enters the scene tree for the first time.
func _ready():
	timer = get_node("Timer")
	train_count = 15
	score = 0
	music = get_node("BackgroundMusic")
	#music.playing = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start_game():
	_ready()

func end_timer():
	timer.start()

func update_score():
	score += 1

func _on_timer_timeout():
	print("end")
	get_tree().change_scene_to_file("res://scenes/menu/score_screen.tscn")
	SoundSingleton.background_chug_sound.playing = false


func _on_background_music_finished():
	music.playing = true
