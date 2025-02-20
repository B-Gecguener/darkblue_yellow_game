extends Node2D

signal switch_room(pos)
signal camera_change(next_cam)

func _ready() -> void:
	$room1/Camera2D.make_current()
	
func _on_room_3_return_door_body_entered(body: Node2D) -> void:
	switch_room.emit($room3/room3_return_door/room2_marker.global_position)
	$room2/Camera2D.make_current()


func _on_room_3_next_room_door_body_entered(body: Node2D) -> void:
	switch_room.emit($room3/room3_next_door/room4_marker.global_position)
	$room4/Camera2D.make_current()


func _on_room_2_next_door_body_entered(body: Node2D) -> void:
	switch_room.emit($room2/room2_next_door/room3_player_pos.global_position)
	$room3/Camera2D.make_current()
	$room3.room_entered()
	

func _on_room_2_return_door_body_entered(body: Node2D) -> void:
	switch_room.emit($room2/room2_return_door/room1_player_pos.global_position)
	$room1/Camera2D.make_current()


func _on_room_1_next_room_door_body_entered(body: Node2D) -> void:
	switch_room.emit($room1/room1_next_room_door/room2_player_pos.global_position)
	$room2/Camera2D.make_current()


func _on_room_5_return_door_body_entered(body: Node2D) -> void:
	switch_room.emit($room5/room5_return_door/room4_marker.global_position)
	$room4/Camera2D.make_current()


func _on_room_4_next_door_body_entered(body: Node2D) -> void:
	switch_room.emit($room4/room4_next_door/room5_pos.global_position)
	$room5/Camera2D.make_current()


func _on_room_4_return_door_body_entered(body: Node2D) -> void:
	switch_room.emit($room4/room4_return_door/room3_pos.global_position)
	$room3/Camera2D.make_current()
