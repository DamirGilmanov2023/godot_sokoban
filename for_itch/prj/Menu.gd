extends Node2D

func _on_change_pressed():
	var _err = get_tree().change_scene("res://lvl_select.tscn")





func _on_play_pressed():
	get_tree().change_scene("res://game.tscn")
