extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"Stage 2".visible = false
	$"Stage 3".visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_interaction_area_body_entered(body: Node2D) -> void:
	if body.name == "Farmer":
		if Global.has_watering_can:
			$"Stage 2".visible = true
		if Global.has_fertilizer:
			$"Stage 3".visible = true
			
		
