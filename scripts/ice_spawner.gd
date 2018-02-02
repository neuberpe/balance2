extends Node

const icicle = preload("res://scenes/ice.tscn")
var counter = 0
export var cooldown = 3.0

func _ready():
	spawn()
	set_process(true)
	pass

func _process(delta):
	counter += delta
	if counter > cooldown:
		spawn()
		counter = 0

func spawn():
	randomize()
	var ice = icicle.instance()
	var pos = Vector2()
	pos.x = rand_range(0+14,164)
	pos.y = 0-8
	ice.position=pos
	self.add_child(ice)
	pass