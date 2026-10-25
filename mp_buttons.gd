extends Area2D

@onready var animated_sprite: AnimatedSprite2D = $"../AnimatedSprite2D"

func _input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var current_anim = animated_sprite.animation

			if current_anim == "A":
				animated_sprite.play("B")
			elif current_anim == "B":
				animated_sprite.play("C")
			elif current_anim == "C":
				animated_sprite.play("A")
