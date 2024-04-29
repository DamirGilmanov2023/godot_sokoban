extends KinematicBody2D


onready var ray = $RayCast2D

var na_meste = false

var setka = 16
var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	'ui_left': Vector2.LEFT,
	'ui_right': Vector2.RIGHT
}

func move(dir):
	var vector_pos = inputs[dir] * setka
	ray.cast_to = vector_pos
	ray.force_raycast_update()
	if !ray.is_colliding():
		position += vector_pos
		return true
	return false




func _on_boxgr_tree_entered():
	pass # Replace with function body.
