extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	SoundSingleton.play_menu_sound()
	get_tree().change_scene_to_file("res://scenes/tile_map_easy.tscn")

func _on_mouse_entered():
	icon = load("res://art_assets/begin_practice_button_hovered.png")

func _on_mouse_exited():
	icon = load("res://art_assets/begin_practice_button_shadow.png")
