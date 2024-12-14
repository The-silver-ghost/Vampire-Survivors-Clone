class_name enemySpawner
extends Node2D

var maxSpawnCount = 5
var enemyScene = preload("res://scenes/enemy/enemy_bat.tscn")
var spawn = false
var currentSpawnCount = 0

func spawnFunction():
	spawn = true
	var currentEnemy = enemyScene.instantiate()
	if (spawn == true) and (currentSpawnCount <= maxSpawnCount):
		currentSpawnCount += 1
		add_child(currentEnemy)
