extends Node2D
var label
var label2

# Called when the node enters the scene tree for the first time.
func _ready():
	label = get_node("CanvasLayer/VBoxContainer/Label1")
	label2 = get_node("CanvasLayer/VBoxContainer/Label2")
	label.text = str(GameSingleton.score) + " / 15"
	
	if GameSingleton.score == 15:
		add_nice_label()
	elif (GameSingleton.score >= 0 && GameSingleton.score < 6) :
		add_never_give_up_label()
	elif (GameSingleton.score >= 6 && GameSingleton.score < 11) :
		add_improvement_label()
	else:
		add_perfection_is_near_label()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_nice_label():
	label2.text = "Nice one"

func add_never_give_up_label():
	label2.text = "Never give up"

func add_improvement_label():
	label2.text = "Improvement is inevitable"

func add_perfection_is_near_label():
	label2.text = "Perfection is near"
