extends AudioStreamPlayer2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#Global.js_foc_unfoc()
	Global.connect('foc_unfoc',self,'_foc_unfoc')


func _foc_unfoc(value):
	if value=="foc":
		get_tree().paused=false
		AudioStreamPlayer2d.stream_paused=false
	elif value=="unfoc":
		get_tree().paused=true
		AudioStreamPlayer2d.stream_paused=true


func _on_AudioStreamPlayer2D_finished():
	$".".play()
