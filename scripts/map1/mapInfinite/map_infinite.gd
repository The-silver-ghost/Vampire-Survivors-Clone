extends Node2D

func _process(_delta):
	#positionUpdate()
	pass

#enter area
func _on_area_left_body_entered(body:CharacterBody2D):
	InfiniteMap.left = true
	InfiniteMap.positionChange = true
	InfiniteMap.xAxis -= 1


func _on_area_right_body_entered(body:CharacterBody2D):
	InfiniteMap.right = true
	InfiniteMap.positionChange = true
	InfiniteMap.xAxis += 1


func _on_area_up_body_entered(body:CharacterBody2D):
	InfiniteMap.up = true
	InfiniteMap.positionChange = true
	InfiniteMap.yAxis -= 1


func _on_area_down_body_entered(body:CharacterBody2D):
	InfiniteMap.down = true
	InfiniteMap.positionChange = true
	InfiniteMap.yAxis +=1


#exit area
func _on_area_left_body_exited(body: Node2D) -> void:
	InfiniteMap.left = false
	InfiniteMap.positionChange = false


func _on_area_right_body_exited(body: Node2D) -> void:
	InfiniteMap.right = false
	InfiniteMap.positionChange = false


func _on_area_up_body_exited(body: Node2D) -> void:
	InfiniteMap.up = false
	InfiniteMap.positionChange = false


func _on_area_down_body_exited(body: Node2D) -> void:
	InfiniteMap.down = false
	InfiniteMap.positionChange = false

'''func positionUpdate():
	if InfiniteMap.positionChange == true:
		position = InfiniteMap.playerCoordinates
'''
