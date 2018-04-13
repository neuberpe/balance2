extends Node

var points = 0
var rot_ang = 0

func _ready():
	set_process(true)
	pass

func _process(delta):
	if rot_ang == 180:
		points =+ 50
		rot_ang = 0
	if rot_ang == -180:
		points =+ 50
		rot_ang = 0
	pass
	
#http://freemusicarchive.org/music/Tri-Tachyon/Little_Lily_Swing/Tri-Tachyon_-_01_-_Little_Lily_Swing