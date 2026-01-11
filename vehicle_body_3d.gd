extends VehicleBody3D

@export var engine_power: float = 1000.0
@export var brake_power: float = 30.0
@export var steer_angle: float = 0.5

func _physics_process(delta: float) -> void:
	# Steering: Returns -0.5 (left), 0.5 (right) or 0 (none)
	steering = Input.get_axis("steer_right","steer_left") * steer_angle
	
	# Acceleration: Applies power when W is pressed
	engine_force = Input.get_action_strength("accelerate") * engine_power
	
	# Braking: Applies brake when S is pressed
	brake = Input.get_action_strength("brake") * brake_power
