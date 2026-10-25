extends Area2D

@onready var animated_sprite: AnimatedSprite2D = $"../AnimatedSprite2D"

func _input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var current_anim = animated_sprite.animation

			if current_anim == "H":
				animated_sprite.play("N")
			elif current_anim == "N":
				animated_sprite.play("O")
			elif current_anim == "O":
				animated_sprite.play("H")
