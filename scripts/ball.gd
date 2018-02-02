extends RigidBody2D

func _ready():
	set_contact_monitor(true)
	set_max_contacts_reported(3)
	connect("body_entered", self, "_on_body_enter")

func _on_body_enter(other):
	if other.is_in_group("icicle"):
		queue_free()