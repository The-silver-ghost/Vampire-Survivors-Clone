class_name enemySpawner
extends Node2D

var maxSpawnCount = 2
var currentEnemyScene = EnemyScenes.batScene
var spawn = false
var currentSpawnCount = 0

func spawnFunction():
	spawn = true
	var currentEnemy = currentEnemyScene.instantiate()
	if (spawn == true) and (currentSpawnCount <= maxSpawnCount):
		currentSpawnCount += 1
		add_child(currentEnemy)
