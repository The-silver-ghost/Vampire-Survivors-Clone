extends TileMapLayer


func _process(_delta: float) -> void:
	position.x = InfiniteMap.southWestX
	position.y = InfiniteMap.southWestY
