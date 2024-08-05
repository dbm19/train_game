extends Node

var junctionSound
var menuSound

# Called when the node enters the scene tree for the first time.
func _ready():
	junctionSound = get_node("JunctionSound")
	menuSound = get_node("MenuSound")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func play_junction_sound():
	junctionSound.playing = true
	
func play_menu_sound():
	menuSound.playing = true
