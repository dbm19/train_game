extends Node2D
var label
var label2

# Called when the node enters the scene tree for the first time.
func _ready():
	label = get_node("VBoxContainer/Label1")
	label2 = get_node("VBoxContainer/Label2")
	label.text = str(GameSingleton.score) + " / 15"
	
	if GameSingleton.score == 15:
		add_nice_label()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_nice_label():
	label2.text = "Nice one"
