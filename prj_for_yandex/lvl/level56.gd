extends Node2D
var game_end = false
var moves = 0

func _ready():
	Global.js_set_data("game")

#func _process(delta):
#	$move.text = 'Шаги: ' + str(moves)
#	if game_end == false:
#		var spots = $spots.get_child_count()
#		for i in $spots.get_children():
#			if i.na_meste:
#				spots -= 1
				
				
#		if spots == 0:
#			#$AcceptDialog.popup()
#			var _err = get_tree().change_scene("res://lvl/level56.tscn")
#			game_end = true


func _on_btn_home_pressed():
	var _err = get_tree().change_scene("res://Menu.tscn")
