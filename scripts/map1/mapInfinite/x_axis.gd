extends Node2D

func _process(_delta):
	coordinates()

func coordinates():
	if InfiniteMap.positionChange == false:
		position.y = InfiniteMap.playerCoordinates.y - 336
	elif (InfiniteMap.positionChange == true) and (InfiniteMap.left == true or InfiniteMap.right == true):
		position.x = InfiniteMap.playerCoordinates.x - 576
