extends Node

var junctionSound
var menuSound
var backgroundChugSound
var failSound
var successSound
var background_ocean_sound

# Called when the node enters the scene tree for the first time.
func _ready():
	junctionSound = get_node("JunctionSound")
	menuSound = get_node("MenuSound")
	backgroundChugSound = get_node("BackgroundChugSound")
	failSound = get_node("FailSound")
	successSound = get_node("SuccessSound")
	background_ocean_sound = get_node("BackgroundOceanSound")
	play_background_ocean_sound()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func play_junction_sound():
	junctionSound.playing = true
	
func play_menu_sound():
	menuSound.playing = true

func play_chug_sound():
	backgroundChugSound.playing = true

func play_fail_sound():
	failSound.playing = true

func play_success_sound():
	successSound.playing = true

func play_background_ocean_sound():
	background_ocean_sound.playing = true

func _on_background_chug_sound_finished():
	play_chug_sound()

func _on_background_ocean_sound_finished():
	play_background_ocean_sound()
