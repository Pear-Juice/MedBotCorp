class_name Collision

extends Node

@export var velocity : Velocity
@export var character_body : CharacterBody2D

signal just_hit_something(collision : KinematicCollision2D) ##Called when character body touches anything for the first time
signal just_hit_ground(collision : KinematicCollision2D) ##Called when character body touches the ground
signal just_hit_wall(collision : KinematicCollision2D, direction : int) ##Called when character body touches a wall. Direction indicates what side the wall is on
signal just_hit_ceiling(collisions : KinematicCollision2D)

signal hit_something(collision : KinematicCollision2D) ##Called every frame character body is touching something
signal hit_ground(collision : KinematicCollision2D, just : bool) ##Called every frame character body is touching the ground. Just indicates if it happend this frame. 
signal hit_wall(collision : KinematicCollision2D, direction : int, just : bool) ##Called every frame character body is touching the ground. Direction indicates what side the wall is on. Just indicates if it happend this frame.
signal hit_ceiling(collision : KinematicCollision2D, just : bool)

signal just_left_something ##Called once on leaving a surface
signal just_left_ground ##Called once on leaving the ground
signal just_left_wall(direction : int) ##Called once on leaving a wall
signal just_left_ceiling

var on_ground : bool
var on_ceiling : bool
var on_wall : bool

var last_normal : Vector2
var normal : Vector2

var last_collision : KinematicCollision2D

func _ready():
	velocity.hit.connect(hit)
	velocity.no_hit.connect(_no_hit)

## called every frame the character body is colliding and for every collision
func hit(collision : KinematicCollision2D, velocity : Vector2):
	last_collision = collision
	normal = collision.get_normal() as Vector2
	#Fix bug where pressing into a corner makes normal (x,0) when still touching floor
	if character_body.is_on_floor() && normal.y == 0:
		normal = Vector2(0,-1)
	
	#if normal has changed call jusst hit something and then process what the collision was
	if normal != last_normal:
		just_hit_something.emit(collision)
		collision_changed(collision)
	
	#if surface normal is down call hit ground
	if normal == Vector2(0,-1):
		hit_ground.emit(collision, last_normal != Vector2(0,-1))
		
	#if surface normal is up call hit ceiling
	if normal == Vector2(0, 1):
		hit_ceiling.emit(collision, last_normal != Vector2(0,1))
	
	#if surface normal is a wall, call hit wall
	if normal.y == 0:
		hit_wall.emit(collision, normal.x, last_normal.y != 0)
		
	last_normal = normal
	hit_something.emit(collision)

##called when there is a change in collision state
func collision_changed(collision : KinematicCollision2D):
	#If touching the ground and was not touching it before
	if normal == Vector2(0,-1) && last_normal != Vector2(0,-1):
		on_ground = true
		just_hit_ground.emit(collision)
		
	#If touching the ceiling and was not touching it before
	if normal == Vector2(0,1) && last_normal != Vector2(0,1):
		on_ceiling = true
		just_hit_ceiling.emit(collision)
	
	#If touching a wall and was not touching a wall before
	if (normal.x == 1 || normal.x == -1) && (last_normal.x != -1 && last_normal.x != 1):
		on_wall = true
		just_hit_wall.emit(collision, normal.x)
	
	#if not touching the ground and was touching the ground
	if normal != Vector2(0,-1) && last_normal == Vector2(0,-1):
		on_ground = false
		just_left_ground.emit()
	
	#if not touching ceiling and was touching ceiling
	if normal != Vector2(0,1) && last_normal == Vector2(0,1):
		on_ceiling = true
		just_left_ceiling.emit()
	
	#If now touching the ground and was touching the wall
	if normal == Vector2(0,-1) && (last_normal.x == 1 || last_normal.x == -1):
		on_wall = false
		just_left_wall.emit(last_normal.x)

## Called when character body is not colliding with anythig	
func _no_hit():
	normal = Vector2.ZERO #Set current surface normal to no direction (0,0)
	
	#If was touching a surface
	if last_normal != Vector2.ZERO:
		just_left_something.emit()
	
	#If was touching the ground
	if last_normal == Vector2(0,-1):
		on_ground = false
		just_left_ground.emit()
		
	#If was touching the ground
	if last_normal == Vector2(0,1):
		on_ceiling = false
		just_left_ceiling.emit()
		
	#If was touching a wall
	if (last_normal.x == 1 || last_normal.x == -1):
		on_wall = false
		just_left_wall.emit(last_normal.x)
	
	if !character_body.is_on_wall(): #sometimes just left wall check fails and this catches it
		on_wall = false
	
	last_normal = Vector2(0,0) 
