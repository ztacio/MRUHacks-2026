extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$message1.visible = true
	$message4.visible = false
	$message7.visible = false
	
	if Global.m1play:
		$message1.visible = false
	if Global.m4play:
		$message4.visible = false
	if Global.m7play:
		$message7.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept") and $message1.visible == true and Global.m1play == false:
		$message1.visible = false
		Global.m1play = true
		
	if Global.stage2complete and Global.m4play == false:
		$message4.visible = true
		Global.m4play = true
		
	if Input.is_action_just_pressed("ui_accept") and $message4.visible == true:
		$message4.visible = false
		Global.m4play = true
		
	if Global.stage3complete and Global.m7play == false:
		$message7.visible = true
		Global.m7play = true 
		
	if Input.is_action_just_pressed("ui_accept") and $message7.visible == true:
		$message7.visible = false
		Global.m7play = true
		
		
		
