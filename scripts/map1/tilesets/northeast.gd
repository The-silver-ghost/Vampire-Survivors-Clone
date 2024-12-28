extends TileMapLayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position.x = InfiniteMap.northEastX
	position.y = InfiniteMap.northEastY
