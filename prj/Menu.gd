extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_play_pressed():
	var _err = get_tree().change_scene("res://game.tscn")


func _on_change_pressed():
	var _err = get_tree().change_scene("res://lvl_select.tscn")


func _on_exit_pressed():
	get_tree().quit()
