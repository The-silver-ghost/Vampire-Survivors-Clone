extends TileMapLayer


func _process(delta: float) -> void:
	position.x = InfiniteMap.southWestX
	position.y = InfiniteMap.southWestY
