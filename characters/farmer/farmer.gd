extends CharacterBody2D

var character_direction: Vector2 #this initializes character direcction as a vector of x and y
@export var character_speed := 80 #this creates a variable that we can see on the inspector
@export var has_watering_can = false
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D #easily change animation by referencing it with a variable

func _ready() -> void:
	animated_sprite_2d.play("idle_down") #initial animation on start

func _physics_process(delta: float) -> void:

	character_direction.x = Input.get_axis("ui_left", "ui_right")
	character_direction.y = Input.get_axis("ui_up", "ui_down")
	character_direction = character_direction.normalized() # prevents moving faster when going diagonally

	if character_direction != Vector2.ZERO:
		velocity = character_direction * character_speed

		if abs(character_direction.x) > abs(character_direction.y):
			if character_direction.x < 0:
				animated_sprite_2d.play("walk_left")
			else:
				animated_sprite_2d.play("walk_right")
		else:
			if character_direction.y < 0:
				animated_sprite_2d.play("walk_up")
			else:
				animated_sprite_2d.play("walk_down")

	else:
		velocity = Vector2.ZERO

			# idle based on last animation
		if animated_sprite_2d.animation == "walk_left":
			animated_sprite_2d.play("idle_left")
		elif animated_sprite_2d.animation == "walk_right":
			animated_sprite_2d.play("idle_right")
		elif animated_sprite_2d.animation == "walk_up":
			animated_sprite_2d.play("idle_up")
		elif animated_sprite_2d.animation == "walk_down":
			animated_sprite_2d.play("idle_down")

	move_and_slide()
