extends Area2D

func _on_body_entered(body: Node2D) -> void:
		var current_path = get_tree().current_scene.scene_file_path
	
		if current_path == "res://river.tscn":
			get_tree().change_scene_to_file("res://spawn.tscn")
			if body.has_node("AnimatedSprite2D"):
				body.get_node("AnimatedSprite2D").play("idle_up")
		else:
			get_tree().change_scene_to_file("res://river.tscn")
