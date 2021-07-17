extends Node2D

var nextscene = load("res://demo8.tscn")
var backscene = load("res://demo6.tscn")
func _ready():
	$TextureRect/AnimationPlayer.play("demo7")
	get_node("back").disabled = true
	get_node("next").disabled = true



func _on_Timer_timeout():
	get_node("back").disabled = false
	get_node("next").disabled = false


func _on_next_pressed():
	get_tree().change_scene_to(nextscene)


func _on_back_pressed():
	get_tree().change_scene_to(backscene)
