extends Area2D

var rng = RandomNumberGenerator.new()

func _on_body_entered(body: CharacterBody2D) -> void:
	var state = rng.randi_range(1,4)
	if state == 1:
		#up
		body.global_position.x = InfiniteMap.playerCoordinates.x + rng.randf_range(-183,183)
		body.global_position.y = InfiniteMap.playerCoordinates.y - 101
	elif state == 2:
		#down
		body.global_position.x = InfiniteMap.playerCoordinates.x - rng.randf_range(-183,183)
		body.global_position.y = InfiniteMap.playerCoordinates.y + 101
	elif state == 3:
		#left
		body.global_position.y = InfiniteMap.playerCoordinates.y + rng.randf_range(-101,101)
		body.global_position.x = InfiniteMap.playerCoordinates.x - 183
	elif state == 4:
		#right
		body.global_position.y = InfiniteMap.playerCoordinates.y - rng.randf_range(-101,101)
		body.global_position.x = InfiniteMap.playerCoordinates.x + 183
