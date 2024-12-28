extends TileMapLayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position.x = InfiniteMap.middleX
	position.y = InfiniteMap.middleY
