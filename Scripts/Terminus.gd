extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area):
	GameSingleton.train_count -= 1
	print(GameSingleton.train_count)
	print(GameSingleton.score)
	
	if area.get_groups()[0] == "colour_train_blue" && get_groups()[0] == "colour_blue_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_yellow" && get_groups()[0] == "colour_yellow_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_purple" && get_groups()[0] == "colour_purple_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_orange" && get_groups()[0] == "colour_orange_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_pink" && get_groups()[0] == "colour_pink_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_silver" && get_groups()[0] == "colour_silver_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_red" && get_groups()[0] == "colour_red_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_green" && get_groups()[0] == "colour_green_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_black" && get_groups()[0] == "colour_black_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_white" && get_groups()[0] == "colour_white_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	elif area.get_groups()[0] == "colour_train_brown" && get_groups()[0] == "colour_brown_terminus":
		get_tree().call_group("score", "_update_score")
		GameSingleton.update_score()
		SoundSingleton.play_success_sound()
	else:
		SoundSingleton.play_fail_sound()
	
	if GameSingleton.train_count == 0:
		print("ayy")
		GameSingleton.end_timer()
	area.queue_free()

