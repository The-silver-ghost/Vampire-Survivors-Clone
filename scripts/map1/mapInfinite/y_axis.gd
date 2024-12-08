extends Node2D

func _process(_delta):
	coordinates()

func coordinates():
	if InfiniteMap.positionChange == false:
		position.x = InfiniteMap.playerCoordinates.x - 576
	elif (InfiniteMap.positionChange == true) and (InfiniteMap.up == true or InfiniteMap.down == true):
		position.y = InfiniteMap.playerCoordinates.y - 336
