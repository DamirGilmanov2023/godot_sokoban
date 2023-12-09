extends Area2D

var na_meste = false
var b=null


func _on_spot_body_entered(body):
	if body.is_in_group('box'):
		na_meste = true	
		b = body
			
	

func _on_spot_body_exited(body):
	if body.is_in_group('box'):
		na_meste = false
		b=null
		body.modulate = Color(1, 1, 1)
	
func _process(delta):
	if na_meste and b!=null:
		b.modulate = Color(0.184314, 0.309804, 0.309804, 1)

	
