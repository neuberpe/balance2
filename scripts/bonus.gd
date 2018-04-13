extends RigidBody2D

func _ready():
	add_to_group("bonus")
	set_contact_monitor(true)
	set_max_contacts_reported(2)
	connect("body_entered", self, "_on_body_enter")
	set_process(true)

func _on_body_enter(other):
	if other.is_in_group("player"):
		global.points += 10
		queue_free()