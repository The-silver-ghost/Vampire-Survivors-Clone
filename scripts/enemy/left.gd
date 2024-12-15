extends CollisionPolygon2D

func _process(_delta):
	movement()

func movement():
	global_position.x = InfiniteMap.playerCoordinates.x - 200
	global_position.y = InfiniteMap.playerCoordinates.y
