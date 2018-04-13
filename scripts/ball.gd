extends RigidBody2D

func _ready():
	add_to_group("player")
	set_contact_monitor(true)
	set_max_contacts_reported(3)
	connect("body_entered", self, "_on_body_enter")
	get_node("visibility").connect("screen_exited",self,"_on_Visibility_screen_exited")
	
func _on_body_enter(other):
	if other.is_in_group("icicle"):
		queue_free()
		get_tree().change_scene("res://stage/menu.tscn")
		
		
func _on_Visibility_screen_exited():
	get_tree().change_scene("res://stage/menu.tscn")