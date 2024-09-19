class_name Velocity

extends Node

@export var character_body : CharacterBody2D

signal hit(collision, velocity)
signal no_hit

var current_velocity : Vector2

var velocity_constants = {}
var drag_constants = {}

var persist_x_velocity : bool
var persist_y_velocity : bool
var persist_xy_velocity : bool

var persisted_x_velocity : float
var persisted_y_velocity : float
var persisted_xy_velocity : Vector2

var velocity_tween_x : Tween
var velocity_tween_y : Tween
var velocity_tween_xy : Tween

var freeze := false

## Sets character body's X velocity
## amount is what value to set it to
## persist dictates whether velocity should be forced constant ex: hitting a wall will not change it
## time_sec is the length of time it should take to reach this velocity in seconds
func set_x_velocity(amount : float, persist = false, time_sec : float = 0):
	#If velocity is already being interpolated, cancel said interpolations
	if velocity_tween_x:
		velocity_tween_x.stop()
	if velocity_tween_xy:
		velocity_tween_xy.stop()
		
	#if velocity should be set instantly		
	if time_sec == 0:
		character_body.velocity.x = amount
		
		#mark new velocity as requested persisted value
		set_x_persist_state(persist, amount)
	else:
		#interpolate velocity to desired velocity
		velocity_tween_x = get_tree().create_tween() as Tween
		velocity_tween_x.tween_property(character_body, "velocity:x", amount, time_sec)
		
		#Persist velocity once desired velocity has been reached
		velocity_tween_x.finished.connect(func():
			set_x_persist_state(persist, amount))

## Sets character body's Y velocity
## amount is what value to set it to
## persist dictates whether velocity should be forced constant ex: hitting a wall will not change it
## time_sec is the length of time it should take to reach this velocity in seconds
func set_y_velocity(amount : float, persist = false, time_sec : float = 0):
	if velocity_tween_y:
		velocity_tween_y.stop()
	if velocity_tween_xy:
		velocity_tween_xy.stop()
		
	if time_sec == 0:
		character_body.velocity.y = amount
		
		set_y_persist_state(persist, amount)
	else:
		velocity_tween_y = get_tree().create_tween() as Tween
		velocity_tween_y.tween_property(character_body, "velocity:y", amount, time_sec)
		
		velocity_tween_y.finished.connect(func():
			set_y_persist_state(persist, amount))

## Sets character body's velocity vector
## amount is what value to set it to
## persist dictates whether velocity should be forced constant ex: hitting a wall will not change it
## time_sec is the length of time it should take to reach this velocity in seconds
func set_velocity(amount : Vector2, persist = false, time : float = 0):
	if velocity_tween_xy:
		velocity_tween_xy.stop()
	if velocity_tween_x:
		velocity_tween_x.stop()
	if velocity_tween_y:
		velocity_tween_y.stop()
		
	if time == 0:
		character_body.velocity = amount
		
		set_xy_persist_state(persist, amount)
	else:
		velocity_tween_xy = get_tree().create_tween() as Tween
		velocity_tween_xy.tween_property(character_body, "velocity", amount, time)
		
		velocity_tween_xy.finished.connect(func():
			set_xy_persist_state(persist, amount))
				
func set_x_persist_state(persist : bool, amount := 0.0):
	if persist:
			persist_x_velocity = true
			persisted_x_velocity = amount
	else:
		persist_x_velocity = false
		persist_xy_velocity = false
		
func set_y_persist_state(persist : bool, amount := 0.0):
	if persist:
			persist_y_velocity = true
			persisted_y_velocity = amount
	else:
		persist_y_velocity = false
		persist_xy_velocity = false
		
func set_xy_persist_state(persist : bool, amount := Vector2()):
	if persist:
			persist_xy_velocity = true
			persisted_xy_velocity = amount
	else:
		persist_xy_velocity = false
		persisted_x_velocity = false
		persisted_y_velocity = false

func apply_impulse(vector : Vector2):
	character_body.velocity += vector
	
func add_constant(constant_name : String, vector : Vector2):
	velocity_constants[constant_name] = vector
	
func remove_constant(constant_name : String):
	velocity_constants.erase(constant_name)
	
func add_drag_constant(constant_name : String, vector : Vector2):
	drag_constants[constant_name] = vector
	
func remove_drag_constant(constant_name : String):
	drag_constants.erase(constant_name)
	
func _physics_process(_delta):
	if freeze:
		return
	
	current_velocity = character_body.velocity
	
	#Add all velocity constants to character body's velocity
	for key in velocity_constants:
		character_body.velocity += velocity_constants[key]
#		print("apply V:", velocity_constants[key] * delta * GameMan.DELTA_MOD)
	
	#Multiply all drag constants to character body's velocity
	for key in drag_constants:
		character_body.velocity *= drag_constants[key]
#		print("apply D:", drag_constants[key] * delta * GameMan.DELTA_MOD)
	
	#If persisting velocity, set character body's velocity to requested value
	if persist_xy_velocity:
		character_body.velocity = persisted_xy_velocity
	else:
		if persist_x_velocity:
			character_body.velocity.x = persisted_x_velocity
		if persist_y_velocity:
			character_body.velocity.y = persisted_y_velocity
	
	#update collisions
	character_body.move_and_slide()
	
	#convert a character body's collision checks to listenable events
	#if you are not touching anything call no_hit
	if !character_body.is_on_ceiling() && !character_body.is_on_floor() && !character_body.is_on_wall():
		no_hit.emit()
		return
	
	#call hit for every surface the character body is touching
	for i in character_body.get_slide_collision_count():
		var collision = character_body.get_slide_collision(i)
		hit.emit(collision, current_velocity)
		
		if collision.get_collider().has_method("hit"):
			collision.get_collider().hit(character_body, collision, current_velocity)
