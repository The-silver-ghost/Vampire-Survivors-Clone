extends enemyTeleporter

func _process(_delta):
	movement()

func movement():
	global_position = InfiniteMap.playerCoordinates


func _on_area_2d_body_entered(body:CharacterBody2D):
	randomCoordinates(body)
