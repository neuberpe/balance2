extends Label

var score = 0

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	score = global.points
	set_text(str(score))