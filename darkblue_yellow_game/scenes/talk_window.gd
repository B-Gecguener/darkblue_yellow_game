extends Node2D

var pressed_num = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$canvas/text1.visible = false
	$canvas/text2.visible = false
	$canvas/text3.visible = false
	$canvas/continue_button.visible = false
	$canvas/continue_button/button.disabled = true

func _on_text_flow_button_button_down() -> void:
	pressed_num += 1
	if (pressed_num == 1):
		$canvas/text1.visible = true
	if (pressed_num == 2):
		$canvas/text2.visible = true
	if (pressed_num == 3):
		$canvas/text3.visible = true
	if (pressed_num == 4):
		$canvas/continue_button.visible = true
		$canvas/continue_button/button.disabled = false
