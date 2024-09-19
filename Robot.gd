extends CharacterBody2D

@export var move_velocity : float
@export var velocity_m : Velocity
@export var grabber : Node2D
var move_direction : Vector2
var last_move_direction : Vector2

var body_under_robot : Node2D
var picked_up : bool

func _physics_process(delta):
	if Input.is_action_pressed("Up"):
		move_direction.y = -1
	if Input.is_action_pressed("Left"):
		move_direction.x = -1
	if Input.is_action_pressed("Right"):
		move_direction.x = 1
	if  Input.is_action_pressed("Down"):
		move_direction.y = 1
		
	if Input.is_action_just_released("Up") || Input.is_action_just_released("Down"):
		move_direction.y = 0
	if Input.is_action_just_released("Left") || Input.is_action_just_released("Right"):
		move_direction.x = 0
	
	var target_velocity = move_direction.normalized() * move_velocity
	velocity_m.set_velocity(lerp(velocity_m.current_velocity, target_velocity, 0.3))
	
	last_move_direction = move_direction
	
	if Input.is_action_just_pressed("PickUp"):
		if !picked_up && is_instance_valid(body_under_robot) && body_under_robot && body_under_robot.is_in_group("Package"):
			body_under_robot.global_position = grabber.global_position
			body_under_robot.reparent(grabber)
			picked_up = true
			body_under_robot.on_picked_up.emit()
		elif body_under_robot && is_instance_valid(body_under_robot) && body_under_robot.is_in_group("Package"):
			body_under_robot.reparent(self.get_parent())
			picked_up = false
			body_under_robot.on_dropped.emit()
		
		
func _on_area_2d_body_entered(body):
	if body is CharacterBody2D && !picked_up:
		body_under_robot = body
