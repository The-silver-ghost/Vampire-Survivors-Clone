class_name enemy
extends Node2D

var health = 2
var speed = 100
var dmg = 1
@onready var spriteDirection = $AnimatedSprite2D

func movement():
	position.x += (InfiniteMap.playerCoordinates.x - position.x)/speed
	position.y += (InfiniteMap.playerCoordinates.y - position.y)/speed

func takeDamage():
	pass

func dealDamage():
	pass

func death():
	pass

func animation():
	if (InfiniteMap.playerCoordinates.x - position.x >= 0):
		spriteDirection.flip_h = true
	elif (InfiniteMap.playerCoordinates.x - position.x < 0):
		spriteDirection.flip_h = false
	else:
		spriteDirection.flip_h = false
