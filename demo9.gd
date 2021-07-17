extends Node2D

var backscene = load("res://demo8.tscn")
func _ready():
	$TextureRect/TextureRect2/AnimationPlayer.play("demo9")
	get_node("back").disabled = true
	



func _on_Timer_timeout():
	get_node("back").disabled = false


func _on_next_pressed():
	get_tree().change_scene_to(backscene)
