extends RigidBody2D

func _ready():
	set_process(true)

func _process(delta):
	global.rot_ang = get_rotation_degrees()
	if Input.is_action_pressed("ui_left"):
		self.rotate(0.03)
	if Input.is_action_pressed("ui_right"):
			self.rotate(-0.03)
	pass