extends TileMapLayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x = InfiniteMap.southEastX
	position.y = InfiniteMap.southEastY