extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	$"Stage 2".visible = false
	$"Stage 3".visible = false
	
	if Global.stage2complete:
		$"Stage 2".visible = true
	if Global.stage3complete:
		$"Stage 3".visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_interaction_area_body_entered(body: Node2D) -> void:
	print("something entered the tree area!")
	print(body.name)
	if body.name == "Farmer":
		if Global.has_watering_can:
			$"Stage 2".visible = true
			Global.stage2complete = true
		if Global.has_fertilizer:
			$"Stage 3".visible = true
			Global.stage3complete = true
			
		
