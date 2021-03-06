extends KinematicBody2D

export(float) var amplitude := 500.0
export(float) var frequency := 3.0

var velocity: Vector2
var time: float

func _physics_process(delta: float) -> void:
	time += delta
	velocity = Vector2.RIGHT * amplitude * cos(frequency * time)
	velocity = move_and_slide(velocity)
	
	# RUN THIS FUNCTION ONLY AFTER ALL MOVEMENT CODE !!!
	$Interpolation2D.copy_current_transform()
