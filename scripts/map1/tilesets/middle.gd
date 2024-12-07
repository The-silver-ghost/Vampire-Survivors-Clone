extends TileMapLayer

func _process(_delta):
	updateCoordinates()

func updateCoordinates():
	position = PlayerCoordinates.playerCoordinates
