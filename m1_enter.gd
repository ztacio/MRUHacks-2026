extends Node2D

@onready var animated_sprite: AnimatedSprite2D = $"../AnimatedSprite2D"

func _ready() -> void:
	animated_sprite.play("submit")


func _input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var character1 = get_node_or_null("/root/Textbox/Q1/AnimatedSprite2D")
			var character2 = get_node_or_null("/root/Textbox/Q2/AnimatedSprite2D")
			var character3 = get_node_or_null("/root/Textbox/Q3/AnimatedSprite2D")


			if character1.animation == "A" \
			and character2.animation == "B" \
			and character3.animation == "C" :
				animated_sprite.play("correct")
			else:
				animated_sprite.play("wrong")
				await get_tree().create_timer(1.5).timeout
				animated_sprite.play("submit")
