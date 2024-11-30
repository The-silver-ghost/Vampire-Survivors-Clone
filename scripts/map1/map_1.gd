extends Node2D

var minute1 = 0
var minute2 = 0
var second1 = 0
var second2 = 0



func _on_map_timer_timeout() -> void:
	second2 += 1

func mapTime():
	if second2 == 10:
		second1 +=1
		second2 = 0
	elif second1 == 6:
		minute2 += 1
		second1 = 0
	elif minute2 == 10:
		minute1 += 1
		minute2=0
	elif minute1 == 3:
		get_tree().quit()

func _process(_delta):
	mapTime()
	print(minute1,minute2,second1,second2)
