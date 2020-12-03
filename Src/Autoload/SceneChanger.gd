extends Node

var scenes = [
	load("res://Src/Scenes/InterpolationDemo2D.tscn"),
	load("res://Src/Scenes/InterpolationDemo3D.tscn"),
]
var scene_index := 0

func _on_Button_pressed() -> void:
	scene_index = (scene_index + 1) % 2
	get_tree().change_scene_to(scenes[scene_index])
