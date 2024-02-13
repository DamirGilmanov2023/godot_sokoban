extends Node2D
var reklama=0
#---------------------------------

var callback_rewarded_ad = JavaScript.create_callback(self, '_rewarded_ad')
var callback_ad = JavaScript.create_callback(self, '_ad')
onready var win = JavaScript.get_interface("window")
func js_show_ad():
	win.ShowAd(callback_ad)

func js_show_rewarded_ad():
	win.ShowAdRewardedVideo(callback_rewarded_ad)

func _rewarded_ad(args):
	print(args[0])

func _ad(args):
	print(args[0])
	
#---------------------------------

signal foc_unfoc(value)
var callback_foc_unfoc=JavaScript.create_callback(self, '_foc_unfoc')

func js_foc_unfoc():
	win.foc_unfoc(callback_foc_unfoc)

func _foc_unfoc(args):
	print(args[0])
	emit_signal("foc_unfoc",args[0])
	
#---------------------------------

signal get_data(value)
var callback_get_data=JavaScript.create_callback(self,'_get_data')

func js_get_data():
	win.get_data(callback_get_data)

func _get_data(args):
	print(args[0])
	emit_signal("get_data",args[0])

#---------------------------------

func js_set_data(value):
	win.set_data(value)
