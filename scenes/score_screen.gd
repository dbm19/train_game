extends Node2D
var label

# Called when the node enters the scene tree for the first time.
func _ready():
	label = get_node("Label2")
	label.text = str(GameSingleton.score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
