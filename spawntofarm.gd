extends Area2D

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
		var current_path: String = get_tree().current_scene.scene_file_path
	
		if current_path == "res://farm.tscn":
			get_tree().change_scene_to_file("res://spawn.tscn")
		else:
			get_tree().change_scene_to_file("res://farm.tscn")
