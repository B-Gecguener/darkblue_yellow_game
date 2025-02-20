extends Node2D

func _ready() -> void:
	set_process(false)
	

func _process(delta: float) -> void:
	if ($speech_bubble_timer.time_left < 8):
		$entities/skelly_speech.show()
			
	if ($speech_bubble_timer.time_left < 6):
		$entities/slime_speech.show()
	
	if ($speech_bubble_timer.time_left < 5):
		$entities/skelly_speech.hide()
	
	if ($speech_bubble_timer.time_left < 3):
		$entities/slime_speech.hide()
		
	if ($speech_bubble_timer.time_left <= 1):
		$speech_bubble_timer.stop()
		set_process(false)
		
	
func room_entered():
	$speech_bubble_timer.start(10)
	$entities/skelly_speech.hide()
	$entities/slime_speech.hide()
	set_process(true)
