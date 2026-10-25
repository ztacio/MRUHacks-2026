extends Node2D

@onready var animated_sprite: AnimatedSprite2D = $"../AnimatedSprite2D"

func _ready() -> void:
	animated_sprite.play("submit")


func _input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print(get_tree().current_scene.get_path())
			var character1 = get_node_or_null("/root/Textbox/Elements/E1/AnimatedSprite2D")
			var character2 = get_node_or_null("/root/Textbox/Elements/E2/AnimatedSprite2D")
			var character3 = get_node_or_null("/root/Textbox/Elements/E3/AnimatedSprite2D")
			var character4 = get_node_or_null("/root/Textbox/Elements/E4/AnimatedSprite2D")

			var character5 = get_node_or_null("/root/Textbox/Subscripts/S1/AnimatedSprite2D")
			var character6 = get_node_or_null("/root/Textbox/Subscripts/S2/AnimatedSprite2D")
			var character7 = get_node_or_null("/root/Textbox/Subscripts/S3/AnimatedSprite2D")
			var character8 = get_node_or_null("/root/Textbox/Subscripts/S4/AnimatedSprite2D")

			if character1.animation == "N" \
			and character2.animation == "H" \
			and character3.animation == "N" \
			and character4.animation == "O" \
			and character5.animation == "1" \
			and character6.animation == "4" \
			and character7.animation == "1" \
			and character8.animation == "3":
				animated_sprite.play("correct")
				await get_tree().create_timer(2).timeout
				get_tree().change_scene_to_file("res://farm.tscn")
				Global.has_fertilizer = true
			else:
				animated_sprite.play("wrong")
				await get_tree().create_timer(1.5).timeout
				animated_sprite.play("submit")
