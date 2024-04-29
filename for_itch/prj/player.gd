extends KinematicBody2D

onready var ray = $RayCast2D

var setka = 16
var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	'ui_left': Vector2.LEFT,
	'ui_right': Vector2.RIGHT
}

func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)
			
func move(dir):
	var game =  get_parent()
	var vector_pos = inputs[dir] * setka
	ray.cast_to = vector_pos
	ray.force_raycast_update()
	if !ray.is_colliding():
		position += vector_pos
		game.moves +=1
	else:
		var collider = ray.get_collider()
		if collider.is_in_group('box'):
			if collider.move(dir):
				position += vector_pos
				game.moves +=1
	
	
	
func _process(delta):
		
	if Input.is_action_pressed("ui_right"):
		$player.play("right")
		
	
	if Input.is_action_pressed("ui_left"):
		
		$player.play("left")
		
	
	if Input.is_action_pressed("ui_up"):
		
		$player.play("up")
	if Input.is_action_pressed("ui_down"):
		
		$player.play("down")
		
		
	if Input.is_action_just_released("ui_up") or \
		Input.is_action_just_released("ui_down") or \
		Input.is_action_just_released("ui_left") or \
		Input.is_action_just_released("ui_right"):
			$player.stop()
			$player.frame = 0

