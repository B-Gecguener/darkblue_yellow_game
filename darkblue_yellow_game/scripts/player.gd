extends CharacterBody2D

signal hit
@export var speed = 200

func _physics_process(delta: float) -> void:
	get_input()
	
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	if velocity.x != 0:
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_v = false
		# See the note below about the following boolean assignment.
		$AnimatedSprite2D.flip_h = velocity.x < 0
		
	move_and_slide()
	#print(position)
	
func get_input():
	var input_dir = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_dir * speed


func _door_entered_go_next_room(pos):
	position = pos
