extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.reklama==0:
		Global.js_show_ad()
		Global.reklama+=1
	Global.js_foc_unfoc()
	Global.connect('get_data',self,'_get_data')


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _get_data(value):
	var v=str(value)
	if v=="Null":
		get_tree().change_scene("res://game.tscn")
	else:
		get_tree().change_scene("res://"+v+".tscn")

func _on_play_pressed():
	#var _err = get_tree().change_scene("res://game.tscn")
	Global.js_get_data()

func _on_change_pressed():
	var _err = get_tree().change_scene("res://lvl_select.tscn")



