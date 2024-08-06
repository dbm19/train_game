extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	SoundSingleton.play_menu_sound()
	SoundSingleton.background_chug_sound.playing = false
	get_tree().change_scene_to_file("res://scenes/menu/new_main_menu.tscn")
