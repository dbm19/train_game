extends Label

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _update_score():
	score += 1
	text = str(score)
	ScoreScreen.score = score
