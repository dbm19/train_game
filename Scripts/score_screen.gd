extends Node2D

var end = false
var timer
var score_label
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	timer = get_node("Timer")
	score_label = $Label2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(score)
	
func endTimer():
	timer.start()

func _on_timer_timeout():
	print(score)

