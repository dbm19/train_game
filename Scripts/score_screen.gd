extends Node2D

var end = false
var timer
var score_label
var score

# Called when the node enters the scene tree for the first time.
func _ready():
	timer = get_node("Timer")
	score_label = $Label2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func endTimer():
	timer.start()

func _on_timer_timeout():
	print("ok")
	score_label.text = str(score)
