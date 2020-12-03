extends KinematicBody

export(float) var amplitude := 15.0
export(float) var frequency := 3.0

var velocity: Vector3
var time: float

func _physics_process(delta: float) -> void:
	time += delta
	velocity = Vector3.RIGHT * amplitude * cos(frequency * time)
	velocity = move_and_slide(velocity)
	pass
