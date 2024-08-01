extends Node

var audioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	audioStreamPlayer = get_node("AudioStreamPlayer")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func play_sound():
	audioStreamPlayer.playing = true
