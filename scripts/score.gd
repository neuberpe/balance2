extends Label

var score = 0

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	score = get_node("../bonus_spawner").points
	set_text(str(score))