extends VehicleBody3D

@export var enginer_power: float = 900.0
@export var steer_limit: float = 0.4

func _physics_process(delta: float) -> void:
	# Steering
	var steer_input = Input.get_axis("steer_right", "steer_left")
	steering = lerp(steering, steer_input * steer_limit, delta * 5.0)
	
	# Power
	if Input.is_action_just_pressed("accelerate"):
		engine_force = enginer_power
	else:
		engine_force = 0.0
	
	#Braking
	if Input.is_action_just_pressed("brake"):
		brake = 30.0
	else
		brake = 0.0
