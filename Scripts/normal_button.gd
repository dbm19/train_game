extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	SoundSingleton.play_menu_sound()
	if self.name == "NormalButton":
		get_tree().change_scene_to_file("res://scenes/menu/normal_train_select_menu.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/menu/hard_train_select_menu.tscn")


func _on_mouse_entered():
	if self.name == "NormalButton":
		icon = load("res://art_assets/normal_button_hovered.png")
	else:
		icon = load("res://art_assets/hard_button_hovered.png")

func _on_mouse_exited():
	if self.name == "NormalButton":
		icon = load("res://art_assets/normal_button.png")
	else:
		icon = load("res://art_assets/hard_button.png")
