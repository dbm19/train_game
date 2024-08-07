extends Area2D

const speed = 55
var velocity: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity * delta

func go_up():
	velocity = Vector2(0, -speed)
	if get_groups()[0] == "colour_train_blue":
		get_node("Sprite2D").texture = load("res://art_assets/blue_train_up.png")
	elif get_groups()[0] == "colour_train_yellow":
		get_node("Sprite2D").texture = load("res://art_assets/yellow_train_up.png")
	elif get_groups()[0] == "colour_train_purple":
		get_node("Sprite2D").texture = load("res://art_assets/purple_train_up.png")

func go_down():
	velocity = Vector2(0, speed)
	if get_groups()[0] == "colour_train_blue":
		get_node("Sprite2D").texture = load("res://art_assets/blue_train_down.png")
	elif get_groups()[0] == "colour_train_yellow":
		get_node("Sprite2D").texture = load("res://art_assets/yellow_train_down.png")
	elif get_groups()[0] == "colour_train_purple":
		get_node("Sprite2D").texture = load("res://art_assets/purple_train_down.png")

func go_right():
	velocity = Vector2(speed, 0)
	if get_groups()[0] == "colour_train_blue":
		get_node("Sprite2D").texture = load("res://art_assets/blue_train_right.png")
	elif get_groups()[0] == "colour_train_yellow":
		get_node("Sprite2D").texture = load("res://art_assets/yellow_train_right.png")
	elif get_groups()[0] == "colour_train_purple":
		get_node("Sprite2D").texture = load("res://art_assets/purple_train_right.png")

func go_left():
	velocity = Vector2(-speed, 0) 
	if get_groups()[0] == "colour_train_blue":
		get_node("Sprite2D").texture = load("res://art_assets/blue_train_left.png")
	elif get_groups()[0] == "colour_train_yellow":
		get_node("Sprite2D").texture = load("res://art_assets/yellow_train_left.png")
	elif get_groups()[0] == "colour_train_purple":
		get_node("Sprite2D").texture = load("res://art_assets/purple_train_left.png")

func _on_area_entered(area):
	if area.is_in_group("spawn_up"):
		go_up()
	elif area.is_in_group("spawn_down"):
		go_down()
	elif area.is_in_group("spawn_left"):
		go_left()
	elif area.is_in_group("spawn_right"):
		go_right()
