extends Area2D

@onready var animated_sprite: AnimatedSprite2D = $"../AnimatedSprite2D"

func _input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var current_anim = animated_sprite.animation

			if current_anim == "1":
				animated_sprite.play("2")
			elif current_anim == "2":
				animated_sprite.play("3")
			elif current_anim == "3":
				animated_sprite.play("4")
			elif current_anim == "4":
				animated_sprite.play("1")
