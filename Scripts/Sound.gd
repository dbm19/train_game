extends Node

var junction_sound
var menu_sound
var background_chug_sound
var fail_sound
var success_sound
var background_ocean_sound

# Called when the node enters the scene tree for the first time.
func _ready():
	junction_sound = get_node("JunctionSound")
	menu_sound = get_node("MenuSound")
	background_chug_sound = get_node("BackgroundChugSound")
	fail_sound = get_node("FailSound")
	success_sound = get_node("SuccessSound")
	background_ocean_sound = get_node("BackgroundOceanSound")
	play_background_ocean_sound()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func play_junction_sound():
	junction_sound.playing = true
	
func play_menu_sound():
	menu_sound.playing = true

func play_chug_sound():
	background_chug_sound.playing = true

func play_fail_sound():
	fail_sound.playing = true

func play_success_sound():
	success_sound.playing = true

func play_background_ocean_sound():
	background_ocean_sound.playing = true

func _on_background_chug_sound_finished():
	play_chug_sound()

func _on_background_ocean_sound_finished():
	play_background_ocean_sound()
