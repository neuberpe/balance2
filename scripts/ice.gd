extends RigidBody2D

func _ready():
	add_to_group("icicle")
	set_contact_monitor(true)
	set_max_contacts_reported(2)
	connect("body_entered", self, "_on_body_enter")

func _on_body_enter(other):
	queue_free()