extends Node2D

func _process(_delta):
	timer()

func _on_map_timer_timeout() -> void:
	get_tree().quit()

func roundDigits(num,digits):
	return round(num*pow(10,digits))/pow(10,digits)

func timer():
	var timerRounded = str(roundDigits($mapTimer.time_left/60,2))
	var minutes = timerRounded.substr(0,2)
	var seconds = timerRounded.substr(3,5)
	var timeUnformatted = "%s:%s"
	var timeFormat = timeUnformatted % [minutes,seconds]
	$timerLabel.text = timeFormat
