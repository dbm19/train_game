extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_viewport_rect().size.x / 2)
	print(get_viewport_rect().size.y / 2)

	#self.position.x = get_viewport_rect().size.x / 2
	#self.position.y = get_viewport_rect().size.y / 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass