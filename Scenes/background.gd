extends TextureRect

var nextScene = load("res://Node2D.tscn")
func _ready():
	get_node("start").disabled = true

func _on_start_pressed():
	get_tree().change_scene_to(nextScene)
	


func _on_Timer_timeout():
	get_node("start").disabled = false
