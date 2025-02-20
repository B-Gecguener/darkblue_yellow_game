extends Node2D

var last_room_camera
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _small_ring1_body_entered(body: Node2D) -> void:
	last_room_camera = get_viewport().get_camera_2d()
	$popup_window/Camera2D.make_current()
	$popup_window/canvas/enemy.play("small_coin_idle")
	$popup_window.set_enemy_type($small_ring1)
	

func _on_talk_button_pressed() -> void:
	$talk_window/Camera2D.make_current()
	
	
func _on_continue_button_pressed() -> void:
	last_room_camera.make_current()
