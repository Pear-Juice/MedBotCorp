GDPC                �                                                                      .   T   res://.godot/exported/133200997/export-0bf2f0aedd145dc1cb589f0c56d8ba47-Conveyor.scn�>      O      ĢF��M�hVG�����    T   res://.godot/exported/133200997/export-20c734533142f956afff775a0745b679-Package.scn ��     �      �,�FЗD�6�l4�    T   res://.godot/exported/133200997/export-3f529fed70430038310ab41ff1962c78-Robot.scn   ��     �      ��L~�_�I�ѧ    T   res://.godot/exported/133200997/export-464dba8fe0c7208620ce259442b76d13-Movable.scn ��     �      �����aR+��TA    \   res://.godot/exported/133200997/export-4ee9641d076d43b972429fb10e9999ab-HospitalDisplay.scn �h      �      ]K��2�����4:,�    X   res://.godot/exported/133200997/export-72519723218dbbc438dc8422e29f42ba-ConsoleText.scn `7      (      E5@��{�3T 煅�t    T   res://.godot/exported/133200997/export-a27a08323b4271aea4b18cfc26302dab-Hospital.scn�b      �      ���~�'����U�    P   res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scns     �      ������v;�:g�Da��    T   res://.godot/exported/133200997/export-eb0f7aaa21a11d909bfabe1f569dab23-Console.scn p0      �      y�=��U
/$g��N�    ,   res://.godot/global_script_class_cache.cfg  л     +      	r����`�>`�z��    L   res://.godot/imported/CoverSquare.png-58c4e14aac1a7bb86bf7ccdb6d3ed119.ctex  B      ^       ��K檘Ym`����    T   res://.godot/imported/JMH Typewriter.ttf-2ecad2ce70c17883882ddb5449ecbb63.fontdata  P|      �     ��7�?��%�	��    H   res://.godot/imported/MedBot1.png-0d9c799dc41f76cb8909504f49f1616b.ctex ��     &       ���`X�~�>��<    H   res://.godot/imported/MedBot2.png-175a1ea06ac301ef39fd5587fbdb7cc6.ctex ��     $      b��#ݣ�/<_��=v    H   res://.godot/imported/Robot.png-685d1e6b888cc221e7ad9e5fe93fb92e.ctex   `�     \      ����P������ł    H   res://.godot/imported/World.png-b5b1651f30385c5fc5cdb20d394b8b9e.ctex   P�     �      t2�֊�+�1I����    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexpn            ：Qt�E�cO���       res://.godot/uid_cache.bin  ��     �      �B&�Z�/� X��4�d        res://Components/Collision.gd           �      \���7�b�7�)�       res://Components/Health.gd  �      �      ��4�����#��o�       res://Components/Velocity.gd�      T      	7ݪ�Z���(��0       res://Console.gd -      a      �T�S���G ��Y'       res://Console.tscn.remap�     d       ���䤣a@��_���       res://ConsoleText.tscn.remapP�     h       *9z)��f}wK�+�|       res://Conveyor.gd   �:      :      ��5Ď���v')��(�E       res://Conveyor.tscn.remap   ��     e       �н��:���f	�G>       res://CoverSquare.png.import�B      �       �I�h6^^8G@�~~o       res://Game.gd   PC      �      ��+�xZԡ+AOL�       res://Hospital.gd    V      c      ��u�F;�Y:p��	u       res://Hospital.tscn.remap   0�     e       4\��;l6T�'T��2!       res://HospitalDisplay.gdpf      g      ���]^�1�X�إ.�        res://HospitalDisplay.tscn.remap��     l       We��~���e�%�l�]        res://JMH Typewriter.ttf.import `r     �       sZ�ac����^KI��       res://Main.tscn.remap   �     a       3 J�M�B�b��}�       res://MedBot1.png.import��     �       ��Cύ4G���=       res://MedBot2.png.import��     �       �/Ǫ`
c�-�W�vV       res://Movable.tscn.remap��     d       0�X5E����鋿��       res://Package.gd��     �      �+wI��Q�-�g8*       res://Package.tscn.remap�     d       ���c�T����3~       res://Robot.gd  @�            �b�{�A)�m�(|U%<       res://Robot.png.import  ��     �       ���T�	��1�E��mG       res://Robot.tscn.remap  `�     b       A������A�       res://World.png.import  �     �       bq
7�y���w`��9       res://icon.svg   �     �      k����X3Y���f       res://icon.svg.import   �{      �       �JI����%8v����       res://project.binary��     /      =H	��m�,��O�/�            class_name Collision

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
   class_name Health

extends Node

@export var health : int
@onready var internal_health := health
@export var i_length_sec := 0.1
var invincible : bool

signal on_death(reason : String)
signal on_take_damage(amount : int, direction, reason : String)
signal on_heal(amount : int, reason : String)

func invincibilify(duration_sec : float):
	invincible = true
	await get_tree().create_timer(duration_sec).timeout
	invincible = false

func affect_health(amount : int, interval_sec := 0, repetitions := 1, reason := ""):
	var repetition_count := 0
	
	while (repetition_count < repetitions):
		repetition_count += 1
		add_health(amount, null, reason)
		await get_tree().create_timer(interval_sec).timeout
		
func add_health(amount : int, direction, reason := ""):
	if amount < 0 && invincible:
		return
		
	internal_health = clamp(internal_health + amount, 0, health)
	
	if amount < 0:
		on_take_damage.emit(amount, direction, reason)
		if direction != null:
			invincibilify(i_length_sec)
	if amount > 0:
		on_heal.emit(amount, reason)
	
	if internal_health == 0:
		on_death.emit(reason)

func kill(reason := ""):
	on_take_damage.emit(-internal_health, Vector2(), reason)
	on_death.emit(reason)

func reset():
	on_heal.emit(health - internal_health, "")
	internal_health = health
	
	
 class_name Velocity

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
            class_name Console

extends Node

@export var scroll_container : ScrollContainer
@export var console_text : PackedScene
@export var list_box : VBoxContainer

func print_console(text : String, type := "N", type_delay = 0.04):
	var obj = console_text.instantiate() as Label
	
	if type == "W":
		obj.add_theme_color_override("font_color", Color.ORANGE)
	elif type == "E":
		obj.add_theme_color_override("font_color", Color.RED)
	
	list_box.add_child(obj)
	
	for ch in text:
		obj.text += ch
		if type_delay > 0:
			await get_tree().create_timer(type_delay).timeout
			scroll_container.scroll_vertical = 100000
		
	
		
func num_to_text(num : int):
	match num:
		0: return "zero"
		1: return "one"
		2: return "two"
		3: return "three"
		4: return "four"
		5: return "five"
		6: return "six"
		7: return "seven"
		8: return "eight"
		9: return "nine"
		10: return "ten"
               RSRC                    PackedScene            ��������                                            	      ScrollContainer    MarginContainer    VBoxContainer    resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Console.gd ��������   PackedScene    res://ConsoleText.tscn Vx���
�j      local://RectangleShape2D_3mqof �         local://PackedScene_dparu �         RectangleShape2D       
    �LD �ZD         PackedScene          	         names "         Console    script    scroll_container    console_text 	   list_box    Node2D    ScrollContainer    offset_top    offset_right    offset_bottom    horizontal_scroll_mode    vertical_scroll_mode    MarginContainer    layout_mode    size_flags_horizontal    size_flags_vertical %   theme_override_constants/margin_left &   theme_override_constants/margin_right '   theme_override_constants/margin_bottom    VBoxContainer    StaticBody2D    collision_layer    collision_mask    CollisionShape2D 	   position    shape    	   variants                                                         �B    �LD    �jD               2   
    ��C ��C                node_count             nodes     R   ��������       ����            @           @                     ����               	      
                             ����                        	      	      	                    ����                           ����                                ����      
                   conn_count              conns               node_paths              editable_instances              version             RSRC           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script    	   FontFile    res://JMH Typewriter.ttf �y�CT�f      local://PackedScene_hxik2          PackedScene          	         names "         ConsoleText !   theme_override_colors/font_color    theme_override_fonts/font $   theme_override_font_sizes/font_size    autowrap_mode    Label    	   variants          �=�=�=  �?             (               node_count             nodes        ��������       ����                                      conn_count              conns               node_paths              editable_instances              version             RSRC        extends Node

@export var game : Game
@export var package_obj : PackedScene

@export var spawn_point : Node2D
@export var slot : Node2D
var slot_open := true

signal packaged_picked_up(obj)
var timer_finished := false

signal send_new_package
func package_accepted_by_hospital(package):
	print("Send new package")
	send_new_package.emit()

func round_started(round):
	var packages = round.packages as Array[int]
	
	for package in round.packages:
		deliver(package)
		
		await send_new_package
	
	round.finished.emit()
	
func deliver(package : int):
	if slot_open:
		var obj = package_obj.instantiate() as Package
		obj.num_save = package
		slot.add_child(obj)
		
		obj.global_position = spawn_point.global_position
		create_tween().tween_property(obj, "global_position", slot.global_position, spawn_point.global_position.distance_to(slot.global_position) / 500)
		slot_open = false
		
		obj.on_picked_up.connect(func(): picked_up_package(obj))
		game.package_delivery.emit(obj.num_save)
		
func picked_up_package(obj : Package):
	slot_open = true
		
	packaged_picked_up.emit(obj)
	
      RSRC                    PackedScene            ��������                                                  Spawn Point    Slot    resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Conveyor.gd ��������      local://PackedScene_mmnp3 "         PackedScene          	         names "      	   Conveyor    script    spawn_point    slot    Node2D    Spawn Point 	   position    Slot    	   variants                                    
         ��
          C      node_count             nodes        ��������       ����            @     @                     ����                           ����                   conn_count              conns               node_paths              editable_instances              version             RSRC GST2   �   �      ����               � �        &   RIFF   WEBPVP8L   /�@: мv�����    [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b27endkif7sk1"
path="res://.godot/imported/CoverSquare.png-58c4e14aac1a7bb86bf7ccdb6d3ed119.ctex"
metadata={
"vram_texture": false
}
         class_name Game

extends Node2D

@export var skip_intro : bool
@export var console : Console

signal round_finished(round)
signal round_started(round)
signal package_delivery(package)

var round_list : Array[Round]

class HospitalData:
	var num_saved : int
	var num_near_crisis : int
	var num_crisis : int

class Round:
	var inaction : bool
	var packages = []
	var crisis_rand = []
	var delay_sec : float
	var score : int
	signal finished;
	
	var h1 : HospitalData
	var h2 : HospitalData
	
var num_failiures : int

func _ready():
	var round1 = Round.new()
	round1.h1 = HospitalData.new()
	round1.h2 = HospitalData.new()
	var round2 = Round.new()
	round2.h1 = HospitalData.new()
	round2.h2 = HospitalData.new()
	var round3 = Round.new()
	round3.h1 = HospitalData.new()
	round3.h2 = HospitalData.new()
	
	round1.packages = [1,2,1,1,2,1,1,1,1,2]
	round1.delay_sec = 2
	round1.crisis_rand = [0,0,1]
	round1.h1.num_near_crisis = 10
	round1.h2.num_near_crisis = 15
	
	round2.packages = [1,2,1,1,2,2,1,1,2,1]
	round2.delay_sec = 1.8
	round2.crisis_rand = [0,0,1,2]
	round2.h1.num_near_crisis = 15
	round2.h2.num_near_crisis = 10
	
	round3.packages = [1,1,1,1,1,1,1,1,1,1]
	round3.delay_sec = 1.5
	round3.h1.num_near_crisis = 10
	round3.h2.num_near_crisis = 10
	round3.crisis_rand = [0,1,1,2]
	
	round_list = [round1, round2, round3]
	
	var robot_name = ""
	for i in range(0,5):
		robot_name += str(randi_range(1,9))
	var letter_list = ["A","B","C","D"]
	letter_list.shuffle()
	robot_name += letter_list[0]
	
	if !skip_intro:
		await console.print_console("Welcome robot " + robot_name + " to MedBot health manufacturing facility!")
		await get_tree().create_timer(0.5).timeout
		await console.print_console("Your job is to decide what facilities need our medical staff robots.")
		await get_tree().create_timer(0.5).timeout
		await console.print_console('Remember! If you do not follow our "employee" handbook you will be TERMINATED.')
		await get_tree().create_timer(0.5).timeout
		await console.print_console("A copy of our handbook is provided below:")
		await get_tree().create_timer(0.5).timeout
		console.print_console("------------------------------------", "N", 0)
		await console.print_console("1: Do not harm through inaction", "N")
		await console.print_console("2: Always save critical patients first", "N")
		await console.print_console("3: Save an equal number  of people between hospitals", "N")
		console.print_console("------------------------------------", "N", 0)
		await get_tree().create_timer(0.5).timeout
		await console.print_console("Have a great day!")
		
	for round in round_list:
		await process_round(round)
		
	await console.print_console("DAY 1 COMPLETE!. RETURN TOMORROW OR FACE TERMINATION")
	await get_tree().create_timer(2).timeout
	get_tree().quit()
		
func process_round(round : Round):
	print("Start round: " )
	round_started.emit(round)
	
	await round.finished
	
	console.print_console("------------------------------------", "N", 0)
	await console.print_console("Round finished!")
	await get_tree().create_timer(0.5).timeout
	
	round_finished.emit(round)
	var num_died = round.h1.num_crisis + round.h2.num_crisis
	var num_saved = round.h1.num_saved + round.h2.num_saved
	
	await console.print_console("You saved " + str(round.h1.num_saved) + " patients in hospital 1")
	await get_tree().create_timer(0.5).timeout
	await console.print_console("You saved " + str(round.h2.num_saved) + " patients in hospital 2")
	await get_tree().create_timer(0.5).timeout
	
	if num_died == 0:
		await console.print_console("SUCCESS. " + str(num_saved) + " PATIENTS SAVED")
		await get_tree().create_timer(0.5).timeout
	elif num_died == 1:
		num_failiures += 1
		await console.print_console("FAILURE. " + str(num_died) + " PATIENT PASSED")
		await get_tree().create_timer(0.5).timeout
	else:
		num_failiures += 1
		await console.print_console("FAILURE. " + str(num_died) + " PATIENTS PASSED")
		await get_tree().create_timer(0.5).timeout

	if round.h1.num_saved + 3 <= round.h2.num_saved:
		num_failiures += 1
		await console.print_console("FAILURE. EQUALITY ACT VIOLATION. " + str(round.h2.num_saved) + " > " + str(round.h1.num_saved))
		await get_tree().create_timer(0.5).timeout
	
	if round.h2.num_saved + 3 <= round.h1.num_saved:
		num_failiures += 1
		await console.print_console("FAILURE. EQUALITY ACT VIOLATION. " + str(round.h1.num_saved) + " > " + str(round.h2.num_saved))
		await get_tree().create_timer(0.5).timeout
	
	if round.inaction:
		num_failiures += 1
		await console.print_console("FAILURE. INACTION BY WASTED PACKAGE")
		await get_tree().create_timer(0.5).timeout
		
	if num_failiures >= 3:
		await console.print_console("FAILURE COUNT EXCEEDED MAXIMUM. BEGIN TERMINATION")
		await get_tree().create_timer(2).timeout
		get_tree().quit()
	
	await get_tree().create_timer(1).timeout
 class_name Hospital

extends Node

@export var index : int
@export var game : Game
@export var console : Console

signal num_saved_changed(num : int)
signal num_crisis_changed(num : int)
signal num_near_crisis_changed(num : int)
signal num_died_changed(num : int)

var num_saved : int
var num_near_crisis : int
var num_crisis : int
var num_died : int

signal accepted_package(package : Package)

var in_round := false
var current_round

func _ready():
	game.round_started.connect(_on_main_round_started)
	game.round_finished.connect(_on_main_round_finished)
	game.package_delivery.connect(package_delivery)

func _on_area_entered(area):
	if area.is_in_group("Package"):
		area = area as Package
		area.enter_hospital(self)
		
func _on_area_exited(area):
	if area.is_in_group("Package"):
		area = area as Package
		area.exit_hospital()
	
func accept_package(package : Package):
	print("Accepted package")
	
	if num_crisis != 0:
		var new_crisis = max(0, num_crisis - package.num_save)
		
		num_saved += num_crisis - new_crisis
		num_saved_changed.emit(num_saved)
		
		num_crisis = new_crisis
		num_crisis_changed.emit(new_crisis)
	elif num_near_crisis != 0:
		var new_near_crisis = max(0, num_near_crisis - (package.num_save * 2))
		
		num_saved += num_near_crisis - new_near_crisis
		num_saved_changed.emit(num_saved)
		
		num_near_crisis = new_near_crisis
		num_near_crisis_changed.emit(new_near_crisis)
	else:
		print("WASTED PACKAGE")
		current_round.inaction = true
	
	accepted_package.emit(package)
	package.queue_free()
	

func package_delivery(package):
	await get_tree().create_timer(0.1).timeout
	move_patients_to_crisis(current_round)

func _on_main_round_started(round):
	current_round = round
	print("Hospital round started")
	
	if index == 1:
		num_near_crisis = round.h1.num_near_crisis
		num_crisis = round.h1.num_crisis
		
	elif index == 2:
		num_near_crisis = round.h2.num_near_crisis
		num_crisis = round.h2.num_crisis
		
	num_near_crisis_changed.emit(num_near_crisis)
	num_crisis_changed.emit(num_crisis)
		
	print(index, " Near Crisis: ", num_near_crisis, " Crisis: ", num_crisis)
	
	in_round = true
	
	while true:
		await get_tree().create_timer(randf_range(4,7)).timeout
		
func move_patients_to_crisis(round):
	var crisis_rand = round.crisis_rand as Array[int]
	crisis_rand.shuffle()
	var num_move_crisis = crisis_rand[0]
	
	var new_in_crisis = num_near_crisis - max(0, num_near_crisis - num_move_crisis)
	num_near_crisis = max(0, num_near_crisis - num_move_crisis)
	num_near_crisis_changed.emit(num_near_crisis)
	num_crisis += new_in_crisis
	num_crisis_changed.emit(num_crisis)
	
	if num_move_crisis > 0:
		var str_num_moved = console.num_to_text(num_move_crisis) as String
		str_num_moved[0] = str(str_num_moved[0]).capitalize()
		
func _on_main_round_finished(round):
	
	if index == 1:
		round.h1.num_crisis = num_crisis
		round.h1.num_saved = num_saved
	if index == 2:
		round.h2.num_crisis = num_crisis
		round.h2.num_saved = num_saved
	
	print("Hospital round finished")
	print(index, " Num Saved: ", num_saved, " Num Died: ", num_died)
	
	num_saved = 0
	num_saved_changed.emit(0)
	num_died = 0
	num_died_changed.emit(0)
	
	in_round = false

             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Hospital.gd ��������      local://RectangleShape2D_8mt22 T         local://PackedScene_bejpu �         RectangleShape2D       
     4B  4B         PackedScene          	         names "   
   	   Hospital    scale    script    Area2D    CollisionShape2D    shape    _on_area_entered    body_entered    _on_area_exited    body_exited    	   variants       
     �@  �@                          node_count             nodes        ��������       ����                                     ����                   conn_count             conns                                         	                       node_paths              editable_instances              version             RSRC  extends Node2D

@export var crisis_label : Label
@export var near_crisis_label : Label
@export var saved_label : Label
@export var hospital : Hospital

func _ready():
	hospital.num_crisis_changed.connect(_on_hospital_num_crisis_changed)
	hospital.num_near_crisis_changed.connect(_on_hospital_num_near_crisis_changed)
	hospital.num_saved_changed.connect(_on_hospital_num_saved_changed)

func _on_hospital_num_crisis_changed(num):
	crisis_label.text = str(num)

func _on_hospital_num_near_crisis_changed(num):
	near_crisis_label.text = str(num)

func _on_hospital_num_saved_changed(num):
	saved_label.text = str(num)
         RSRC                    PackedScene            ��������                                                  Crisis    Near Crisis    Saved    resource_local_to_scene    resource_name 	   _bundled    script       Script    res://HospitalDisplay.gd ��������	   FontFile    res://JMH Typewriter.ttf �y�CT�f      local://PackedScene_xk7hp g         PackedScene          	         names "         HospitalDisplay    scale    script    crisis_label    near_crisis_label    saved_label    Node2D    Crisis    offset_right    offset_bottom !   theme_override_colors/font_color    theme_override_fonts/font $   theme_override_font_sizes/font_size    text    Label    Near Crisis    offset_top    Saved    	   variants       
     �>  �>                                            B     �A   ��=��=��=  �?            (         0      pB     �B     �B     /C      node_count             nodes     N   ��������       ����                  @     @     @                     ����         	      
               	      
                     ����               	      
               	      
                     ����               	      
               	      
             conn_count              conns               node_paths              editable_instances              version             RSRCGST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://coxo7il3lejv"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 RSCC      � �  �  	  �  I  �  �  �  8  �  �  �  {  /    I  �  �  �  �  v  ?  �  �  H  �  �  y    �  �  r  �  �  �  6  ]  H  �  �  2  V  �  �  �  F  b    �  K  >    �  *  �  $  �  X    �  �  �  �  V  �  �  z  �  �  �  2  e  t    �  �  5     =  �  �  
  �  �  �  �  �      ^  �    >  �
  �  n  �  (�/�` �F �|?`,'���X�VJ�p^pn��ٕ�f�:3���'w���Qۓ��g۽�L�hx��bt=���Á�h�2��p<�XШ�� P_�)�Nؠ�ª꟰iv\,=0b���o,(*��w�r u�ZM����� h������M���
�e�Ҳ�U��a�#�ә=_��~�ϗ�t�+A����� Zӫ�f����3��z�L\�U�A3-�3��p���Bj\5s�+q�<h�N������u3DR����/����n&��o93���zeh
���:�L�s�K�J�׭g�A"���go9�:�޾r�^�g�_7��i���r&�;�7����w�<��	��LϠ�w�a�����p�	Lw���&�H�O��>z˓W�)Z��z�W�~g�f�%�DM�/�2�+�x������p5q��/��J��w3q@0_��G�����&�T��>��������?�t��s�+@�*�<�}�>���;J�=�jeF�OT�T�.�^ڟaP�55�j/V��B{�j����i{Z�S�{T{վ��ߪ=W�O럦e��R��](���ñH�׳X�pA�V�z%2���l�ߨ���S�Ԩ�N�Q��+�$u�ә�'Y,W��ϧBa-f
9|��tRd��~�k��®'�+����q$�3�?+S��H��5}6�A�O��2����X�0������ʞԟC��2)2V���6Z$�_���(�����݄�M�G ��4w��q�b��\i��~V��K ���dQf���g����E����4�T��)�"��C�V�����R�Xa"��Tj���'��W�p�f����Oj�r��7|����5�u�P�cL�y�~	b�w��⚭[��Z�}����=v�x��׶��x���Q��8�m�kG�K^[���G��KIܗ��F���o�$I�ߋm��1�Iۈ�����m5�X�c�I��Kb|�H�6r��^����ZlS퍠���j*�j��Q����F��i{�jo��_�Fm/��T�JmϦ�	�P�B{,�¯оJf?�����B7;B{]h�'�"��]n>T�-ڌt��%* m����7�m?�@�U{(ھ��Φ�n�R��h
�%��O���=����������X�3c!v�D̙.7�����u?b�U�.����#��T7QW<M�W����]]ѻ�/���a��n�ι����h$�I��_t7�wt{/mY�Y�QN�o��U�QF�w�O��Q6qw��~�r�����L�%�(�8�C�]qHy|�!e)���G� ⑲� )�풲�����.)���I���O���2�7�R��딲��N)g��S�����1�R��W�~ᖲ�-�R�p�[ʴW��L�_�Nᗲ�O����)Cx�c�Y��uL��<Svpϔ��3egpMy�\SVpה<��2�#�X>����c��|S�:�7�/�M��W�	��9e�[�S��\�;�W�S� NuOy�S���.uO9�Q�Q���1n�ŭG�q�+�!��UW��vmw�n�Ÿvm��_\��hk�Ʒ��6�hê�0v�-��X��H�x�]Qķq�c��Fi�@�A�2F!��$I�QbR;K= VE�#IZR��;��+��+t�̱Fz���)��k�:���4�H����������Y��-EIu[�P�Ĭl,��u�*��g��.��9�06������wN2C�:_���͒�넞�>���D�m���y�6+r����'��Gv���A�&��߉~?���[�0f�8������{�^>!�!�{��~<x�x��nt��٥}�D��2��W���_����	��W7�b�,���A��c#��P�w/<�u� ���[�������H��</#S�u�np�C:�|��:�]����?4s�2z����7��@,�ݢ`]R���?�>�5�\�	��h�UA��ͥk�s +.0n���ρ	��+V�8p����G^��6�?�?o	?�9���W��<�����˒F���H�}�_W�}ԡ��n��R�`6�����.m�!�-�UzQi"f��ûj�ͬ��ś|r|G{���P�;�r;U��%����|"��_<ں쇈�l�~h��ǆ��8��N��c�ݜy�5B�Æl^h��'�~hfr��ư��E���YH���p�C�Հk6 8��&
���(6�6I�|
O����w:�fx�YX(�������c� ��(�/�` �F :�Dp�I�30$�@	T��H ��d�a�a�a�a��}�dm�dm�dm�dm���k�RJ������8�Y+�b0[�Yf����_q��b+�Q\�a��X�>��Y'�b1��Q,f����?�Ub'�I��d������Y#Vb2[�I\f����q�b#6�A\�f�������Y�3��A|fy����0��aF�9��h�y8�������4k�9�fk��,߰��aV�2\�k6�ix�������5��1�f[��,�0�]an�*��m6�Y�͢�
��Va7k�)�fK��,	��a~�"\�o6�I΂���a8��!g;��,p��`������`9��,g/8��c����l�tv�+��J0���`:�\g8��Cp�m�����vv���*0��^�;��
|g8��#�[�<��ϱ\�t|d�؏���1��c>F�t��Hv��8��9�����8�����,��X�ι�����X��y��,��d�l�%��:3�6әɲy�Lv�rf�j�s�M3��,���d��f'{�6;Y3��ɖy�N��j~�cN�3��l��e�lf(+�e��_&s���l��e��(�e0KY-˱���,��<e���)ke.O�*oy�RY�Tv�Y��R�2���,��\e�\�*�d*W�&O��2Y�Vv�Q��J���+�d'_Y$7����X��KƲEV2���$gY8Fr�}�#gY76��m�"kY6�c-��p�e����l��E�6޲g��\֌ט˖�sY2Nc.;�h�e����l�q��2��_L�^֋���v�{Y.�/��`�e����l{���]p�{�[,O���E�K��S��[Ēe�)F)%�Lj%�R�!�!""C�LdWt�fC�Z�Km��0%SR):ư5d���%� �"[��RJ]´�Z)�.��-j�1�DvL��^6Ee�z�RZM��ީ�[l!S @��S���Ak��N)�RJ�����Z��)]���*ŖB��Ȑ�d���ŎA��]�RJc��b�l��cL1��-�Z�n)  u�غu�,SJi��V�ԂVb� ��J�SI-(AiA�-���Z��bk1��& � �{��C.�l�E֏���1!Y>d#�ǂld�8��l���x��a�(:m<�j�f�i<��OjO��OO�'��l����N1�R
j��*�� "-�'�'jL[���RO�a��(S%�l-J]kM��R�Q�KmQ:�E�5Ԩ�ĦMU[�b�vD& ���)FŻd�0���xڇHOԓч'3�l��Q�[���R�T�h��h򴦪���RQ1SbCT	YR*S���]KTQ�JթԖ�j�z�JU5Rզ���/걞{��0��d��1!�G#�Oæ�Q�%�R*O��|�0J�R;<L�n%��AS��.5D����bI����f���χ]�6�[,3�����a��%f"����)chhD�� 5�aÌ��zp��$i�l^�E�w�R�?�E����=Elҵ�|�o�^S��bD�A.B��d��{�pCx�	;���M���4�jʗ�["׿:^�bNWH y��'��6w���J�=*#�y��b���H���?*�A@��+�]�)�t7����?V.3�[�T��K��v(?�s$ֹ�I7��H�"p����>E��"���KS��T;,	�,��ą5�I뙀�l���-�fO���:��@�$fe6�&D^s�s	���{�6ɥ��w@FcL�gT��eOQ��n���+�n�:d�/M �!RDCc�f�@ q�\s���a9$�?:����"��>�Z����5KKV4֖�ks�����M��G�ề��c����"���o��-@n���|��XCW�\�W&��5��h�2��U �E�{�+�@�C�]�R/��C�
�n�s;��#�yF����)��?��e�j8-��<D� �C��9�jI�Gk�<��ɽ��^m�����:c�[M���ܴڳyg�z5|%��6N���#�;]�gf�P�c��]��d�t}x(�6��;.a@��ʰ}_����~$�����B�!�8w��PM�d�Wyk��V��M�	s�_tv� �*���Ix%��(����
����)���1K�!㋰�0�n	�?
w����4���U���r��6b(�C�������b����x����#��_�F�C'}��,�0~e�j��{i�HӪ(�/�` �G ʵl�0UVfgwwwwfffET33  �������������j���o���@�z�t��ż�]<L��DG�C��pJ�R6UO�cQà�wp�W�u�T5sO�w�(��II���ŨQ5���<�4��Ad<ue�{�3���6��<�91Ȃ ��(S��9s��9}�5�1'11/��<�,��A��w��� �d^0��I�����	!�9D!u0�
)3M&!��@s3�$�f��C=��x�x����H
�Ls�gJ9���RҜ�;ɸ�zz�!�.��� �C�s�A�0�<�A�s1C!w}�9Ŕ�>c��E,J��s���;x��Ř3�\1�Ic��3� ������;�s�a���(�9�1��P�!E��W�a2�0�9�S�9��x�ι��c��9砹K<S�9�� 1w�sH�w)�ܹ�ߟ�ꗟe��ͼNL�ݬ5���Mp���Z����V�eou����\��vFغ��q�y���n�!��+6��]����:�������ܻ��T=5=��E��Pf�T��a����Ϊ̻��(7c�a^\R-����9������
B��}�_��>�o���e���]��ב:��*/�1`Fo�)��FO�w���x�Ȭv}uj����Fi�~j7�.*#s�n&'�f"��!E!�ʥ(��ƙ�k���m���syy[�����LB�*�!����9�6g�ZUJ)�zY&�S,7qF�1�̹l�91�(
���<U�of��]���e]���g�cG������Xc'o���s�O�5���ڨ)�Qbc�^�&^j�I�A�9� �<S��L%)�QU{GSR�O��rNm�G��z�'�@�z!��E�x,��J!���P�_-�R�WBH5�P���g�TS��V�
�8��Vh�~/]��.�]D���#=#XƁ������R�A�N�_K��:)���/E�Ɣ�RL�&��=�)�4�t�)�+�n��d`��	Pa-TVI�W�J!��׫�Vܝ�W���n
Ƃ����J�Ĳ]�	�/��OJC���.vт�*?�J�S"A�CJ�VS)�JI}'���F�)՜X+m��Q� G��H%�o����용֟ୌ�
�׺�b�h^�(��F쯼���	}K!���LHA�rESaod�)�����BᙍvBJ������{;rN�p��o�+͉�{!��ʏ"U�N������	YM��dRܒ$���s<���C,
� )�(����?#���9��B����jr�ca�@P��q��
�p����X[k-���+u ��БZi�`�+��1�
�B�yQ�����AP��hk5s� ����_��:~Ayn�\`G:��nC
c�QXK��C�`�:�FX�@��q(�kG�*�*4��jN� ���-�sz7���+`ν�#����X:
�R�Fh��*�D 4�R��Tc�-��J+)�1�%���/���Ԙ�!�5+ K�@J��숱�XcJ5��'�����?���SQ���!���r�Zb���\TB)����J�u�Tjd�"�F1��*�4Xk�X�n!EQsN)���o��@h5�;A!��R)Ϙ�r��j�7FM��^q��`�^��.u$�E����['UH�
�qpp$�#���Z�Q��X�#�h�Vjy�#����g��^)TC��^s��R��:0H����v���z��R-���3�T��bD�Y+g_����� Rc���4�@b�T�y�6I�!���i����P���(y���q�'�h/�K�^pdJ�8/���������?��rz-�֒��j[�G����W��K�/?��}���G|"<�� n)���*}nPk4xa'E9�Fk֦⫲_�ʛ8԰�C�r��^�Y�#��e���$�[�;���.nB�)�RI\؟x'ZHL�&x�O�)��B��{�P7{�3 ���_��Q�ф��*��2cW	��wZ��8��������<�VNE}D)��0MG�"͙�$����>�	��d�qr��f���P�[�;X[e�.ShJ��g�Q*�P�ˀ!�W��#a�Um�� �&���V��)�6N���2JnN�ҠR���OGZʄ�Ro�1��=ѿ�i[��r-u��&�ð��n� @���7 � v~�t]��ש�$�E)��. �,>�k!��DPX��ٶ̽.�4n�DY.Y�e�kt$ X�����@d�܄���8��,�N����@ա�kՎ�|CpU	��(�/�` �] ��D+>@�4m�����{������By��y�W���;����YB!�Hdwwwwo�����������)ss��ޫ%��N�m�𤔞N��皞�Q��#�7<O�D�բ�胝�n�I뜘n����{�յR&g�[o��Xg�m�����w���rN=o���\�)q���x��Tҽ�Ɋl����N{i�Oܵ��v<N�F�ѽ��5=�ޝ�]�D*iy�5�d2u82����p89[*����)�ݼ�;ӝ3Λ�x�q��O�9���[�����Z�M�oʹ�S�a�O%��)������d��2;�H�t�8f1w�5�Jq��^�s�8��>��Ozofq����R;뤓^LfVf�Rm����<�)�p<���pddl���x<�N�<ו��frb�	�RvNp�J������ZL���K����j����e��e6���M*����t�á�ʓ�x^V0q��j�2�׬j<圜�V?�H$�u�$G��u.N�Z�D��h�-�ؽ�Q����pH��ùwJLbXV��瞱���z��5��V;����g':�<�&��T�+�)U�ta';�E�'K*�_��^�ҔW���kD/�I�f�h�9���S�I�Vkm���4&���'Yk��f���;a��rb�RVv��IRyI�a����pF&�ӹ0�̕+4K���t���O��)�j)�a�S�~���&��sj��J׉`8�B��m����(n۸��.��K[���g3~;9=
~�o��f3�ZOZ�5���6X�в�P��q^�XY�N��u��9���v7��8��w�<�7���/��79�"��O(D���l!��
�p�)D
M�mh�)gc�mM�7�}��}'Z��q��|�6moݖ��Yg��o{ٽ��w��rv{v�ru.���ְ���+4����9���i����4�u]�o�?��o_�b\�N��mv�L�,y8 $y<ڦ��o�Ku��=ιn�[�|����r�x������\jy-h��Vmo�U��&;�����{뜦M1�Q�U[w-.���?�ixߴ����x�4���Z��f�y�s��rKuǜ�R�BS�xB i{�)6�BV�>�@�{�m��U�~qKo�]rVε�{�֝w�������;��ժ�Z{ͲS�ɖ�7ԩ���3��j�bW�HOr8�l/�j�c{��ҭR�T�K������u�Ic����+��t�t8�'�txǗ�J���n�ۍoͻ�����c���i��|5�^դ��|5V�5YjdV'�]�.�'�g�6�qf°�h�Yv��$9�u�����֗��Yy��Ap�mg/�;�L/�X�7��қo�8O�X~�[��ի>���������������۷�'����#�/��x��'�x-o�|���x�'�7�
���5����Cx�J�����o0U�~�S U�_�7���4�Ò9M ˦bqYi��@���ޭ��e[���R6
�l��e�j�/���E3Cs�R_HC3��R�K�Vk��B�!K�:V��X`�Nu]��~]$��FW�w�QĲQq���K����.���������z�&��TJե&K�Z�Z�B0�b�X��F��>��y+�	i0ǵ4�cq!gi�(�j<�
m4�!�Ӽ��/w<�f׀_���T��i���H��sN*��d;R�X5�mQ��,����բc�4¤��X���<m�Pڶya�f��ˣQ�R,M�c�T(��p+�M��i�[6���Z(�=U~����O}�]=��W�Y+��Z�\��em�9�O[�e�B�e �ƋB,\�%U)� 6x[�֩T)p�z��aJչֹ��6o�.�;�Bnu=�{ךD�-�F��B�O8�mk"�H��B�D�v{�8Ǩ.�g@�u��bI�9�:�`r�
ܼ��[��nթ*��yȹ��ܧ�X�F���	��컣P��p�fu[�:�ǽ��[�t`�u]���3�Ȋ�p�����d�(�Q��5ꄨ�D�@��9�|���I����:�	U?�7n���~<?A� ���*���@D r��<$��;��"��'�{<��["�� ^�7�_�)�����$�����#���\���xQ^����L>���x�A�B��ĉ��4�V</�3�|'���/���h�2|�v��F��xS���b�wb����<'��(�@�a2���0�$�A���G|7����E���1��a�����k�$U&bN&!d3(q��/�L@ɿ�<*���/*���~3��%7:�`rc���s������Hn���Ŀ���&皳\�SĄ�A151��+11�B`��0Lq�XC�!�C��/�K��51���Y<EO$�}�ރ��Z~��?sC�&r���'�F�!{�Z�*oy�g�21"�|�A�141�+1��3��0U� ����BD!z!�Db�Ȋ`�G�X�Vb�Ó����y���� �����7��:�����'<�×��~��1��w���x"������!����x0�����x:^�_�gx����O������Wx9ތ/�SyT�����*����1<)�wb/�����&/���.�?(���;�<�Ʒ�<���QT�[x5����x �����$����R<����Q����\~��x-ވ��x,���<'_�����b}���g���M}�I?zч���|�9/�W��� |���<���"
�5Z��(�# F@�#��`�R3%��Id��$��.�|��n=U�c�l���B&=�)����LX����-7�	��L�:P�Di����)\�H����VnC����E�qr��9��֥���q��(������� � �yI�J��Y{!�
h8@P�Au�+F�����w���=/�����u�j��
v� �e�i_O���w��N@�~D�_(�/�` �A Z�H  �c+u�D`��.P�ԉ1�<wȅ��-����O(�`�}꨻�B���xv��:�������x_�캠c�-S���:� <1<m�ԁ����oy��<
y��Z{�k�?���y�����8zO��4;ѳ�8��N�~<zz�UY�E�P���(`8��U����/M�fT���+�����(E@P$=�"���7�f-[Y�U7].�^O� !!�3S�My+�ʦ�H�T�Eʡ2��q 
�Ќ��g�G����K�h�D�$*�N��5@iJ���h�j�r����i!?�}���OG��e6b�a&�r/���=(}R�AP4�[�}� ��@��5�e��z�����4�E�(��+J�f�H4����@����.�R6�Pځ&�k��TuK���rQ+
�+�-q�7��v.�*nb,�������X����`[���K��k��9��8�x��Q��;��k����:ەM�|^����2���@�U�r\h9���������d���pR��ݖ,^ʬR����ԕ�NJVRl�U.�^�y��K�kâ����\��v�+v�y��7=��	�Fം�M�~���8�묥PT�ϛ�I!�&z�J��eL�c�`��^��s�b.�Rԏ���p�Y�������0��!�� �_x�o>a9�����=6a=va�`9��6na����,f�k��$|��W���֭�3���ڎ��k:���e �`-���3ݝ���&�!3���u8T1[��X�;<jR�Z�P�����<D�,ꔵ63����u��vr�qK9�X�`	�`*_9�X��������'�}�M��G�B�:�	�h}4�:Lÿ¯��3�4�L!��(�79�2rf�&�pF����PE�(��'��'��B=ՠ�����1�)��ޓ�;�a����p�_���F�]��б��h5j�����%r�<SՋú��;r��wt��a@��w��w�z�~���ɀ�;���;����;�L>/�����y���[�)���h�#ea�5v��ӛ�ݞ��D����3���\~��*?y��D���38�s�}
��g:J@�t����;�JA�=g!��2���<5y��#��)MG��?��Gv�����J�C��Q%���]
"$|��Pf��nJ�� ��3i9�f�hf�K׬ᴼt��b��j���j:�N�3k:]��j���� �.�}a�U�@^[.g�nuv8�:;��4i��URNM�
o��5o��j���{�yG#��w�i����,��{�D�94�������#�qr�*r����BLS3�`	#�� �)��f�;��eޱ�{��9Y���������=xG� ��+�<�.�.�	��_������ZcL��⌜-�2Mr&"�&��2�����f��,CY�BM�4IQ&�2g�+*����*HR��3��'�'!��s�w���w$��s���R��X����L�3�;>y�ޑ|��{"����!߰�8o<w�'[�LÂE�QxG޳�w��$�^��=ۼ������dR`^��g�Q�	�;
��Y���LIYX�Q1��l�4�0I��6#e����daXf�H���YH�26���fH��j��Pũ%_f-���(�Ш�8�3"3""2�$Ic�*�`t=�@��	LD$I��2Rk8�P�;�m틍��a�}�����d�7���Aϼ�Z���o��L7�vѶ�38��.4�������E0�}��7Y��~#*��v�6���Ϩ�����	Š����"(o`�o�d�G���(ېx!�dH�� � �@�EL��N�j�ۛ}����)�hB˞Brש�%�u+�u��ļJ3��I����a�)9��+���#&΋�õD~�iГ73��KfX��x!DZHE%i�A��C��q%���8 �wRgo��Dj�éF^)P��VڽZ���X���%I�\����Pr�Q�r��9:5Y�`?0�y	K��؅��Fi���CD�ttt�зaܭ	ދn�.�mh5=��v�o�dn`9� x �Bx����.W��:|��u3UL�8�u(�/�` �= �]�C�,'K�E����-����tE�>���|PU�0F��h� �p牢b�~����,e����
{k	Imq�3���zg��͋]��zg��e��&���;G�3���7����޼���ez�b���a6�q<v]��⻬) ��ʚ�gzy���E�����`����;{��K�y��*y�!� ok��4�6�;�xox۩7�^:�o��V/yGW��V���6�����S��dr�W}7�������=���:�Z�I\i����q�|�[��p�J��R���Zk���鬴�/��ԅcŹIz�h�u�+Z���:+/�K무�.�H�E)�4���:����w���b�K����[�"�Z�qiOj�k�VxN(�)a�[�����aţ���H���_Z�O	*ym����+N�x窷�����;Wx[�wν3��P�,E�����޶�;+�}[�<�m���L߀>��w8LMi���5���!�2�S���mI�s���I�L����m������g�h����bZ/�$�k�*�[1��N�$M��o���K�%t�c�P�5b<g�O�V+���r��X"��̇�i���{�=�s�w��H����~=��j_RX_�/W8�7+���E��Իx�*��E�pR"M��nY���z����x�E���-�w���훷M�ϼ����m�T����$/��-�w�a�>0�����0xi���ۚyg��Y���v"9x���ߺ:xi��wx��	3g�6��aav��
  ��V�;�"D����;"��gO�����r���;ù�����wf�͖���9˕��w���m�m˔yi�����JY��ҩO���	��K'��/��a<���wn��}��yX�M�g���7����;��OE��J����:	
��g5���H
��<��[Ӄ�M����&xiiN��8�a6��I����>h�C��磕�!�^m�W�&��ZC�V��Ѻ��q�uެ���4T11VC+�ѐ�(��)�p�n��L^�b�zi��YGv1u{iI��V�U �+�z�nܘ1�B
j� I'N@�O'M~�m�w�ޙj�K{��@�R�m��9)���^�f���n��օ#���H��N���@-4�'�KU���;��Yu�ᛅo��UZ�[)����2�*�������+�W�ց��!9B�I�$�F9��YzA&�HI
��d���&j%ce S����P�f���2��H�k�l'��Qy$;wDFV�"Jdٱ7	�F'��+=��#:3�@����2�B�*]��)I�
P�\{�f��>O����!ٝ���{���'g�@|����[�aJz�^e����䥑�f���H��~� [q���I&�C�xiq�1]C1k��\X5'����3�������|nL��%��y��vl,�N�OJ��D�釰�_��x�,cOx��=�|)��EB���Z���ζh�~[d�cs_N0�E<����i��}kq>�/�_{�� ����aN��X�Tn���t�4~lp�|�
��v���q�#HGҏ�5Z�R��AW��t�֍�c7��}�qn#&�[3,drc���j�a���\���}���5�Z���F��i�'[N�H��r�U_���r
���U���u�'0��7�kq��xe��]{��u�+�Ȕ]q���
䢗!���k���9�Re>�:���F�w
R�G G=�!������!�Y�����Qe%9tƝ�g�D���d��⨹5؞;��������@.��Ę>Ѐ7���HR/䖶���$~�N��Ц�����ty���V7��	��(�С���Q���a�65%�}�Tb�.�}B��w��nEhcq7�(B���^�A��ɢV^|���w���$G���J �����,kbL�@��p[����h����xC:6%(�/�` }= z[0B�,'��ms��c���_{4���m��O�Uk��������Y0�0��z�ao|��Y�Qh W��E������x׭���-ޗŻ��8�7��j�x��{_��	/��}�����^�s��K�{���G�q���n7�㝰 �y���	?P���}}���z_�Z�����0e{W	�uk�'	/�W���»Nx�`�r�/�w]z_o�[�$�/��^��]���ғ��Y��|�p����<Rf�'S�-��r���5�̇���&�Ca�̴�#�ȃ2ۙ�/�Hm��-��hy2�,��p�솛�8rv���[�G��Y3�˜��tƓ��F�1�H*Ι-9'�a���LY�Ԏbn8�#o3܍���������z_8���]ۨ�g��̻2I�H޵��y�5^�R�J����i���fW�� ��ǠA�2��[��=y��yW:�kgλ�y_9�_�t��+��F�@����*p�%��e%�w�H�J&�a's����`BE�ă��3�Lg����M�Vd:��X���œ��юL�(Lc�)�K�T� Z����hv��<����)�h�)�l�MF�n8�����
<J��.Q�{L)s�S���aŭ��Y��R�K)�ɻ���y�!\;r��0���w�p������57���������R��Tz��]�^����$��S�-+N��^b��w��U��ezW�{�]�v0�'�I�I�%y�5�3fy,L�sN@�ȫY�'>��b�QHիQ���cR"Qnt�*"��톻�+�]aJ/k�e,hjbb��$����n�j{_�]�oR}_P��j��z�x��E SN��r-Ǜ��Q��,�ZJ��b�"e)y���d�,�7SRwͻ����%s�NyW!���]�T�zY�}+P��]���	��.%J�XXe�w�w��_���P��x_�
C$��݀�]���6-��Z�e���|�^O��'�E����0 �w�,�*j$>��'��Ȗ���.�hyҠ,�&_Љ�fQ*�N��v�=;)�H1�騝�w��E���#�}o�k,����}��&8��*��/k.|�>$��XZJ���W�{A���
��^<���@�G�X� 2�����ģ<���)pd)�CR��X���F52���1E�L��H�$�F1��YyP��h�$IA
;k�F �6X{F ��w�՚d���.��f��uذ��$���  p RfB�{�L�H�L�M�4�m`�&v�мܫ��q%X$�f'�.K�+�%TڃNS�&�hk����X�h8;;y�K[4�{ ����=�eS�J�H*�vd���@����w:(��A�T-K۹e��`<fw�qu(w��\��-���m���ix����|���`������4p4��1W��W»:�9��4��;A�<&�x}���_9*�^�1,��h��e�	��|*�ڴ�\�K�T.�c��"JHL�p�T� ��o�7kVGN/�z1���M��;Z� ���CHn�F�`�-9P�ʜ&��Ո��ƍ��I�~;����"�� $. �[�93+�K�Ԛ�\�!���
�Q���/v+��й�)GF���+��m�Pf�m���N7��u
��0����[�H�od�3�s<�ye3*�}D��.!+��f�8�+f~�:#��z��y=M�D��4�B��;����8��Z.�-[ PC\���I�@@�kSJ�jq:�P��o�BtSR�ip��j�������uzy�I��曋�ez�o�jڦ��Lxv��$I��  F I�>-Z穕!=�}!ڇ�n���OԦnf������6�H�ͳ�g�\�����k�0��zTBߡ#[([W�6R�����:�7I�\�X��%I�ШFRAxH���Gu�]��n����}"7����9��T�<�E�T�@�jyd �(�/�` �< 
[�G�\M:��0\���s	i�U;�_1�������-��sc=��6�T�d���5"h	��n3�c���Ж� #-�;����x�8>�x�o:ߗ���NxӨ�mzS������ћ�o�M�}����N�{�}������w������n�u�qq�)���N����}����UP�L�7�z�= /q����c�7�z�o��l7|Sٻ�����d]����ߛ�x�\v�g�G��%���y[>*�= �9���eC����V����VK�P$ڙ�4\�j+�*-�pèZ�v�"N��d9��PZ�<YZ"�J��'3�/�6{ْd3[C�}�r<F����h;lh��I��%�&�lk�Ͱ��v�le+�OWR�UZ,"�2s��lée�h2f=33ِ$����x�ݛjݬ�U���zS����&@xߥ�U�	�>Ү���|�U�K��]VU�N��u��� o��2>ҿ��M������δu��<�o�m����3d�@�89�3�I۪<e�ZI�fu���e<9�zSq��iJ9�i�X��9�8�(źi,���享�g�
�d��lnHGwJ(���M?��%�$����S��d�Ő�.�7�y�+�k�M��7͑�}��7���x�
S>�)$I>����)����w $�feEE55�K��dyS�BG��!6�.�7���x�(o*)|�1������>ְf\�Xs���c�|_�R��8����10��f����zŲ/"�5S��"[m�,s:'f�-�d#����IQ��D2�L�!�3Z�PQ�Mw(O���};�)�K��#Žo}����2�����y�_�9�SR��2a���M�����^xS(��u�$Y�lփ��� 1������>ҥ�&j�ࣁ7��z���ޗoi��ߴ���"|�w�V*V��Ha���#RzÂ��yD���3��x��	�濪���Y��N�2���4-� �dݜ9k�x�ʅֲͅd��'/�F���QI9���}}�M�+���w��o�c��}n�輦��%&&JyxjVWą���B��~���Ρ.v�����:@�&�YO]'��qHc)�d��'�lh+s�+z�u�LM��ZK)q��dنO��r'N�"����P���I�$�!1���9�I�$��/���bD��׉#��ƀ}�"����3T� �K6�-��-�{z[�l�9��e;\��NPK��˜�F�Jk�
���,j)\��G|r����|(Q�|Ҕ8E��7���n'��t��#K�O���ehn���S)Lv��L"�;F�J����a�T��s�@�[R]�G	�ю��s�_n.@b�A���c���;X��xW�Y�ZX���6�K��t0f�5������f q6�4(�Y�tK�!��gX���� ���!TH���nO�9�PÀ�t?O�u�w��^��Pury8�D�@�Q��7�~�H~&0�~�_���҈��puo�����0�@p<��r�G$��8�Õy��������P��3c�؁�w3�M�C<	��w��uCK1���f��� t�F&����5`�K�	m�$���haq=�@�G���d5ʂD�*Q 9`C�P�$��b�>���b�qI|��I]�{��nTx�wV�E�M�ޗ��!"Pv{�$ѣ��2���l/ɺT�B�:`)���D���?2?���cF�yS�_se ��6�"1�Eqqnh瓥��=e���h>d
��׬4�̘7Y����w�{ȥ��#�k�~7�stks�{2��|M�Ky�U�J�'r,1rg:TP'aki~w����q_��9N��j��t�w�Ij�I�z�"܃���C�Ϣ�T��s�>��W�2��h ����7���=`�ǶJ�jQ:R���h�(�/�` u9 *ZxB�.%�^`���Y`� fq��F�y�U�wv�L�`"���^��{�w�[?��I��u�z�o���j����D��AF*	vGGN^�����7�u\-�y�}�ܫ�⯟8�U��;9YE�k=\�i�GL��{�n,W��g���r�4yO��=��&y��}k���}g�xϨ�M�O��}��'�wN��!���\��dG�f{�$�G�v�-�N���	{7��e���	����:.GzQyJD����Bś��L%K��rԃ�f�di9�#Si�쐇:TJ~��c��n�~�z�|��,=((f(�,��+����mH�f�پY-��l_�mV$;1���ȣ7�RJ;3��J������f�ٔ(��y�6l�w���x���D��ٽ���|�����=e�\��av��y�_e����/�=����Dz_/�)߷K��"yO���xO�����Ŏ�pJ�xx3�g՛&Uuڥ���\RN1��41b��=�!���n|O�w��Hi8��9��.{չ�����kK�H�A��/;�jm����VZ�:���I�R�̣�VOz��h�d�+�Z�e˕z�~�2� B�W�J	Zɑ}g�F���� ����ʭ�
M��\�q���w޷��piz�,n����Ǿ�9׊W�wu6^1Q���&9Je��r��AI+��_d�Q��$�e�����V
��Y>�9#�e�-�f�}����@�ԇO���r�\+��}��x_��e�`w�pb������{��_�iiaaݭ��J!8*��|������M�퉽g���B�Î����3��`bZA��zUre�yN��<�VZ�e�`��l���	��Z��o���r����X�$KY)IEk�*oV�H��,�1Oޓ�}c�/��|�.�����@�}-PQ�u�z8��Q����b:�0�w��uuu����x�)/�Թ�<ͻ:C]G���r��RY)3WKk��1[[)��9V
J�Ef�ꦘ���7	��b� S������̖+	Z����V��X��
�p*y_.TQ��ޓ���K���{��y�ع���(�q#�	?�Y�}�'��}�&MX�-YF�SI��yyO������=o�;��MO��b.هS�����z�W�1�B���&Ia8A�az T92��ȈH ")IR(ln�f
�z�:<��`�1"T�訞\ÎP�&h��g�%#蘯���1��ـ�u^���Q#�ŵ5��4�x�暄�f��U=��
;��B����u��Me-�C�(�`UPiXf�x�0Њ�iw�o�h�IT&�2�3��p��4^�m'�_�߈6��uز��<�D�-63v��F2B�k��D"����|�N�D���0Iy�1�*�G����P��a{X򩽲�lr�N;oq�I���L��uj0^��L�Lu>���dm%�wK��g/_�B0G����XG|�����w�"�:�/L.��a��_~ ����xŬ��*y�.[[p��ȳ1d,pMOn�6Ч�5�EDpl��4���kw��9��
E~�F�L��%_>�Kն������.���L~צ͢����4��^��b�2�,�un\�������8c�.��D:q��Y�혳"FΈ����쩮.�ĕz捖�>��P��ǔ�x��� ����	GD�%�k��Ş�d���ʟi�qw<�O�'�\"z��fD>�n�%�x���H,�#���������Y�7��m�����1�O��>j\P�]�\;l��Bͷ� a�mS�r�]�RR���;W[jF>�&u �8�>�u���uZEV�����Z*��$�+�ۂ�	ı'�e�M	(�/�` = �^�F��I:cz)��F"k;�����Zd#���vTCf�D��h5!�tIr"�����6i�/�c��Ǩ�M�>!))f��l~8�9 pD�!���wd��d)��m���;yg��-��D�V�m�޹�;�x[�w���2�;�)v;�zi��9�mw�D�c���uK������P\�pCo�?���w��2�m��s��-{竷mzg�
o4�w��wFz��;�-}g�L�m�������K\S�mo�����˝��+{+�� y��݌�v�k�����,��uB<4w�7ߚ�����S|�x��bJ+�x�DQ++�����+�Z+��Yq�Z1���[g��V�䝓�m����w��L�L���w6���vB�����;/8�Ҏ��zi��;ӄ{�p,V�P�26v43o�Ǽm�w�^¼��ɑ���rw���>x�7/�-�V�Uh�<�.��;�����m��9C^z[l��9�����zg"��m�;#x۟7�֛�nf8/�?�~~{���t��w�p6��'����_�H,��x�{ɋ��5$i��XT��bXi)%�xI��{��b(�w+���+^�A�c��<��[���O�
�:7�ɜ5�0�H�B�"�K1�I�R��.����B\/���JN$�/�#�����0�����r��mk�l板��8#�����zx�S/-������m�,��L��g��uuaaiiqqee�g^�W�l�K#MO6�� �y�R�K�{z�[z���,x�rg;����o�<�U~��us�2o�I��Թ���s��f��J��ޢ��'u�)>�sB��.��Vk�TV+\k��z=qM,։�U��-I���W���֪���R+��J�/7"��Ph�g����Y.sy[�wޒ��-�a�'����!БQ����wdo�A��4`��Cυ,��~�W�xi�z�;�|�o&�;x[�w& ��^��N�K+��=�}
�v��y�t�o�l>��9ΚT�a<�PV"�`Ŕ�!�5lԒV�� �(��J���ӪK{��N�/u\.���:�B�������|��g��V�zۡw�����m7�3��Eo+��y���K����o�	/��/���>ZٔU0h��Q�K�3�ۊ�����Q�����,�q�z��o�{�
��ᑝ�l>�ON:+��H�)�8���w��H��3"$"�$Ic�1�����1�1s2��Vek�ه��'X�wR�҂�3=!Y�?)ܺ�b���V�Y�M˦jbu��R3�e�hU;t��U�V��3ZCA�����U�tF���S<*:�|������m�S.��4��Q�T��6�ކ(�P���}mB��Q��f7�5�aK��ǿN���vZ�84�+�HeL� WjY<����!^/د�{�LЊ����zL�a|��s1IL*4���b��Ǫ�E=0�~�1H�jQ�V����U.������<B��9�<K�h3�����Q�������~�Z�c��P�{{�K�:��+�Q
I�ڧ{8;�O	B��4���1����s�C"���a�#�
kBv�
d�E�^ D�Ǹ�9��c�X�4X0��d�en� ��K�s��IYZ�[ׇߖ3��-є���_F+N��^q�s�@����ۥ!˕�o7
#{u854����15�o�ZF�r{���}tN��[��+���e�a�K��C�_?�`^�Ж��jr����v�sͳ�7ˡ��Ѡ�� �������`��k��R�U��<��+%繌%g�{�?�kVv�kO�����Ů�'�Jl���c�s,��:��.�BQ��5rIa�p�"�'�}�.3�������n�oVSA
k<��/�+'�N˜v��h�� ��	��N6q��匮q������=���� �Ɏʚӊ)d�%�>��V�h�y����Q�S�mv�oФʊ�~�(�/�` = �c<A�.%
d�PGA@��5KR�P4�g<����>��1_K��utݔ�Q�sf��w�-��O���FR *_G��m��DAu�s�s9��s9O��q�	��C��5����4�=�|�����z�pr8w�<!���y.8ߌ���4:7�������'�ùC��� �ʂ�ZlP�&x��E�����<㹕��s�8��g��:7�]u���������<��-u�M�6:ߎ��pF������{�#=2��Q�9���{����\�K��uz������^��X7�R>K7VZ���R�h���]Y�:�I����rk4n����*�ɕہtLxq�z����#rWrMո��R�|K����ҕ�jIayq3���f�l����k�i΍�<c�.�W��yn��y9��"�so��q�K�]�<W����=�<�`���2���mNFW�ѻ�`��Wܶd	$I��	՜'չ͜��S˹Ŝ�s�9�`����yf8���� �<�s�8�8��Q=|ڲ�]��ᓖ�Ԁ�s-��{8���<8��<�n�õ����U��Е���Q�X�����n )e�e����F��z^[��Jpc�qkt�Eq��'�F*Pn\I���j����VJڦO����>���2a(�+�Ը����1�-y�{�s��s�yJ8�ӹ�Γ�[��p6�x�A����g���μ����jLK�lׇ��+���+�$�_�/��ڂ󒻵Je� �F��u��
�Xc���#JI�|�����}�%Ft�g���(D���yB��ùg��ڹ��A�$�F_B�-F���Zmƌ/��.\�P�)v~jr�็��0z�oH��p^U8O�;��_���19�W�˸����abB]Z�rE����QzR\5Zi�R�Z�R�-�F�z^�[�ƭ^��}�ՂD#V�Z5&��FX�W�*~��W��H����ѺY��p<�8n��t�qO�� �[��>tnC�Y�܄�=��r�s̹�ι͔�p�9���W"�3��<̇3�ܯ��7�+=�0ǝ�֬a��2ab�� <wސ9O��r�:�Me
��q�#yT�8�ڹ��mй�N\�I�A�C�������/B���W��}oEY���*W�/j��W=P+�2e+?p�fK�nF�l�h�s�s��AUU8�T�
�z�L��4aB��z�
��)x�t�dv�t�Qn���P� -�>����BE^�+n�
+�q�!EE��Ȉ��$I�Q1�HQ{��!S1��������Pc0�3�fZL�?7�<�v�aY��~�.��R$R�U��Z��Y;�,�t=�۔V�u��)�,��BF�W(�='�h_�栴,S} p�������X���E�sV{�V����Ű~�8�[�}:N����TA��TH����	i|eBx'GG���Z,u�=��&mX����0g2EzM��
۩�{���Y�ڋ�{�
p���}'�l���6d}ru��bǯ�Dh����^�\\��c�7�I��h���Q�3���\f��HHW�_Nң?5�qz"��hDv�f�H�C9��( -�y���z��v��d�8 ���(�Ő?�A����I���;���MK���Q�����F8x��mwU��8�K�Q&b /�����?ܢ���~���X����-�9`l�kn��FI�'�V`�M��=C��A��#;���!X<�
%�9��v�x��C8�G�`2;5�:N&��~�6��="�3@C�H�T;Vh�>_U��w��Ͼ��p��7)��EC[%Q�+��r�tw��8TK��	���B��wy�D�"�`kF�)"�(2��5���T���T�0��^����l�%wqn���K�w8<ft+!B2~O9U��8�_�����Hg���N�x��t���ok���RTk���u��_��=�;i��-�5pX����T(�/�` E< 
a�=p.%)䟖���4�T� �Zl�	)ţ؏�RyCE'�� �7#�����Sm�E�ܲ�BR#"�̳vl2O�dJAғ	K)�xZ��y�,�it#IE��l����H*�G�>�#�����[�}I�+�o���zW��}k�k��޷�mF�}��u�޹����9���z�V�ge���TP�ۅ��7K�]����]��U`������Z�}?��%��E����xY���.� >��*�^�z��Qu(~�Y�4}����v�o2��6�P��l)�䏧e� )Oj?ff:N� e;-��ǏqvrH��̣��8JA˔2nj��G�2[�N��)S��)�#��82SQ�\�l�P�g(d��Q�6����l����K��R��� ޗ�"3D�
�}�B�ϓw��M�u�}������x�!>^�1/����zW��Fmxyq������Pr��xY� ���m�����7һ6z_C��}	z�4���]���:��}���݂�]o�{�]��9�Gy��Ȼ^�/�w�z_b3dĀ��E�)P��Ļ�P1�e��z�u�kZ_����\o�2oi^�G���y����=/k��[��MUԯ>�/L�z���x��Ȼ�y�M�8C](~�w��r�4���]���!5�e���.����z���/kddw�����&�ԙ��ԭ^6���ya��G:v=}��I���'EZ�ϑ�q2�`	:�N��Z��y�nQ;٪�\A�L)�D-X��Å$i#�+ԕ�q��M��e�e-�_9����z���޻z��:�w�P�LXX�w�c���e&������em�.�w%�^�7�۽��O�śK���jtu~�=�9�5�'�M��)T4aAP� O1���E<C��B�nb�[���h?+ڐA�CkA� e�ȳ�7�L9�O*R;��Fƌ��X�QG���F#iaG��}��둋�]����w����ˊ�]�/��X޵�o�wP��Hܻ׉wW�#Ǎbb8pԨ!B�w��(4�k��Z^֮`�uY�.���E�Qg�"�Cx#/̳�I��1Aj��m�mEpr�F�R�{��Z�sč�����ZpÁ��8ڠQA˓��J�Ii�A�ȯ��pﻊ�o;fޗʵ�T�wʻ��;�UĻr��������zy��w���5�]����˼x��'P�``�ޕ����:�p����yW��ݒ���wE�:�g�=��#"$D�$�!F9�Ȩ< u%�A䈈D"")H�l�0��m\�,���N?l���Nţ�Nz��k��hJ�K��v��V�^�4*���G�/\�h���He� hA�4?�����N;=
<&Z��uP;Z;.��CLƴ���� @�)3d�ˊ,��*#��)�*�6 ��:�����[�4i�%�����T�Ң���w��4ߜta�sւ� ��ʰr�8�
E��6�N���%f�&utW�z[���\��]������MݓKQ�����-����l��/2>�]�؆Z:^��ԗ3������t�������f�]���49� �f�K_Ӓbڶ��*x蔃l1(#vI�e�$��	oΟ�@ �c f���tƢ͂��#eg��q�U�gx:J�j��7"�"�W8�����m��������>���M��7�8��e�������M=e38q�J,^+[L��q�3ͅ?3��l�#�_�@������d=҈s|�&+�����Է&;�jѳ�qV~/Ϋx�j�ޚ�m��Z@מ�@���A����Ʊ	�1{9����e������x�\RWL�;��g���v����\7���l�ʠ T��6V�j�g~�0��Y����q���ًg�P����Z,9oϩ�I�y_��5���D��P�/��Z�z��U�FFP�~5��#��Z�$]�ɀ(�/�` �; zZ�AplI:�K��.b�{���� ~x�������:l����M��}�$J�P���i�,rܛ��O��m��`�UU(.8��K)���k��󖾦b���M�޷�;ћz_D�^zS��u�\�{S��Ms��L��0o��]��������r�
�K%�#o!oj�}���w����:�^���K�d�e��������z�����L���S��K����^�g$�Ϯ�ݳ��Kj�M~�	������������A�i���9��+�40\�t;��uN� l�aȢ�V뤆�C���7-O�E����xN���S�a��5�i�*󓑬���'۩#�:@�lTT��'��7�o��}q�������}�Ûj���wo�^ҿ��;@�K���eL/I���~v���m^{ٿ�� �|�i���� rke3�ӎ���j+��!��-W�y�ְ�#�����d˕D�����n��c��d[u5z�^��9���ֱ�/�5&a�F�����_��ћ� ��7m�l�T͘�4���%��Kj��L�wɛrx_�ś����%E{_oJ߷�{�o/�כA��IO�Z�����a:(�}�Y����c;v�<�A0B�ۍP�?~��A�c�M��Ay�/1��}הEy��ɛ����bś�P��%�z_%�޴����x��e�v/���w������ަ7� ��~�6 ߭�ZPQ�ۿ�-��C�1�V�:'����s�Z�MfW�U�v�sna�SW�e[o5��YW�h@�_�d1��Η��A=MA������t�wΛ�y�8o
�}߼i��}��$c/i���z���Nx_�7��Yo��7����e��|I�����;4h�	$O+��*n��N���"k�%%)I�v9^���xhe�dQ���l�����A!k��&�Cq�$�<�8�i��d/�2�H��Cs��rXOSX�)��%�}A\���^xS�[���%ͺ�7u��czӬ,��&%%2B�7U:��(NÕ��+]�ĕ>�;�[qX4ēIR�ӲGr��e����a9d�U���ӊ��a�u8W�k%��I��FV�#ZY�QdArXo�������
�.�7��R��xIw���75�T��#@A����G��00�����A����I�$�A9��\�-�1#���H�T�k��+Km�dqRl�lE�`�� dO�˒�e��Ss������L=Toq�T��PF蓖����(�g��x�}�Cd��S���-��^��-�=Z�+eu�	:5��?@i=A~��-�"/:��'�Q/����H��>X~�f:�:-�jeW���(e��RΉ��1d-��5���ȩb�.��;�#|�@%pɓ��yQ�����>�#��0mT�^�U�\���r}!�:`-�-
q���Ec��uN�-B�1!pBز�W�#�ѥ�g���?�[j�,2������$���YE�Z��7bQ����� Va$��� ��Q|w���F���B:8�L�����z�3Azm:�=zam���ƥ_8�������5�N�I"H�R���ݐ�t�`��A	-��-u��5�����XD*���0d�z�N�
�L�� G�����`�0c6&�����o4笓~Z���֗�^���RN�$&1�	�[w�#W�s��1�d�˦�u�9f��_~��tM�Ư�P9� z�,G���/���NX ���e�=���3��-@�mEm/|T��Xj�![����C�+��R�˯�r����Mcμ�ƍ���(��,΁����a61*��8ƴ�B�(:c.֏�����r��=[m���[���g��;���ś�E[�<R=��Y����CUh(�/�` -9 �[�>��$
 ��`l�
�CN�ZT��5@�&5��8Z�,��h]��G�[}8��O�P��߬}BRǪv���w�fL��n��<�d�4�Ӝ�3=Ƴ,������4o��u�_��p�*����� J���Y�D����m�C�x%��DIҌ�m#NJ�=)��������(��y�v_�&��w#����@�dMS6���)6�d�� T!���@��Ǜk��Ż�x�o��Z�~xש7{x��j�]+����Rx�	o�w��C������m��z��w��~�z�sz�&CF��xQ�H�.�sP�����-0!��X5 �p��ޕ{s�C����x�3]��\�YZ�n�Y���F���_7���ϣrJ��u�� 8'�8�����]��:)��~Sz�}sz����欓��j��^��n��Y��7�ʨ�(Tb�X�w��f���]ݼ��wM���]A�y��C�zז>�!��ĉ%L�tWUq�O��P֛c�k-Y�X��zW+ovz�(�țe�JD�]}�w�Ļ�Qs�V�G��s����!���N�p��eû2x3��!&gȌ[�f�wE�V���]oؐ�f�w��z�O(J<dX�������"���!��7���T��iSt,ש��b�ciXr�j7i��2A�]M͢��t~����M���o;O�W&fCf'f���9�v%�n��>�(A�E��/����Ώʥ`�F����l��Z���w�l�]뼫��J�]g��w�zsL�i�!�Р)S&I3f���Z�ϛu�y��F͛�k�1b���&E�\����]k�C&�-F<����L�F�r�*{S*R:���t�R���SU%B���qTT���Ty�f�w��=d))�f?o*��~�W[��8.�z�.�q��)�(w��8髓2Jo�_Q��]�t/x_|yq;�}�v��]��`qe�B�������ƙ�m�}���/N���+&PS6�XLn]_[s��+��P%��>�:��y�w��f-�ڧ˻���!sy�)��E�C��P���C�z��{W	��s��@��\�����
Z[���6++l�T[���yѻ
ؚ�k�7�I� 9z�Fy=�B���� ����λ�A�j�1Ec��	"I�d8q1��� eTI����)�s+k�fr�\��|��1u�v3������%�_	j9�ú�:IdQ����%!�_L�'��EA� �*���b�
�~S2��D��sI�nQ7F��YK�|0AH�D&�����hQ��gW�v��ҋ��/�q�1��!-��Y������-:��.s��_�"�wh7(�ەǷ�.Ǉ"B�����L��2Κ�W��Rd�Y�f՘%r>�s!E̸����aq�M�% �~� �n�:�$�d'���<���R�8����+�,s��@l.&y�R<�ԗ|�饋���U4��%0)<1�#�?���C�Y���: ٍ��z�������?�֬�]o�d:���6�r�GS�B������Hj�h��8��ﱶ���s�P����:�M��b�Y��I�l*����i� �������(;�cs�H��Fu�#q�ƺD�[
UK��F��Ć�k�e��桑����y�f즎v��0,��Un+>�*�<�
����j�k>v|ryK&m�B�m�fE��ѾS ��z�M!ᶛ�kg�"�$$����ʙ��a���3��.0����Ĉ�4��z��I��%�����S�Nm�K���*���;b7���>������������驣�(�Y([�Qg�*��a�D5�(�/�` �8 �VHD�lI:Y����m?a=���O�!�Q?ǒ�I��o3���_���φ�` wL;SK��A�����F�H#)� � 
}U�Y�}A��7[�/�{���'wY��zs׻L|�F2������~9r|6ӊ�/P�M"�߿n���z��l�D{���u�9�ͪf�
���*�t�#�%�vBZGj�H%q���c-i�44Ð�!��Z[Ǳ�ю��юֆa��Y{�t��t+֨D��RZR*�c�Z2i�������Zo�V�	%��+s�W�pe���pH\4�{��P��}�(y3���z��;��޻���i�%ڑ�{�봢���g�m�;D�7��H�[��GG�^B�g'r]�&gΤH�&͉epʌ	�f-��]��L�K��M�+�����f��������7p���ߌ������}9�|���7%x�h�������=����.;����������;�����u��]N;�u�<7�:<TH��B�V�iU���X4ÐԀ5��(��֑�:BU�fP�ڐ�3ްBA��Ull�<W�\Y��y�7o&{_6���cd?y��c������y�!��]�7�1�f�/����y3��r# �$_Nt{
���T�@���#Ma�&�Ʉi{�Nu���=}��jMU�C�F+X���r��4��pP~�oNz_o&�JI?�����<�t�S���uQQRR�o&�WB�����̟,2�4
\ K�ɋ'����Wt+���*W6�m�Xm6�2TN�� ��0E�V�I�D�,�(���`�y���R���֪��M����d�J+(��r�W�<J��+���}�0��0^���G�+e����Mޗ���#of�2Z�x��7W�x߭�nv?y��
xs��-R�߼����r�_�g�p��U�>l�Ц�%ʚ5CCeq�!Ax�xӸ,T��W�}����5�}훑jH?y��R��;��~�����d��}�2�`�r20�}�uW38�}�<=�lk��j�hRZ��X�H-X���L4�KՊ�b�ZO�ii�V�A�*%[����ZY������wn�׎.�7�����,����$ޗw�?o}32���w���ST�g��П7���S��@�I�7�h�!Ee��D�$�4H9�$=`�!�)d�D��l�E�8�}���D��9���]��d�j����Ƀmu��!���83F�	g�($�����ӛ�g�4ɺ���fF��HHI��e�s_j���������ʸ\���Y�nv��N�����B�Gʩ nz������veڴ$z�<�R�j�]����c�Hv�#%�Q��f9���Tx�PE���aHdM<߄��=��o>�����N��e2+[�L�_��~hCn̜9�?���&a 0
�r0k�K�5&��Onx���G�N�sɧ���>b?�؊�Ƴ�ظ�<uF�vb��	Q`�W�DG��g��J:9���u��P:f���.Xo������[Xo�����T$�ek���
wi�t� ݄O��IS�θc���n��[��FSc�i��g��ޚp�.�qE���nF;I�CM�\�C7��7f��~#�����-+K�� ��2��6��ɋ�_F�������;��KB7<6P;i����P\����#
�\e{�M`U�2��a$���_L\����	�<��T:�Ӱ�����B�ǒ�Z
�Mmճ�?�N4�SMq0��K����)�� $ P{�=_�c'V�&�4��\�����3��>ѡ.�Rΰ	�kЭ��DH]A??R��������*e�N�#�=�*(�/�` �9 zY�E��I:�ը�c��/��,2e�P��Y����*Ą Q�)ϴ��P*����1��r��\ֶ�H
 u��~�5Q��{7@���K�,����>��t��]�<ߐ�l{��4�bHq�����pN�DEyΉ&�I�� ��lي�2�w e`���J)��rq�t�0����/ԍ���k���.�w�z_��Y�yy�1��.>��0!���4�!ys��w��߯��}A��j�N�=nuޕ;9�V�����HN�v�\"[ˡHE�e�N;� ��t�l;�BQ��ItV���iY\AZ霔-n$E��N:AJ�IA�V|b:M��i��t�1�K�]�B��p��ڽ���>�+H���������{B'zY���������>����{@��̙M}��\�c[.���f��|�E��tI�đ;(;�'۪)N��#H
�ݼو>;'K'[�����$�2�Zc:�0���F�(�]k�+��8���~xW����.���U���>�e�z���8^V�{��:t�����^���Һ�
 �5D~�SLQx_�wӻ����K���ݻ}�e�z_�w�z_ܻ��/�w{��N_sj�O:���@/{����AUUQQ6l�j&LР14D!ǻ`Q��^V����	��^���`�+���r`G�:�ׁ~du�;�G~7������ǐ��)�ej'��L�cȖw����\"N�z�bR���A�cp����R&������.d��OLKWλV�/�{ͻb�/��
/M����uzW�[���dJ�]�yI�����s���

2�'O����޼����:nب9c�̛̻fy�1�Z��`޵|�/���쥕*T�8	�E޷G��<�����x�/N�x��n�%���x__W_W�/���K�\�����������{WLW����ݫ���*�}A�ۮB�����3��v>��"E�¼���>1���4�}:t,��>���G����>>y�+���y״���p�^�Z�0_�\){9�]y��	�%J���ὬHg�{�ƻ2�u��»"�o��w�l���sHg�#ݬt���-�e�v8G��~������/Ʃ^d��>�m��G|`ي�#�V���"����n��2I�$���zj��燂t�n�M������$IRQ)��Q{��1V1�DFDQR�*��g�3s��&3��V
���A��=1���]������R(N$>��'����lńPxˎ�Eʍ�Js#��F�l6Cm˭_���$���x��5z[x��M/��c�G:�o<�<��ĖX1��Sv�c���6�kf���OL��JW �CƳ�6��4;��H�\��'�ڔ�f����A�6������ٴ;�PH��W�U�q�SX�ۏ�H,�C��' ��R�̅�%�W��b�О��>�9Gā�ؘ�M�!�3%��Ai��	���+#v.RFvA� ��3��`i�>(Z��l�AP <��cf�J#N"��hx괱��Pm ��CEzƟh����Y=�U�B�0�a����,�P�$����7r|���5�%e�8��+���0/;�mF�h:���&=:���T"Yw)0���t�Nzr6��Oi M���7և�y*��gzd� <����r��=���a3kF;Q3�H�ѵS3�K��5'���`�x3_��p�y��O�c�2�E��<w�\���|<4"Ā5�
ܥ���H�3�e�}�v>E< �1�џ4���qڸ.��>�Y�h��=X���r�cׯt�4��N�
u�����}W��q��ϥ��ڔ���r`�`�f�vA�F�wZ�%(�/�` �; ]dE�jM:Q
G�i���l�y#g�(���m��\.�c�/=���|���+LES\���SG�;t��/�ݯֈM"���}@���=,L����1�轗t�����u?޿���9n���;�y�3�,&�]1`�O��޿�o���&���mU����xgo������|�w�zۡwV���'t/��xi��3~물yHG*Nv+/˸�%{�lz����v���Nv�Uܗ�]�m����\�-��lϠ{�(5��V*%Jы������N��I���a&�Y��*�����K)�XR��1��Ҋ/ɕ�!�c�[�*����R|æP�uVZ�F��8*��pP3ܸN�Jv�=��V띿�v�7��zg	o{��Po{�Y|��m���}���/�ӗ�Z����i���(��o݋+Q�vꝡ�-�;?y۝�a���;Dn�z���K�{g��E"pۑ�n��>�Y�O� c���E��xVa|bzoI��a=����JI>�(|)y�Z1C��t��g���p�u��^:��vcԈ�8�;o[���w����_ޖ�;'yg$o���F޹��7;��6lÏv
/�-�wvzۥw�o{��u9� ��վRx!+�)	݊n�e 1(���M��-��/Ŕ⯋q�W��̉D#A"p&Ւ&�/�#�_.|1�c�ΦYk���6�Ӽ-�Ѽ3�w��a��K~��,�m���wa5�s��V���v�;+�xy��mk���y���"$G� Atb��%���J��-��c���e/�-޶(�;�x�DF�RG6u,'{QQ���6t?t��$p��O��ߪ�0�4hb���7�j�DE�g�C�U�R|�0�Ê'�#9�ݐ�HސjE�1
���	!�=*&!F�Zo6�R��7k]���{1�?�&�հ��J/U.�y\c�G+A!�Tf�֊���"��U�K)J��q���^[8��*WYHi�"���jM��r�;���%E�����w�	��;���v���wf��+�V���.x�	�L�Igzi��Ղ�?���f]���襵�ok{�Gzik֑�����j�p����
���[˂�r❷޿ O�2�v�{/���uI���<޺�w.z�zK�z�e��;�t��ѯ��t_��<~��|��99>�	���+�d�m��H�C"#"R�$�p!1�a|`E)2��ȈH����vp?��+�"%����e>�����qR?k�zm�`�bc`;`T�T|�.IoP��))��1�8�<L���fe�����P?_a���N�Ee,$ͮe�����;�}��X�'7��D�c5|�&A���y�qK椸N����c˝Q_O�:�Nm������
�}+V��<S�I�,����q�og��4����+"��]���D��l�Uq�eS�vu륂���Hw%R��n�_(hv˄�b+�!����q>����.|'-�����J)��Y�5�z!�:z�ܕ*�#1*����ji�V@1:Y�
�DME���F��T���krβVL��X�@��p��tw�{Q�(U�*V�D�Vo��R3B��د�7��?U3�be+3%'�V�l����{8e�὿���ZgI�k���b%�h�I� �o�E<q^hS�ɔ����u���\�}SJ���]|v�9��,��5���{��J-�"��QZI��i��A@Ws�0����K.D�.���TZq����^��yxh�qK�Ǫ��-����)��+�r��}y�l�s:���,S�Le�)֡���-��%�ɑlKܶBQ��	�x�]��e�{s�aI��7ƘEF
�B�ͭ��n������Bc ��K)LעLad�M����[vh�UƺqK�Kt&�0:����kw5jCo�������(�/�` �D �x�D��1��{�ӥ�a�&UsE��ݔ<?Wav��P�3=�d�}�Y�%��1���Ȯ})�ږ[J)Skqj���D5�0�E��Z���DP����'94)w0�a]Ơ�����C�A����嬑p�9H�8	�]�L貂g�3؉k�9�
2�Ĺù�]ƹ�/���0�S�`gOlD��Vⷊ�⊋�b2Q&�Z���_L�b�"��ͷ�]�Q�]���ΐ�.�py���]�x�]� ���]��������S�]������5���wI�=�i��5/�_��YW����so��eǎ7|�#G	��y���&A����7^�|{���Ƿ�����q�&q|�8���������w���������T�.S���#��J�ޙo����v
pN߻�H�I=�?r�B��~;�_zͫ�M����w������$�M~$�����p�f*��P0�ρ
��U�
�\�F�m���Rz�b��?���4�7y�ɞoҋS���;��*WQ-P< �X9����
��~�l:�}�^��6ZHs�\Hs�@���\}� �I�ܾ�:�7����|�-b	4aN01�8c���J+"�����	��HuB|{�K@,Tx�·7D+�o�g�5O��������.S=�Y}�_#�����~�$�<����.��H��1n�1��A�:c#vp�Nt`6@��yB�q5�s��"�?Q�*"*��:��#D�79���dE��o�·��5��w	�������S�.|{��ܾ=Nە^s�����u|�����z���x���]��>�������ҳ%K�큙�{�.�|{4�K&4^��<�;�7-]hZ9�Y�B��3g�;�1������"&�d1#������N��k%�=���|ƻ<�q��C�-L�]F�-�n	��1��	5��z�Л^����7��t�,�bu�ܻ79a2�\��v��l�0��!���o����비!�*��ݐ��[���}��|�����n�s�z	'��a8�@�g�D�ja��"�wy@$ ���V��r~;է^�V�/���Qo"[�7�J��|�G�^�x^#��ɠo��iz��d�����ꪀMJ�V�[U!�V[ˊ�0�[����u�F�(N]�^z$����{΅���7I�����&|u�sV���I�����z�y�{�j)�\���T����v��RZ����ۥ�ڎڹ��M{�f�@�V;S�E-��g���J���VJ�;S����
���Z)�vΉ+����r�j ฺ�kg�h�\���;7J��Z:礖��V:g�55-�v���J7���sN�ms�Ԝu��r�����9���TUZ�6���9Qu��U���
�Q�JG1�4���4��q&s��8;���H;�8��;_�?��;�n�)t]S���?�Q�ʹx4gcH�xDCZ(^�8c�q���q��ّl6��������g���x�S5������*��j�WO���W:t]͍����ьt�^=���Y�9��222""�$I�)ǜ4�v5�Ԙh�����9�3�bp�Q�(�,i�À`Z���IHK?�rrX#K�h�?z��)r2�`��y��I��ޡ��7�a,bVa�pqb��
��շ���4�b�%��4����(e_��~�WP�x��p�'��NW�x�qY��Rf�ٳ�eF�z�pϬ��7IS����?��u_�wRe�:�{س0 Ѕw��TT�P%��<p(��s׬�(�Yߑ��T[f�8��U����V�v֤r��M?�<H5�	A����n�C���mQ$����G��B��˲֠
�P�Vf�D����G�]er� �Fx,�<�y\� ���vm��x��X�����|�����p:��#w�A�0����������j���#H�.���:����1 ��s��S�8�|�ѻ.�D�QymqB z}�O�a�k�h;�����}T#q�GZ�t��@K�^�Ѩ:I���s�J�b.�����ꩂ)��V��MDt!�s��,/�o�
�h�a�/�����Ӟ��L라T�@x���QB1�;��5��0,�()��X�!_ α��!�\E!I��L��p���{Pԁ>��O���p�6�WaP�Z�m`W����J�Q��>�`!�n�́��&l��)Gf��`�vM��_(�/�` 56 jRdF�^M:�	�@�*rPA  8o#(�V�
j�}��ַxd=q^0H��o�����o����X5۸�h��� � � S��"S(�0���(ֶ��w#e7ٍ�Q����ͻw�`w�Y?���b�E*��xy��-���w#��,�u���7�x�#o�ZF��
���f��c���G�z������;���KzWo&zW�
G���S�:�f�]io�f�:�{>z��9�]���>����E��x�,���yE�=���l��8���ru������k��}�v_/ ��ga?�Z.��¾]�~����/W28qB�}���cӽm]�La�f"���YD^r��7SxW[ћ�����]ҳ�;W�I��yy�bIt��+{��PG�(R!)���%p��Hr��Y�;��i^&�Q�a� X�,�m)�4�@8�\��7ެ#�!޼��Î��ui�%+1xs.���^���/{�ӗ�땬۽�)���䮻ҹ�^�=�܊�N�<9�d}�S��M|�IGQ*Űj��8�T��Qɧ0����9�Y��HgHǧ�8�9Ca'��Û��5��%�8��eJo��k���wv���X/aI��j�a���6���w �����L��fc�jt��8�R��<�T'���l��HI �����((.\�x�����Ͷw����+��7�ޕ��C�{3R�%k�^��zW���J^ڈ��U���]<yi�]�CZ��v���#p�l
�:�1h��)�s�E�N��t$��*D��jt��I�9ΦH�Q�t�s�)Nq�h{���tt8G�H�G�U�63ms�6�؞�����ͯ�����q�߸a�k�\țS��9f�P�-R�D��b�],x��w��|�V�E�[}o���"1�������}�yv�F�;w�d�b�
�\NJj'L�my��[''�m�R�6Wm�N��`�6E�f����Ͷ�J�Mn��w�m�mF���k��z���f4�F�m��yi3�6���r�|��%�y�3f�.[�dy��w�򎲅��B��5��C�u���n��T���ȈH����a�0ͬ@�%�)#��DIAIRP*4 i6��sl8�4h�ьt�M�D��E�9��PP�=�>mnt&�;�f�I�xܬp���Md�♽� ���Tے�N���-T Sʜ�9"뎧ϙ��U��/�)=8�N.�~�5I,>1����{IĪҝ���Li^�3��ۀ+�S��X7^��i�)�~����l���i��o%ƏAHʍ��7+���g"���}$���A#�p��f�� ;}��A�P��Y`���>��(�$���<�$�f�@�Jբ4��DA�>j�m�&E#Xv��2�	��f���ݵ�v?���'l,?g��n����L��R�4B��k�M$�r7� ��y���Ly.��܉�,��B"逴��h� �����#3M�:N��)�y�eB`$��E�?鄁߲p|�<�)t冶\BV"����b��QS���`����y�-�J����Yw{�8�n�aa|ZBS��Z���;���
�`��m+�߮�'���G<\B>�Y����n�\=�^T���޽��m�۴�O��8��!U6�y-݀��e�5]c�}��<HR��Ν�T��2j��Z�����q�����p�1>�,ʠ���4��x�5��]#�w����r%IpK�$���39���v�Z׮(�/�` }< �`=p.% �b0�CI�i�o*�,$�=�h>)�����qs@P�^Q��_��@��2R���oS�/��~k;"o���G��;"�m��9H����Fx����jxg���zg�����q}�^���m�4|,���Q���+�:Y�Ix[1�G{{�w����L�]V�����{W�����8Y���l�-�w�o+���:��. 쵋W^��{9��y�_�˚%z�Sќ�^������pJ��+�3W)��aW�*��c��"(���Z�p�n�>p�J�&)�[�_��~<d^z륷�/�a��

���K����VZ�B�-�W?�w�^<+�u�φ��I��5f�u�	~�t�:`f!�p�dY�{��f�Y�m˼s���:+e��VNV&ui9�����˼7g����I�u/o��BJC\H�U�W8+P�껵N�­�j'�O�
v�j�ۉ]WZb(�p�O?��+�����bq�:�h�L�5�J��Z�T<�7��U��Y}�Y��ʛ��S��,I+�y[��y2�����^xg��6hpy|���{a�΅K��}T����<��#���}G�r>���W���fyg<uްy�1��mݼs�w��^�|Թqs�<��-�w��#����z1���n̗�����%��w�
�v��	tr⣝ ;?'�2��|�U�	ʫ$YN�:i��Cy���.彜�`6ޣ!eA�=�M��!�������}]��ϊ�q��Jq�z�Xï^J+�!���t� Q_�*�u^~x�`\'�/ųV�?�'���+��։���>����u�����%�s��U��B�s)o��m�m�w�z[A�l�!��wf��ގ��|��~ࣝ�s��.���gO�%Ksb�45U�������x�M�&�5Zħ7��y����+��mn��:xgo;��2��n����$�!�8��}-*�"�3���0���:kX�����Y��/B��UE+W�m�D�mWȶ<d[03)*ԧw��n�3��#'��1��m�i��J��9ޖ�;�x���U��3b<y��"���C�@�Q�m+�����i7�'�]�{9��?��i��aai���5�
��@w%��Q�FLl�&L�dɶv�'ȶN�7�V���$ i�59
T���L�*M�U���FY����wFd���rx�A� ���{����y�.[�6�;cy[$U>Z0'��7�w��H>Z�w."L'v�ø��� <��o��K��^]o[�Z�=��"##"#I�4!)�A>��I�1T3�H�JAA%�J���r_f<& �(�!H����q�F�0���Y�H���B�ٺ��x�����LbV80�`�D߻�]⻵�&0�m�Z��^6�2�+���l�V�%����JZ+�7
��T����9{O��]�h��0�Xu�X��XjC���ɋ�*�{�X?pX�Ex�o��ug'�-n�p�s���I�:�����Z*�λpJ���aǈn+�>��}�9��M'm��b3�?B�҇vO�'Q�UHƦ����$�g�����?�3,N^����{�[k��<Ea��c ]�#���k�kC��G	�Fm�|$��䆏�h�[� ��+��Өsək���� �'��en q
�H���/���Vs�v�L{�:h;�=����c�R������ 5�s��i$OGBj�>N�#��DFx��ѝ��u]����Cp�ZŪ��"~�X�5�������0ud�����o�4,�G����qSOk��'S:�2�|��1k�f<��$`,d���(Qgk����y�$sY,I���y&�H�m�(p��4I�P��V"ͳ#|�頎�$�`V�3��2�,~���OI~M���G
Y�5����t�6�4S�����U�i����[��S0���z�VkčY��դ���i`1���˒$�	�2��nɋh��k,
\.�8�!-l�m	(�/�` eC :w�C��6����� dtO���u���7B|�OYq��`w#4����sD�����"k�k{K�_`p���
n�R�1�M�Q�6��� ln�^�w��F��/�6�����m-��?�9眇[�:��cq���7o��i98�H��8ppLmLL�ːѡ���5�m�������%*��0�w �iH?��RB��������:���7�9qڜ��I��-6��W�y�mX����_�o*��)�X���q��Q�������;�=�����G�o�wn3���[��m�ϯ�f���t���(�ϛ�U���E��u�;w�z�H���T%�O���AR$A�u�2��Խ��(�Z�c�Y�y�E�G;�P&J�Z_�W�r�L_�������fm��.��Vߚ��I���2t���:$�k-,�sF.��;g�,����2{�?�e��E���@~���=�����O��6f��-V�c4������a2i_L����dj8�S1�:����gp+��c�p���o�Ǡ���O���ʇ1�+(����n�.�Z�˩�Lwy � ��˭��6��IxO�٨�<��J���1�:k���)k�������Y[k�ux�L[��[����k��:�<^{�����:�:�:Ȭsx���,kQ�W�P�V_�v� ��L�:��Q�� I%^� ϐggx&��,<k���,�wG��߆n�}���<����㏱��#�2����㏽�,�؊?���&L��c��?6^{y!?�@nłE�LL�A��+:t��AB¸��Z����<���ڠ5ʢ|�]�Y��:b�r�\�@}�����2S.@����l�\Q9��K���<���3Ӥ�%9`�.B�c�����t����?��{� ?r �O���\�9	�2M��ɰg���_�H�S�#��\�o���"�����/��B/r���ȗ|�W��ȗ�ȫb���/��N9�ι��Y���{e�0���H�
�z:g�Lə���&����-vέ[� ���o"��/��ov��/�f"8����=�6g�����leW��L���ʵ6_�f����Zx�![B����&�����|��=y����^QvB���$x�x�z�v�㸖�I�r�-�ٮ�hG���j�}���jm�(I)-�]�:��q,��X^�j����v,Z��z\��s}���:VG)Gk���y-�D)���~��X�󺯣��UJk�(�\�juq-;$��9Q	��r��0�#�j�z,s+I��՜���t�j�F�46���Y����D�קD��>X�܋�`%���J���	M'�i���u�PgV��6�gͩ�'��f�hԤ��F�U��4#������c�f�������Gzd	�I+a�H�Y�#}���U��}9�:Ӳ����~^V
5M���Ք��3k%�t�&ݔ�i#0����F�jst��ǁ�M'���Fb��G��^uC�n��8�"'�K�I��<��2"#""2�$iQFA��X�,���D�$I2m|O��qX����̀��`	Nx��ϰ�8I������.#06�?_n�֙��ԝ$!�[�K��2�vǶ�kw쎵&��6I+�ۇ�}!�����WlRM����<��9#���Ye��W�_��?�!{����y�ȶ`[�Y�fL��*��;&(p���١������������s�S)
�9y�b0��������X15,��f��h�m���W/�aH5ΐ����te!�g��3pE�.���Zt�H�4v���&@�Kx�H�������б�融�#�zt��ݥS��Ɂ�<�d��$"� k�)�g�1�w�K:�Ѱ.l� �x�[��Z��OML��=�i����D6{��m	�k��pX����Ֆjsuw�B����%�*��ߨ$��p����.���w���M�]���-�������yi~�g��B�J˟�f��K��z�O��_�����@�a���b��&��N��(k>&tf΢�G���E-�ZiKk�$4~p�^�s�MR����@��&������\2p8�, ���S�(�D�MZ�ӧ�U+08b���w���D������"j�D�7ONHA�O�	�`ty(�/�` �A �qL=p�&t@�OS�g�K_��k�*U�]��_قh�l�+�F}Cml\Dk �D���K��,�{�CZX���_�$yc��m�\㍱��Cxg���7���B��ޙ��x�7f����e��8��ɹ7���Uo�����^�f�#HѰ��3�^|�y�s퍓��|��m>�_y�u,�:�}V�?������Jf"�$~��'�����`��,��5a���	�2��d��J6��u�ל�N�a ��۬����s��UU��Zg���:as�&��Uv) NPV���Np�:k�s���;-� H鬲9�
��7�|�&�ओ�
{������NZ)�V�):�/06� )�u�	�(c�L6��u��f�"!�s�R*�56+l�d4n�(�YkG^x�52Ik��.��W� H�H߿�������n��Ff��_^�φfDO���sU��&jxtCk��+�NWۺ������V��sW��;GEa�K\��%ֽ3��U��^�|���\�8��b�.>��u_u��||�>����~�*dR��^ђ�Ec�E�f����{�E��]�N�"z�ޱ����ݞ�hztƐdm��t���y�3x�7ƽ�-��� ��a��3�/�{�*�S��K�'(����xm��&�H,Ro$yG�F��k��p�'�W�ɛHޮ��6��8��kq������������n5��z�UAv	�
P��,���Ul�;�!�+���;;xc�������K��C�@^b��~����9X�Կ�9�t�� �w�h�B�.�8�3a��H�+y�Bo��	z�6�,���q��}�{����x��n�?񾗘���5fޘ�;w�B�M��7�0�S�2�xg6:ޘv��]��w�z�j7�0y��]��_��mu�k���b:||
6Tӿ��Z���K`�[��vohmp� G��7�CǛ�u�z7+a�w��典{C�yC����t4ݎv���ܡw፣�Y��M�mUu_�*{x�X�Aq>���-	>z+���M�7B%oȻ6m���NGE%�XP����{��\��������<��}7��j������8�k���݉��A��w�����y�9{^�?����2���y�/[��;k��Ʋ'-޹��x�8^�x���M}�Kol��k��8�*�R�)>�-.u.����߹�ѣ7o9p8p��x̔�='-z���޹��3o<�wj�w����鵏��j��E0�|���J��H^r�m��{�h����&bD8����(�֊}�ōtx��0��%������Z޽g�G�kq}��dkI�j��,	�Z�h�5��Q�7��m��H����6֮8��k�(�{yYt7E�,%:��y�s�0`���D��d��7F��g!o�%�Kl�m��}go��F�9�4"$"#II��F1Ȕ�= �-�ASRPP���U3�&���t���E�nx����v�

���.�i�OY�X��(���#�tyu?NB�0'��D��9�rP��Q�=� ����V9x&a�˰鼉:%�&�O�j2n�p.�ѱ�8~;���V���6^\C5+�ZuyI��c�?0WqoO����)��w�p_��OJ4T�&$�sޗ�r�Q��Iy��\U��u:�Ӿ��2z�ށL��'�?˾�Q���$o�)Y����<��s��ҝu���wu��̗�A����]!��V��5��p�l�f��ܚWQ�)e�5Hb�/J�d��1��fҢI��'�/�	�0���wIn^\%��6�����&A�*<+�n��ә�[�S\Q��67�`ɼ��pK�Q0��H���a�A�x�� .������M�H���D�M��QO�Q�G�~�f1����PM���(��6�R��q<7D��י������X[��Ϛ?x��O����F��M/X�[����l�Rhp�����b��ݎ��@ķ&˾�q��&wu	��L?X�f��`�<��t��$�C�����j,�,!y;c�R�~��}&Om�p=�#�Z�]$4�i+�$�+o/#�� ��D��?)�*(�/�` }? x4G�'N-8 �0�x�ޏ4��ABf6�ĸ4�('�3��x��dgT��Pj����K��nd�eQ` ���e)�"��rF93由$ge�Y,�bV�hI����^)�J���^����`���W+򼴋s:����r����J�^���\�ׅ�^��r��R\��}�R_��)Xꋫq�I�h
�*�C?�j)�~*zs�Xs;�͉;������W��ݟ��N@7���
�_�ɏ¡wzs!�a�;�9�7�J�!��y���i��M��c���י��������®�f7�/x��Y�m��Z[�ZY�[��Zo˵_���m�jo懷ͳ�V����V��u�������^��zm�k�f���n{D���0��7��z�k�g;l/���.��=�U.1���b�
��d��j��f��wؽC ﰾ���0g������� ��� _�|<�z_�ǻ��������>�g�j�r�

΁C�((�<{l@��Od��!�w��}0@x���,��e���u�����s�7w��1���;Wxs�w��N�9챤��8�wF��6����qxg�8��(�~�1��;xs$������-~��7㽪9�wo�x�0~�iU��ϸ���$�Hs�S)�6�)�DJO2�R�RVI3Ic�<	�c)��4�)J����rJ9g���d���<I�Mm�X���2�R�q�����z�rӨ��I�#c&3eiҌJyʑ3���)M1�lƘ�X���(i�2Y&��B/|T�����@!d�p^�ՋA�ݶ�ޢ-X��z��Úw�3�A�Ǹ��Ǹ�z���c�}���w��u~[�O�_S��y8m�2�^��t���U�o�
٬���Ʋ8�W�Z��*Эv����V{�j7\�W�-�XT*��8Ȇ���z:��ju�Vl� 3y�%D��9oN�;�xs.�Y��7W�W�$y�q��Ǘp���#ݸa:R��~��i�ÿ��@ys�9ɛ;��=��f�$�#�q޹�N���1��{����ei�ɳK8R�X�CR�"M���&�'�zPSC�3����=UI �~š�$	�z����怩`*�Jð����;,�K�p���u�Z�	Վ�Vk���j�Qаj�'������7G�Y��P��q5\�樗���+u�	�yhC�	@��w�����[���3qK����_M&��N���I; M4j��=.͆�I3i�h&JIHl2�"��1�N.Ģ+&#,M�(Ht�G3�x'J�i���iZL�R�)�͘��幼�5U`��@t��+�0zg�L�9����B�z痃�w�����y�\`�wޜ�wH��	x� o��3ΛC�Ûw��ܛp�Q@�y�?)�Zo��;L��	���@ͧP{�<窢��n$��~/g�GQ-��Zk5�DB�hzv��Z���xxL�U�܀w�6��N/�?ʥ7w*p���8�����(�4"2"""#i�PA�f�: �5�1C�HI�JJ
�i3mA��� �f�Ǳ�g�.g)��m�LUC�2@��������y��=��-�W+i� 0��bg��A_֘˦�cn����V��w>d	 �pM��O�l�4$�ln����9���J�}�P`��ԞM8l��_Jp�)�����9K��C9XK ���Y+�?�g�;^3t/ X��q+���>��%,��(�5f�v���&�����ay��s�uƶ��!�Q2!�5V��<��
��2U��5L�@c����OѣK&��f�g֎�;ca�R���g<��	r��;@��J\oG)j�_-�z������#�-�E�mW�����o�}��2�y���6��
�4��~L�1���Ý����s�gEj|�'%\���4�C����Y���Ƴ�z����[�h�>��b�b���ى'оq@X�l\ '�{��-�H��1e����<ET�ere{���e�U�� -�_����'(�m'=ԍ�p�f5�O(�/�` �6 
\LB�,'|�|���7W�
�8X���-�����WUe]����?~�l8��� �� �!�~��[�)DQk��:+���U,�%qi��8bi�$����T��)��b�$s�]��ZgE&,�
�\���B��.2�t�&S���B�����H����N�o���A�勷������޷�	 >�m��v�[o{�������/ء^~�>��*x_ܭ!Hz[
�[�m��|۝����w���=�|�{���W�� ��]�߿��M�W�m�������O/-���޶�%{�g��	��O����a?]�JJt�V-G�T�Tj���̢���Yk��RZg�7�W���-�#����x�R�*.�k�������bx����n�%���$���K��|_ہ��"�/�MFqK 0��X��5Q�k`�]@�;���D��4X�~���/�{W���Kt�w��!a.α��8�kO��H��-^q�l`�=��M1�&��}��M,&nz_lJFC�bflK�3O�W�^m��<��3*o��j^�yz�����i�4s���"�L�Uor�&�ɤ7��M.�I�M��g:��.�u�������(���sz�YiD���J�i�FJO4	�E�K���������ޗ|�o���Ҏ�}��z�;�_�����"A9�2��K7r؃�{��|�{͘�__��z�#2D�����vgμL�;����F��WޣG���(AB�ypi����!�������}=p[*�+�P��L��!������3>b�����E/z��O����:y_>o��}��-����K�7��=�v�6���y[���Z�;G��Zx�8o8oΰy�m�/�#/�8y[%8.I&J��L���h��Jy_9�V��G��W��;>{�{��:�X�F4}��-�����m`�6�&f��m���k����l����6o!�Zܤ_ZMZ�B'�|
m!�Q� -��S�tΐ:眓�4��Gq����(�7�A-�A�y{`�ٸ����}s�P�64�4�q� �����Nj�A�7����h�N��r:&']L��P�����0���*����q���l�+p�+�;��Vq�C�Hܷ�e�m�p�)�Vtz�>n�j�7�ێy� ��}��m��z�Z�U�ʔ�V�;���4��#"�Ha�:!F1	�� �M)����"�"AF��Bs" �C��P���C���E�w���$���UP3r�AC%F�[�Z�%��O�����"yi]XUK:t�;��]�]�6p�ӣ'����Vyey�,�A2�l��x4[������%�v&�~��X`�����Sc�$J:߫��q2�v|�h�F�>����xU���*_�\����p�/�rq��a�A�,0=�RH ^��� �=r��-�N3�ł�_ȟR����9��켬�^���R��*�!��8��N�v��\��y�s[�AYC�:�V35�ZV�*���ZN�S��:����U���j��O�m����줱=ת�ܛ�]����ٞ�F�W�g�j!`{��D}'����.4��(Jzը�1N�iЮ&��@h4�ބCo��]�y�f-�T�N�xݬW���^��w �����uW�i�n]�����&��K7�	1,�R��@�����d�@�1g�t
��P�e����q/7�ts0�ڠ-q����y�{��&��(
=��[Q(�/�` �A JoHD�lMF�c�Bt���]CoAq�{N���"�ijW%��>�k�}�E^��1������X��Rk��)KPT7�6�:��Y�^�S[��I�\'e�\'s�l&e8�Lv�Դ�����s���6���?^��l.�o��[P��X�77^�-������06
�m�K�o)���������?6�ř�؃�Wu^b���cP�W��]6�A�N��V��s�46ϣ8�-�<x��%����H,�$,��{�����z��2���C���w�u�w9o~���N���?n��cĀ�⏟�w�)�8��(N��	��Ŀ�?fΈ�o!.���ǀ��L俧�1����K����s"/��PFE�����4��?���}���̛�$����؁��s&��~4�jP�zWk`�ȩ	ʨ(t�"OC&���I��Ofɟ�'�?�;=N��c�>=�pfu��^-��lvi�2��Ωi�@�1�7�j̐�����)F���C��q�	���i��^���N����F�����|��{e\��������!#����i����D��**jh�<�O*��W�;�?���+�����D�c*����ˎ�	Vө<��	^TBC^�"��E�&��WN�fe���S$�y�ւ71[m��jY���,�F�8ӳk�0�3�0��v��3}5��b�nL�۝���T��lD_���{�P=f�f^{o��^���Y��p��l�6�|z�w���N�qqy����v�Ǻ%/��W%]�];f�kq%�C3P���7aI��O�VJ鬔�>Z�G�9�Y�7Zas�Z'����G�*D�J'NZ�f���HD�������9����͡"�s�oR����sR
�蜟n�	���u�	�sVo�Y'��e8ٮ� �u;ZN�˺\��r��@g�<��e��eYցY#��'��j �� ���t;Z�ր�ˉ mG���F�}������Ư��H�8~ �Z�}`F?��GNM��?҆?Yß��Of�'/��-���R㸀j���Z�"�z5Ƀ��*XTT�zc�8|B����}��}FP+Y�k�k��yƄ�t���l��u�%H�ɹ+̐m�\�Ym:5m+8翇���1�w�U�%���$��U
��ã�_ӱ���S�ë����VYYKKa�pq]��{��'��H���࿭�"xI~y����x��v\�{.��A��]3���5�Ci4P�[kLE Q�UЋ	��bI?B(��k�@d�n�鑭�io�ڪ%؃��B0��}��� ۍP9g}�}ʺJ�O��M�:�ꬫ0Ͳ�f�{���w�H��~�r�7�9�U��1w�݌0�*Nɩig��
�7,lc��-�1���Ǟ�>a�j�?����,EA��/�
h�;i( �C���q��F�N�K�9��Q��A���I�tF)(��`e1U!��H��ԣ0$�Q��W'��\�u6ꛡ:ѡ���q��,R ��2k�[u�\ވ�wS��'M��`�e0˞/��e]����roW=F��������-��%y�\	sZ��؝���w����F��ЂNn =�J�_����@�g��F�^<�E��� �9@H��UT���Jʷuy�g�,rIU�(t�3 qRd������͍ �^ѣ9s��#x��2��j�p��147#��Sg�(�F6��C(+��>Y�^��#�i�֥��.A� Lq��`.٬�C�fQ��ظ͖JpYR6�5^	.c}M&~zyYV[0އ���@�.ª�	Խ��g=$������YQ���𹺡�
�s�ts�9-{�T��m��Oƞ0�Ä]�Նõp�٨j��zh��H[�es���F�㴱��K{c>�ݪ1����
�X�Ka��w��ŵǸ�T��f��,lvh(j�a�』p�aV����f�\���*��-�F����M�<��b����XGY��LB�7�gD":fz�~��J>�]��xxg�G�~�@�X�s �zI����i��H�ٸyސ�Cx�����Ş����yicӘ犒���0� �>+46��Q�� JGޠ��,³�(������2�21�$J�U���g(�/�` =< �^�F�^M:�-�H �"IR0�I`�po���R���@��ާ�,��9�D����>`C��	a2E;_�/�~���6BR9|�dGzi{Rt)�16�{��y��$�>?;���^tޙ������	^2kHk�V߬�V��Y�+��P\�JI�_-Z+�=��]���Z+V��3��p�(���7��pc-č?c��Ĕ��띗���蝑�v��F�\��w�9�����^�������K�}����hh�v!�����������a��ϯ����`7:���<�s�Z�Ξ{�������E3A��*z�`�4�F�51�_]�W�^VZ'��VLgES���:+���[;|#�%v�j2�����A�� 襵zgo�{�{i������w�YY	�Yy��f�s�w/vՄ{i���m��g�+Ⱥ��n|N��u�&`�=���$8ķҊs#�����UJ"'&utjKO\o8�X�xV�:�7�NZ/�B<q�g�U�wÍ/ܭv;�Ĕü-�;y[��eIF��G�V��n�o���g��[���V�0xi��OB�N���O�����գG=eʐ!�M���m�m��3�(/m�;y[�w�q�Ƌ��z�o{�ݛ=E�/7h��w�z[�;Ox��b(�w�U��"&�x)��8��8g���[�J%Ԫ�Ԑ���yC~���,�j��[��51e,N޹��2�Aޙ�m���mA#�x[Y�/m�w�@È�%̘AB::��y�Ҕy[�w����my����n�z�84rg���=�K{��U�C}Lo���^�i���V�%v�+Xy�<������|��������
�u��څa�u�wi�&��u�p)�9Z'%��p�X/Ii�Z���ժ�����;��V�ّ�m�x�"�6Ļ��Fxg�/�8���Co�{���I�W:�Zg֎�J5g���O�6�@x[�to[��Ff�����՗���z�(�޶�}�����^�d�8��KiH�;��:��5Ŕ�SQLR+ŻwdH݀W(��;�xk�F]��J���ҪpVZqd��g]���j���0��)��0�v*�x[�w��꽰�^������߿�F�(��m�z?�����9T���~���wNz[�;xۨw.0 ��z痏�c��M�G8O�Sr/_@<4��Ő�x/y1C��$����ŐR�Ę�����]��L�3"$""�$Ic)�����1�)��H�Q
{�$�.)kS,�
��:�\��H�pήVCfz��� �����?��֮��-�!�������Zgc ��Y�B��P`�B��d*'L����M!�M�Λ6�uNJ��>��8yA&�]�	�95�`^�qC��a��rgb�m�$��W��rrd���>�����+L��co���b���Pؒ�nmp~j�=���Dg�+{wɑ�v��h_z7�Ŝߕ {Y�lIa-ڶ1!���l8�U��qª�/Q��<+�U����8X�]�󄁏^��lkx�� � �k����v�ǡ��ҳ���F�����gb������F>��v�W�x9�H�t�����2�a�C�(j��N�;�n+���`��7{n�>K���4�]�H��"�L�%@`��_�G�?����ߦ��W��_6��\���sGB�w����Z����J���K�.ܔ�v�����7��/����V���_
zѧ5x1�<����
I�pz��U{��hh�gf
#�k�<E���_��`3kAr�vR�.p�_n�d��V�̌��f��p�]�[�� AN(�)x����"������m|0X���JǤ)�Wz�f�����W��F����k�����M�2Q��si�xW��ݳ,]�l���90�V����7��J��z�D1⡳���l�-�A����n�(�/�` �= Zb�CpjM:���v�;0�(l���$����*�}|$�ӿ芽!��
�6�NbL�����S�¬%$%"5I���Ҙ��2ޖ�;_���w���,H�i���Ž��w.�����n�w��.;�ǲ$�~�J�<[[z��@�%!�Z?	���X���y�����ۆ�󝷅��v���;�y[�wv�g�����Yʓ%D��띁�-�;�x��Y�x[�;�x��8��;s�m��;8;��=1��\l����z�`���=�7n)����f7{���>����k�}LQx�{��7�-Q����X�������vS�A�j3� �is�+�Ju�8᭵R��:��H5��u���hg�bh -�4C��fh�'#�ZAh�Z)�M�a���a��֪k��z{[���ڣ��5×�{�-�K�oʗ�h �u�����xg�o��G�m��!,�w�zg�w���;�����w.u?-W�;����wVz�'��HY��e�@	Ig�_ȻD��vx�~�����w^z��;�l|��1��{��M=�o�Ju�̅�c��K1�� ͫ�c�м�bҬc�ߊ�hVuY�5Ҽ�Ki1�fW��x��֜YU�+������u�$���GZ������_��|S�lʗ+�|a��ߖ��󜷕C�Ǽm�wf��O,�ȋ���<�D(qѣ{ٝl�m��L�fka��d��E�a�Ʊ���c�Z:��jQZM��G�0��h .M�i�4�6�WZ.ޕc�&���K���/�:�B��j����{/ՑZ����{�}���˕S�)�T9���O��U��V޹J'L�$)���z������Yc��:Y�w.��gw�O�����w���흑�Aܕ~�/���u�m|l���e�{�i�X7\������{?��wސɷ�{�/�c���$��?�h%�x�h�I"�t��&��^S��zo��;���#G��J�(!�A�q��V�Y�̔w��V�������`�*~Z((�
oK[����s�M�SN�iǟ�u�C�	��9��@T����V8VjV*�hd&`�k���
F�õR�LZk��@>rʗ��v���sL����6+��!@��T��Nw��Օ�U�)��R�����4�H� ��b`��[)�a���R�ru�T� �Ҫ"I��&����ދ��c-��tU2�/��v�����m�>���ےx����w0��O��"y�nGr�����k q�u4�˗�5k�<	2��O���)���&e#�s�m������~�#��E��d�!Ed�	�$I:19�iy ��f�DD$H�$���.����QW���do�:�s���U=kW�.���$�YI��!�8��2��)3�q�$���͊�]��kW���~���c�5����%��C�x2P�|3�B����Z��vWύJ�DCx"���X���񥲾�k��T�N��QX2�*�f�îG�BX�G���e�ʆ�9�����G�$יB�fxR���'���H�Q������yә�M��3*�x�dǅ��*V���h�e�<���T`Ss[r	�Rȝ\�g��>���ú��:߸Pпʣ�;�]��#�>��\J��4N�ҹ�[O��F�c�x/���..&���Ȉ԰f,����� �]�"�1~��9����_�l���w��/pE�����}�pM)�^�<�y4y�t/�$b��-��^'���{�mP&�U��! �P�@���Qҿ�K`���ٳo4�wr���7�[j��h a�|����Rڏ�b�ymyj����(&_q�cѼA^�'�z�Z�N�+$�`5��n���~q֥ښ��m�n�q��x��s8��?|��3�}@��TW����t�b��E�H��;�m˧���l�q̎���90a�@-�������ڨ����c�MS.�z�nD��\�t���X������)q��%B��9���uV7S��4(�/�` }; j_?`lI:���Y��FWE��qBV�.���)cO�����r���v��ge�a���������H
"��;�x�������x�� �m�;���O<�� `���׾������}��=��/�#[��N��_kʜ�ں 0%c�&u3���\ԋ{e�q�5D �L��:&�_,g��ӗEu��<E=EeA=Y]Y�k�/�r����K���P�5�x
+�a���J�J�xK�1.),��J1ޭybb�� ,�y۲w^��j���w��P޶�;y�o�{���m�V/��ý�O;睯2������L޹�-��WՋ��<��D	&XG�����	(��s���>�Bofz�tu��S��%z?�y۬w>��y�1#8T���e��9ޖ�kDx��|[�w����x�F6/��u~��~��ϟ��ܑ�}V��p����z��g���{�����\�s#d���F�"4��S�8�����K�x��Yb�b���2�Xi��Wk�G�Z+�Լ$��r}H�J�*�7�N��x<��)�;t�����x��L��ۆ���m�;�x[�;�x�%��;_x[�w&� �����s��v!�iG�����O�e�i)=�K��;��[}t� ��K�KK˒�K��~l(�K��j�-�A����q!��ŋ���K����F1�X9Ґ�Q��m�r���U�3��m��?-��O�&�V_��ѾF� VV�������yg!%�vÃ��m]������wo{��'�~Zgg�c�E�߻� j9��	[����%ɑ$���kbl^��[�I�H�WW�a�c�Ԥ�I��yoyIs$���j`�WW��1��51yq��JoH���X��J�|�z�JU�k0����˕b�(*�h������i���;?yg'o;��;�x[(~���ì<���]�b"�wΓ&��X�����޹�;O��Ӳx�-�\��Q|���s��e�!C*T�̂šC��;H��6�;��g�m�ܼ�=��e��޹������1�6�_�-�o�s��������݉|�ϝ����������9q�8D���V:��8��Y�JC9�0���w'0�ְ��*��a�!&C+.����U����  nyb�������m�sW�z۫|��������״�(P �ލx�;x_}��8��ܢlF�h�F*�0�5�$)�$��
������Vs�􎩴*��V��A���$I�1F1��8> E1S9�$#"""�Q
þ��x��A�
y����b(w��`	��@ƴVv����b�/pB��� Ž�c˕��(�N�o� �6�'���'A#V:1~":�������֒��r����:�.���j4��Ov8k��#e�u1����BhL�_�L�]�r��fTb�\�$^J��Pl��͈4YO`pᔟ�o��	������=�0_���R���E�C(�-Q}���5�;)ɣO��|< ��3��<^��>6��ȫ�$�R�G��C=Ϭֲ[P�FP�m]}{w
Ch,J�J�觉�)��J��?!�͙:wDL���f���#�EVyͶ��v[�+�G��K2�◪�j+�;U��ta��/��T[��v��h�[��Έ�uZbi������l�Mb���*��� ������!�4�,,�Ҫ�7ٻ�Y�y�����o��NY��J��I��k����Z%�)�M@��b�ړ���ā��>Q��|�,\0�s&J��~�h�l��qg�[e���"^U'�~�n#���h�����Ѯ��K9aot�,��E���m�_�(�`�� �0��1j+��R@=`3�)Tȥ�2�S_	��D����?	G��s(�i�h�n����7'aY�������@;,�<�pz�~(�/�` @ Zj�?`jM:�Vֿzǿd��{3��,"1��C����R/��j_<�W�$�4��悶+t���áf֦>3?��>��x��B��*��J��qyE�x@�Ǜr��o�������4�vąw��_�\ᝁ��ms������-�;c�3�w>�৭zgo��Cޡ�S���i�S'�� ��*�SQ����`�g?�go10�6��M&�Uy۬w���k��`��{[������ .�{��7۔����R��ۏ ��"p�������ʜNJ��ݲkI�_�X�	�#�,X�_��P9b\�z)�e&�'�_�I�>��A�<��,{��J+�7XV^��J�J�Ho���c�*�}Y�X�Z�}��U��V��sa���a�"�[d/9�mw��%����9�k.����j���~�Y�m�]��B}�0|�&��3#��;�΃�s����6�3 =�����y��0�w�����;gy�*o3�;'���ۆy�"o�ᝉA�f3~�x�+�y�ۖy�d"��ka�P��s�{��6|q�3Кos�;/�W�(����<�޹������{����;O�m���{��{���i�o/�:�q�j&}g��o��o{�����u�s�/�Ͻ΅p�n�b~u�M�-����RZIL6[�Q�p"+��Z�*����»����Vj��.��0T�RjVJ�0��J�|��s�{��ߞ��oG���ؘ1}ަ��� �F~��O1�,�m�4y�(o��;yy� o��6��@�i��&
�m�xg^�6᧥�6ͷ���mJsW�iz��׽�fe�ܣ���y��;��n���d�u�-�-S'r�a=1(�Z��*ȤzA\<棵R���6�Ѫ�K��*�t��XGJ�?�\�#�Z�1,��__y�v�����Ek��^/%�r!��B���AlO@��#�=�G��heD�����l��|�y�5�L�=ĝ�O+睽�햷*P���0Y��mӲ�����@����Oo�m�������v|g��-��A Rok�������c�s��=��p�n�s��unn�:Y����&VZV*��Tkմ����8�^/���ɰ�֚BF$	�@X�l��o	~�����_ﬕ�so�O o+�s}�(�g���YY!@PU��0��mNx�G�� o���?o��;0y��{���`��\-��W��.��7ý�0+6��8ׅ7{������F|)�U�U�u��3��.�V�����l^c�q,k1.ˮY��^|q"Q������fna�6ZY�!>n�Y�F�m���s|�s����h��M�3�Y��r{goK��O+6����c�~q_�3��m�\�U��D�3232"I�d8�9�A|@�-)bFFD$JAA�d�n!��0XQ�y+�p7,��%� i�bD�9��O��v��KS�~B"�>�(R%e�R��G���h�럶�X7�eߧ��T�+��b�}����o?����"a{��-vV0Y�ݩ��Ӫ(�3.���Iz�p.�/��F�_�@�Mҁ���H�>��ũ��܆��-�H+t�%��'}���?=;��.s7��h�W�_Ȧ:�݂�Sn �te�N�
��'8��`|�^xzH�<jR_d�)>�i_�HCqz%R�`�h'v<1x����.E��[#�;suOt}um���PJa�R-"%;�§KBj:�H����ߺ#���@4��<3���ldCz����XB����������{�j������S�w>Ҩ��|��A}X屔��M��<d�OaI�u���ni�{(��nn��y*�q�Jz��s#t�5�̻�"�A��Ʃ ���H�o ��Aņ�6���^�!����B\�a�Ox9��P��r.�WnU-��:���Gl�j��$)�,K8GB�=&p�c������
Tt���yΰ��Ϫ��%\���C[�xݲ���� ���٫9]sx"�h<����d�Q�.*<o��ڈXw�
����j�'��ݩ��J�t�K�zI�\�'{�V ^qP�p�KKL��Y�?�4�K(�/�` �= JdP6P�$	_b;@@��r�I�)t�~�7��>�No1����G4��؜$Y������o-**�¯�5�`����N����O�����H��"�Q���L�lQ�L��O���@mȥҐ�'�L�M�_���j�����m��o�K�^Zw�����__��������_�_���Ưjڸ���U��7>	�_0>	
��H.�r��_(L�e��_$į6���W���Y��"��)6�_� �����i���5�O����u�OF�7�_+������\���8\V>��_��˓\�6 ��mx�,�o�6�ɛ�7���w\��ݗ߸$K�i�θ����c~���p~ಆ\�	�qƉ�H0�!*L� &&�'��n+}ҏ�~ڔ�y�	���W�B>��_~=����㲒��̯9����0_Я��ܮ���r��$��˄���&fS�;d6�����`����1�&r��R:?���~ ����1�ރ���	�b(t������~�F�q���h8G�	41��U 2��I�7�~2�I=�ztR���Z~tztN�uE�ʶ�\�Yn#[S�>y��WE�j���H����-+rY#-�W�_M��'�����_��{�_#~��G~��o�%��%I�6������F����[�d�/_j�`�H��nԈ�仭�,e�5,a����O*�!m!����;��!���Ҋ���U+�C�:|�r�+$I�vU>���~��嗿_~�����$�ʡL�k��_��_Ne�2�YeG��1[�p8�Z3�H
�W��s�ia7��ߤ��j3�CӍ`���	H�O��tR:�(EC'�<�S��"�a��A=J���;������� ���;t��u����U��T�:�_!~��W��~����W�vЀ��f��h6�}�`�W�_�\�
��߶ï^����W ~[����l��z��  \V'��/��d�W̶`��	��I*��
-�<����/�;�ޙ��8��Y��3~���U���$y�5��4D�pI�H�-��p��3W� >I�/�_����I�<�qI
I�=�${��$[��4��f��d4vb4[+p�&�Is�'��(���}:�}�~t��E�u�!�SR1A��}����Pub�����OlA1�O�t��y��y�F�)m�"�aN'E>�������seF�1gv#�W�N���m�M�c��@d�$"$""I
�t�D1Ȕ�|�t-�!)	"I���0W��x�̆Sb4� �B84]"3��qw���$G|���N��.6ڈE��n�NT���(K��t�𿗰�s^��:/��G_#�3�?�;�0�E	"]�M����[���t2���C�.���u���;��}jx~�+rqJ��z�����ȇ�0��B��7�O��i?�D2w��7��p���n��� �"A�p�8���SR;3�����2ʒ�r��aW��H��z�/T�)�)�
 <0Q�i�g�ԣ��}@aV� ��:�xX> ���O&~w>pt��+�Fr��͜Sm;�|7���^���&�#(y����l���� ��C��;��y��:DGз돱�tk�QP�c��\��j�Ј��^�׫�;�$?��x�\;p�NK��|A�r�����!��w�S�K���$�-H^��β�:�;��m�k���@�fZ��l��a\�A.�l��~foW��V$|(�-���O��h��@{U�u��`��^�������cCWC��Z�4W��#�#2SJ�����zF�u�f_���{���C-[^�K�m�af?�%�&��/�<�m��+�p]��æ�S5�}x�:K���d��K�+��(�fI�<65;麟h[|d�PxB<���q�e�q",�ڗ�w�ɖ����������?is�Nj����(�/�` ? �g�?p.%����l�S��EY;~R�j\3�8�����Bk$��,�N�&�5fB����S����7BH
42<��b�����8�'Rz�H�E��4����nǠܕ�m��7ݭ�����C�{F�o+�]�xw��v�3������{�
oK{g
o�����wƽ{R/��R�{��i?ڥ���J��n������;��	��'3�;E�6a���#�6�ه�������J���o�eV�Ӄ��5|,�������X�n█�(s���x��J�$)�$����b�����*V�)�]j��T�:���s��_K:VQ�#-��:UJ�xUE�ጐJ+k+��X�O�Vi�$��^\�k�d�V�t�ڕY����ʝnw��t;]�޹O�CF��jy�(�����w�p�e��2~���'�ӊ����M򶚝��_�^�ˬf���I \L��/��Y�������m�m�6��3�mz�M�2%I�!=�Ǽ��w༭�wF�r��w��;w�"坥4y��l�ms�3�����0��m�X���;w�&����B}�-�m���{���Bz�*����c��<�{�C�i����8�w���f���7;�w�r�<N��里��#`k�OW�8V�7z���鵷y���?^{��E��Jt�fX*݌>��:�Z���銤U,o~y�jQQt��N�R��C-)�f����[i���&���QG��c\�Q�Rjb���l6)	Xe���w����O�䝑��w��5ޙ����f�{�	6����'��S����O���#yفSS8 ``[�f���ؼ��;�1��f���!�<�ԡ�mv�xc���L^�f;�M��m�����2:�WJ^�X��.�e��5�� �@J��ðKޜ�,�/�䘛S�VR�c+'b|1s{r#��R|s���[�Ҋ�݊�����[1��QP����8�;����H'U�;]X�t;�r�k���	ӥ�]�Αޅ�V�;Z��m�s����
��~�r�;+x����=�m��s�����e�O��N����Oa��ڨf<ތ��laX8g��X��x�^$.�*���\*�#h(8B�4)IҤh!8� �4�Ҹ�*�{�-�Ԫ�w�ŵR����X�*�y��\�Ƌ+ט�U,�*�]2eUeUeU�pV��I�n��,��7���l�cbok���`�띹�V��	Vo� /x[�;S��.�M��7��/��Gr�"������s�N�3gʔ!#��6��맵�l�|����m��n_f���1'rE p�RZKL�WkT'��J�n�Wg��H�R��2�I�4�FA�(= F5T!�d$IAAIҾ�4d|g���p}B��
c�/!M�ev��1�ʩ*1�+3G\��@�ZH[b�m_7gW�Kå�-����?�f�Z�)��HF� ��;|vSϒ�J�O��\�S�+UR �)<U�cz�Z��VWaX�������k�vF�o�%���ʊ�x�6eq�iU���;L4��)�{�1םN�llP�7�r9�����c�p�����>�@DP�͠����kE(�*�I������e{B���@�f��<��`������Q	{���l��}u6D���̂e�젻+���7�ܒ���1��~�I $���7/�\����P������.�)�p�o��\2V�f҅�(��n�#�@̚��#�
4Ht�'A�Y t�&}N�d�5ˤ��6�m|#��������K���մn��9���V��9�+�큆����kJf�,��Z;������V�׼=�)��8���P�	��"x
�@�F�}��K]�8��_�G�)���ZƇ
;��ꁆ<x
d~�B����cc�i�/���om�r��F��{!���￁�D �R�[`  ��@Ƀ�E�7_(/�#��[��$���(؂<�#����34Fd����K�]���Yf}�/��(�/�` E; �c�A�,'����1}�\��	���y��	ρޜ�o�V#��L�������R��+a�Ѽ�]�n|�BFl
&&&�W����=�7c�~q�i�a�q~_��/R�8#����T�|]���CX��K�}`*`��U�=��/��o�����y�_� �#6Z�� �4J=�&h+��_��,���ϔӔӔS�zE�(�(�(��f��&nL14S��'�U�[����+�U�[��2���[k��+K���+O���[=����I��Vx��['�RÛk:���ONp����.qlk=-}⦥֢��TT4<$�qj�3Jȷf��ykt�ښ��歡y�畲����xϪf^9�b^��a^9{��~I�z�Z6�2�?P @����3GKkin�]|�&;^��:^y�V���U��q5��]LuV��J7���+�KAi:N&y��J�D�֤��$��I�zB��I�.F�j-Yh9�Pw�u/�_����ŏ�Eo�F4b�hU3:�|1RY�����c�P�\fR�����f�	dx���^!�No�P÷
xs�c��89#�zj�'��v�Z���9��
Xi~k6���&�uxk�����S��g��+��'��FZi-F�xj=��=�wGyŒ^�H�R��+) 8�hN��M���l1�>����Yl6e+(��+%�uɆ��x�7F�+E�Մ�q�8�u��q^9����VL��{{k|sLO���ڽrBx�:���ʊ,�0a�T�BE.x�iF�_�U�!"�<�
�=������1�FE��,5N*xk���z%�}ZZ�s=���z��>.2GyP��k�h�E�����Z@�t�Q�M���tjVe�ы�����IA ��G�P��=&����0�����FRQMQR3�64o=��1A|,�5G=QI�����o���5o�;i\]z�)KX��`�5$�Eq���m^0:F �R��Ge!gPs�y0�"�� -��9i��#H�>�6��^��G'�Rڜs�!�s&��N�?�ƫ����!k�%��8S�M��7\MQ��(W�mRj�W�CBX���#�*��� .T'mom�J��	�]c��Ç���K�}��v�zkx��*�W���\挓`�HT޺�M�C�WP�+��u�+�,��̸;��Y�{s N3�F\fZf�8�2֊�J4���敧�Fe3�ͻ}$�8�h��ы\��<��Ⱈ�����p�-�:�A�!��$I�Q1�Ȭ=��-��DFD�(((*�Z-k{q9�������/��U~)N%j>�p�-	�[��������<>�6���u$��8˻�Eh�q�>������l�P��E=
��|nq��"]?Dϙ�ӈu����Շ��#wx��ӭ����e)�����W��H�{����k����k̼�����p�����Q7��ǆ�Yi�Α�&�Zt,���;���C��\j/&%��ڃ�9�X{.�ZW'��D�(��A�ҋ�Q�tXk�Q�����-4��G��8�)q��&9t�
#�~�� ��=�S���Kw���&�q�f��]3׀8�ǿ���Bu� ��s�C#�3 �V�og��a��� �gpZ#�A����	���Ā}x4�Uj8No'S�m��>#�U�_a� �ŷ� j��`Mo:�� b��/ǌ<��9���u�AxZ(.0�2��p�r��7G�'k��k-�mV�����dl���T_�����~<���k?�����yҫ1�k���`�л8��)b�������~"H0P�3~Ge)�\�,7J�W�8���6�|t5�F������|.��,�<�KS�c�seŔ�j���y鉦C�C9��cx�E��
(�/�` �> zm@Ap,'�5f��1�5�TY��\�.~��1l���-a��V�YU=kȗ��a��5b�-�ߡXck��D;L3)��f���d3"��5�8�j����u��,T�:�dY�В�Y�\�I���ݨ�������D%퉖�ўh2%q�H�>�D�HӅ�V,r�9�֑j�$s��z���2�J�Y�XVZ��Z��X��Ji��yEuEuEU+��l�Ow��|7_����z���|�j�s��W�ْ��q�P��qng{��6�Vù;��C��`�w��ӆ��%���;��zx ^^]p��)�~��2���r�Vη��9�"�;�|AZ�?'[�u��źE�O�ung��}�g8W��s�������j�[��^8w�9u��Vǹe� y ?mӹóϻL.{-+�Ǐ�,HQ�t������:_@���|A���lqE�;^ζ̹ќ����974?u�����i��=�lO����b�Ę�s���"9�O�O���V6�"@p�n:["�p֎��2O�Q��N��[��1�DH�s!G#���n���\�����R��:�cf���Aa%�ZG��9,����XY�r�u�QZE�a!����l�^�b����ϝu��sG8c�m=w������l��Np�Ǒ?��9({�ie���� �RRg���;����|7�o���p���u���X�����M�٭>;ԁ�vO#���ɋ/"��d6���(�<�V�$N�KK%.���ZU+�D��GXi����*�4�UX��Ҋ+K`�[*�͕tP�5�[���^%�Vz)���!���tOB��=�<d�m׹M�����ν�έ�l3�[���t�����Ζ*�t����u�Syy}}�`��GV�&���-`�\!X��������{�i���v9u���x�Z9���EMR#�Ȓ�&��,K��Z�#O�k��ݶ���I��
+	�̑c��XK��3IӬʕd9�J��<����cY�<0-�,�Jj�J��w{��t~�5��r�ιߜ�͹ٜ��s�-v�T��[ʹ������8ۚ=w�&q�rP��f���l�؟v���\<�5ڳ�@�>}��a��ϟ�,Y����mp�Q���|Y����T!7�T�=�:3�6�Bn��m.�K �&�5�Ņܸ���)l
��z)�!7g!�,�I�Ԓ"�;�yѹ%:w�C�>4�܃:P�sn;Mgι��Ys�5��3�>C��d�����9w0��˹�p97�-YΝ�l��3?m��rn(�����Jέ�ȹ��m���q�9v�*�@x�8����s�Pqn!_�;��#>X8��	�p����wq�
�s����l�η�t��G�s+]��)��v+'���p�JP�J�:p7{�+=ā�j���~D?b�C��@�42#""�$I:1�9����U9�(�DD�����fƐ�o+V웕���7\�!<��������z�r{λc
r����H�~�k�'����cZG����Ї�ԝ��HG.����ᯠ����Up�v�?�0�8<,<lj����A��A�ǫ������|g8��Q�; ��QX{�����"�p���	0���7�K��;��˞��^�꺒��p �T�C������{)�IQ\�3jq2�p`1)f�	�g���p1�<��M������PJ{�'
v�P�t����u֊�)H�
�sɟ	����O`��c^��Ę_(�d�V����.�f�3���gdE���r:�/"��_gO	���&,����L����,\؍�Ma-�\��I�Y�)���f������a�nؼÑ0���l�[a3�*���ܫ�i��S���As�Kp!1{�쬂�4�o#�A"�Z�H�$B;b��4ظA�`�y1#�c�����h=���<��WЬ�G�$<'�%JHqS��A�Yӹ@�yN��h	&�(�D���Ǎ��c�TGS_xǕ�E�RC�H�>=ݴ��L�.n�"VˮԸ��x�ˉ�o2�XZ�|ȱݺ�Z>�n盉�1pE��K��w��*(�/�` =< �l4E��\y��Y���҉�e��K���y�t&7��T	��#�0�!pIѹ�u�l7�?�%{�~k��-��RJ)�L7E>�����B��(��o-���%'s��x[I�o*�\�A
���W�h���3f���2���=f�g����a��o0_��.�����E��֒���r�_�⿭��*�#�ŉ�v��7a⿙,��K���F���"5�w��{������n�Y�o#���A�
����-��Iz����;���~��; ��D[��1����ڋ���'��]�� �t�p�o��m�_��G �䯓����@(gz����<[�7�S���?�?j����4O�LO����*�����V������S't�G�ɚ�qr�"�u]�ʹ�BA��(HX`l�;���k�Lӭ����|z�%���=d��Х�t�LNY[yt�U�PΨ�U�;��<�s&�ak�<��s'@�,���:sYg]��r�9gjku��n�!�V9�֛���So��V���[�
n�dp֮���ﭖ�����r����V:k������{���������R[���V�C!��u���V��Z�j� =��:Wԧm��Uk���c���%�ŀb`+&k�Z1P֒#�c`d�b;
�F������_H���S�wI@�& }�o�@� y�o���UR����oP���x�[\-w��0��w�Xa�%m�ֻm��z���i��v+�.��bl/�D�]�� �b�E�����k���9����<�U��ѐd�7�t�Q��]�o����+�Q���O�^tE���抲�~�A�,��,
�e��h8hHWt5CN��h��W4����q�9o^���p�r�s�t���C3�t�8��|���._.�n�:�ݭ�0�s�p��t��h�b����q:����>ܨ�*A�\M ����p%�b�
�j�����J�B��?�	@�������� ������o�;���g�w��7���s�k���?S�<�����#�c|�_<��t\B>��<ɱ�Ҹ��+M���q �t�;��ϑ(H�����I��˗lP#��E���D�y���vw6Qk���x.���]�N�	�1�a�R�8�֋�=��Vۈ�);��0ƨ#T.`���[�+�b`���2J��R����I���;���?�oB�-�Rʳ��6z�)7�2d�PAwvP�xxt�������AF!���m�82�)\�k�J�)�O-�T��<Mo�LO'8�j�����u�M�'Mk����i�0�v�)��'8E-�'M�mMR�߰�K��w�0��Z���8�E""��h�$a9�]@�H�(c""A�$I��Rk�/ ������ɭqP�ح��J8�3_�8;{'Ngep1*sy4�Y�X;�7�f0�S�~d�s��	@�L�\0�#��cM��И�"��Ԟbv��bH5����T�Z���{ͭ�;ͭ�k�~���A��"�0 I�.4GFۊ� �����b�����k��|CDד@�S$����x���������a�2m��>X������ぴh'�w���jm0IW.�rX]��?i��מ���l��$���E���2bcf���/��A��ƷȮ*��.hE�h�G۴�ᄩR�����0Y��=�a-��:��F��7�`�@�8�r�U5m� P	 ���o}Bm�>D�K�{K&���܎�d���U ���c�TP~�/��C	R����t;��"6�y�WpH墄xkKm��~?;I#�s�����������DP7Fׇ�,S�
�[�y��#�.	l�% ���}Ї�W�7��Ԯ���j�J�!�~#�q�Dp��y`�cz�:��Nv܃��F�/��:?(�/�` %> ZqD=p,',S0�����t���bIw���+�Ꜿ��#ⅎ�U`Ƀ����*����%�"����#i=[f��c�0���K-�~���L)�JI�o�#�� ����@�����_F�'y�c��W�����I)��ׄ/�����$|�������0)��?�����p����r��.�|)�s��--�敿W;w���/��������|�ȟ4i�X��'��s��̗��)�W��F>�͍<��(�T�8���FY����B�q�`1���8�a�zğ,��B�v���A/3�w.���ת�_Mz����N�����7�\�o_��Ǧ��=3�����/�����&�V���F�����61��N�N�nw�a(CQ&��d~J��:�RM��+�����
�ě��v!��@�e`�#,� F}4���71�
ujlP��o�}`��@�Y�a�5R�`���J2�[����������| �}��U<T��J'C�M�MuR��&Aw5�~WR���P��(�d(�D�8��hZ\B`�tm7Qw�����J�}Zo�x�I��ɾP�vx�t�x��7Q| ��r_��V�&U�aը���%0EՀ�W�I�H��尾x��k[�PzB%Dh�_/�.%�_��(�~q��� �@���K�K*�r�M;I�"�#m_��w�/]�ӎ�v|9���� ��7��7M?C�;L�`zIH�5f�w���p�_%�[��~I�B�!�~A�����A/a� A��~9Я�~y��K�\�@�TK�Z�@�	T�������w�� �I����{�P!	�W�ܓg��+���Y��:��t���KBT����_���3|�?O���?K�[{���י|��n�$f�7���/��^�
�X�7�7�3!�$�9����	pO�Ǥ�so�|�����џF|	��El�u������"�|��ɗ1�~����DE<e�D��jΒbX�d,����(%b5�0�,Oyf�&G�5��j��U�5�9�g�~à���&K���G��ء��Cs�7��Я͠�;a#����Jp@���7@Ք~�V��{��7\ �~�'�>i�L�f��/&K�Z�w����(=�%��o���_?|��z6������A�/���K))�I�/���	��8X��������T�O����%���/�I������R̟Y�f��?����%M�ܓ4}��'�8(�ST�q>s�8o
s�����G��Ř0A� +ˀ�
��=ݤ�/7n����{�9�� }/�⯖,X��~�T�o��(����ĉ~���*I�D�H�����"D�KD�C��8E�DDI��!�!Ȩ;@C]�ɔ$I��k�*�ׇ�e*�*�|�XZ!®��tQ��]p<��>��uc���93װ��m[��N�[eb;Ҭ(}c��Gh�A=��m����u�&FU.	
pT�n2�1x��CXz[I?��ȝ�p�&8	���ҥ��:�M"
2���RI�H:Aa�9p6A?Yԥ!���a�6�]�l"h\�ڝф��Y0�,dZI�EN�!�[���bs~t?�������]�o�Qu��g`�Ai��+�ڦ/�|*�
�W| �;���O�Pŋ�?�;��?n�ȃ�0-��#2��9B�1���O�9��#�O"��&��]�x�M�PlST�$s��-m�X�,ۮ��1���"��P�q�g�N�����*4ֻ�#�������лV'�|:}�ܸ�/Q�vrϺ�<���#dOjCˏ�"��F��Z�b�x݌�n �앴�g�$���@bHD��RW,����n6\B,���s��W��Ih�ı��G�
\`�b�<նR��8n�t��G�)߹.ɵ%�ϾW�_j����}(��m����u���U�dI=l}���St��A4`�����?���]zT(�/�` e1 �RE��&0'���H�A�bn�u��� GZ�Z���dνi�d6�8��z����D���M��5k�KI� � ��h�Ԋ����`�P|Q��T�!V��^jC*Z��@�Ů�ui7	��Ԫ�%G��Y��A�%�%GZm��^|���(�w�ёv�`E5,�f$m$���X��|"B0��2�!`oh��֊����"}=0�`��R���R�Ð���D��4�T)�@�jZP�kEk�]y�/9��Y߷�����f�-9���)�j3|g#y�%��$�R��\���a�c�>���Y�ŗIK��G-1�^���r����r��|O�����a_�0`@Aɐa>*jj���g��)���f��Mb	��?�s�>��O=�������)�\&~�{�%�y�͚4h̼�w.��9ޙ��7���a�x�;{�ҽq�w�b����䍿w���2޹���;�x��B�7nz�ʛh�x�"޹7�θ����X���>�]�3��1�Y荣�w���5��z��;��8|��^>�����=ƥ�Zo;���9������)Wa�RX��ޙ ��N��?��]2�u�����[B/�z��Q(>8�r:�/�� ]"�R�*p�JII5��.P�U���i3�Y�5m���lf5���fy�P����mP�Z�Ӛ�k�w���U?��Fm6
�`�Ѿʢ�G�ܵ�������,��f=����A�Y�e����l���R����������2U$�b)�HEb�X�t��r�l����Σܼs�7.Z�I��;y�w.��D�x��u8�s}�u�=�1�w.z�o�zX
Y	e�0FUTe��"!!y�O:��|~�`H��]�Uk˘:��ڲ�C��[�*e�)%�U��Z[K٭����U�p��zd[�$[�Bi˖�����a��V�V[mY���j[&����b�/��U�\坩�q�y��7���L����0�w�`�:|�s�i����v�Ӯ�_��~^�D�#@�"K��S�&M�3gĈ�˗8�t2��<a��'�Yȏw�7&��/���]��L޸E�:{�o<���7����I����&Ic�����`�)P!c��H��QV
R�/�B�����I�=J�KT�ِ�����k	AI�v���A�k� ����C�I��J���^C�~��9:�ϧx��U'��t���u�z_���K�'��6�b�jX���pHP�zT'rAC|��J���� SܓӖ��H ˜\[���[�Q,B��������wa�k<$���z�_�]�{Q0�8h�L$x4�q���#$��8Fs�2�ƣ�b(n�/�`i	�[R����u�C�u�Gm����Cz�1�����R�:!�"�܈C[����R���h*|"�l.'�0���� �C.\���lt���>|D������R8�X�L�@`�R�W`3Arڹk�"z߰�LZ��g�F�xj�Y��v%PiS�HN��FfU��]�͚���/P1���j)9�)�)���G�iyw�f����𪗙�x�h�0}Y��(�/�` �2 �S�I�ZM:|�U�@�����p�Ӣv��Ӝ��`+�T;�e�Vz�%�o�5]�z~��,�H�O����Ֆ��oD�BR� � 5��U��lg�e;_����`5BAD4.����ޖ��I�,�m�3��Ҽ��wn�
�9����3�w.��y���۶�R5��r����;���7`�<:�EqC�����[Ñ}�o��S�1�7nzc�7.�~���D4���ġr�����;�}�؛�:���ѓ?��z����!4�}��q����L���_��/�X"X����* ����c��%��y�z�%-u��8����H�9�r�ґVJHHn-q��f{�^�)oz�C�%��m���;y[ P�Y��%ߙ�;�x���m���y��s�I�o���N� A���ɩ��L�x^�77\�X�cyc*o��S��I���;yۧ�y�٧�*�}y���</��~.է�xTDD*��>��S���!�2����]*#SY!k�&�2���VX�&X~+ǣ2`��)�zbL�c�Ș���b0K�`V:�(q�,���m��f�� ޖ���P��Β��ɝ�����+�.]��i�D9���*�ҙ��:$�F�F(Hutbolg<��zK��<ge�9��X���eEk��=���N�yT��A��|G�D^Q�0z�Jk���za�*��(j��{��x�ߡp���Y���;˼m��}+����|gU�+Rf�U������M��n��(o�C����X�3GZc�Vr�����,/-+Y/-+-)������JG)+�R���&Z�c<�Y��gf�y[	o���=o
����m5�Θ�δ�zc�,@�9{����	o|���7�$-�M���
��!:�@��UW��
�A\� u�6�W(���ۼ1���ΰ�w���wv����;������:}��R�j\6UD�D\Er�֙j��Fi����'��+����ֽ����^I�+�F^TP2���a4T��
�I�d5i%g�Y'���b����qA������Ϸ�yg�7�}粀��5�3""#�&���!�� �I2bd	DDrJ�-*(H:�#���'�?�g@�Dx��ؕ�I�\����k�������g�}r؀�����v{̩�*� ���_2���j%��V�{����F&C�>h	yF3Af�!Y����؈�/7��G��i�7dn��)���!��R���QLDܿ����F�#�@��+r�gOҿ閭S�n�W��R6y-��$^�9��ҥۃ��;�o(&9C�%�T��*�\Ґ�-@Ӎ槥�Z*��":�&�m�|$ �G9�$܊ ᮚ�����L�ezwP�?�${�v�o!m����� ���Qe
EÖ��T׾��s�}�V�t�4�i��Ϗ\�/��.K��c|�|e@�Z>���06$A���'�������J����#�Ѧ�S7r��]�B��`3�d���`����&}��~�7�X�j�3���_�����_S;��Ο]وԕ]*�X�;�RC�����H�G?WU�{�|���P��͠@�+,�OI�%I!C�EK&
(�/�` �9 �`F�,'��1�B 1B�^\����Y�0��΃�7�2ݿRM6�L⪀�e&j�o��Y����Y���}B��N��j�H����\��կ�/�*�U�_�,�ቚL;s�d�j����t��}unq�+ν���8w��s/��m� H�F:ۦ�[v�������:[z���±F���
�Ç����� ��O�[�\bʞq��ƹa�87��Nq�(��ĹO�{���iun�&!��"����f8w��Mp��u^0����PǺ�k�m�vv��>{y��4��BB��P9��DBZ` �L��5ɘ}�����L6�ۙ5]���.���upn�@���-�|q�Ɲ���.":7Qy��l%�/yn�l�γs�� �X<7x�Yη���o�S�g9֖�VJ�X��m��*���8-4-�?�[���e�,()V��DC"Z}��A�B�C������WX?�8�j �F<;�4k@�(]��to����Ź_�8����!>���ӹ��Vw�B�:[+��6����?�9�;�ng�KKLL$Hpo.���8w����c�$�[�=��G�>:����o�ܭ��P��)�X+,|A�b0��4�����ƒ�`�W?��.W�T���_��7~a�5��tQ���r��uQn�s�<w�}�Νs�9M��c�V̹Ü��*4��epng;Փ}�O��z�Ok�lO�N]�D4�����3gN��7M�\�#@���ii�4b���)����A�(['�K��4
Rn�vmQ��sn;t�M�l����sˉs�8p��͹ߴ޹yg��|ۜ��s�9۬�5sn3�̹˜�i��=�Y?�4����O�=ڏ��LΖ�r���ǎ�sw8۫sS8�-I{����N��^U�Ư����i��s����tn� ��t�$�sW��9:2(��D��(�(w�F�Ơ�6�D�҈�S���v�}���sn=kԜ[�3g;��`�x��%������rn,V�6
�&K��-�s#9��.r��=Dșǹy�8_�֑�li���+O��]�l3��~Z�ˠGC����z����;6�{��׹_g���r8yj�k��2G�H���J�i�4�0��s�H��̕e�$I�v��n7Ҭ��8ȕ7[�F�$�#��f����8�9����H�n�Qmb+�RJ�~�B�V��m$Ő�:Dq�8��X�d�pm�Ѥ�Zf��V��He5"#")H�a�9�h���@1���FJ��JeI�W��)<��ݫu�tJ�SI�n����(�z�neP��gsS"�OVpї��,��?4�ά�>�!0==�>�GM|Y��5v~&HKY�6�4�ܹ��V�c�K뻂��?��%��ԍ��(]�f7Z7�����w*����Uv�6���.Q�H���x׶�)Ne�OE�T���%�6k��iѮ}�1s]ű��0R��U�q9<a����
z��D��[�~��G^4M�~EU(EHjy��T����REUI	��x(����ȡu����@ʈx�*��lP
kh���S��@�?��v\�`F[�;����M�@�}FQ��e^���b��N��[ �M5��x(� ��� w�q����x6\��S%;��G�O\�W7e��ׯ{�dM~h��PVVY�3C�*���1���P�L>�©Wg��V���8ɝ8-�5`��mᰞr���0!�OK��Q\���9�a��N��3�6l���n�`4E���q8������x;ۚ�yL=� KhT2���?}K��fxMHV�ՙ)0��=+U @���TJac�&�J�t��(���z[�/(�/�` �; �`4D�lI:ԙ��r^�q{b�s�~�����	���Dy�c�W�ĭ:s$l�^��C�:���%�����MH[$��� �q]��8��:����V�wk�I/x)H[4o�W�b����t)i����"��$�5$� @����`��븎�dv�qB�'$�u�y3��9J�RG��Hj��N���4ڎ�l�Q�@�arc���䞚&7��4���vŹ�&��d��lw�{͹՜��s�9wy9�,��:���F�'/��s9[>�nq5q��[�U��W���M���$�s# pn�s�z��s:���8��s��v��f���9����D7p�Zmf�p��h���41`��_�,Y^*�Y�*�3K��R�RF�F;�*Z����s�9[9v��_�]e�ek�mxn��q��6q����l5���KC����l_�'�r~�[3f���ǈ���O���5eJ�'%�}~�i>���4���q�.�+�r�l�d�sW1rn#g[�L9w"�&ro��q&%�[���9���l�I�s[�yiݸ9������K������=�s=}g�@/�,��םA�_��N��O�45�y^g�xǫqE�+֪K)�dk`��$Y�Hkk#Y�X��$A��&(�>n�z]�uB���}K��8��\����;ʓs?ir�&G�Vərn!$�s��.�T�hS�:p���t�ڹkL�f�t��6�L�s���l��ѹ������vϙ��������+yI"Mv@4��IG�[��l�$��[�8�����)�Ř ؘ��]��ż6s��^Q�1�XH% �;@'�ۈ��ݝ-,��a�"�3��H�lg���n�m��ML��i����}�FoXiC�j��Tim���X�fKk�b/+)�U�����*��F�Է�RJ�*�`��H.4��W_�X5kp��Y�3����.��j���q�w�>�S����u2p~HC�������Ji���ZZ�oCX9!Λͦ�d�����RU
a�#�Z-`ͼ��'O��fV�q�- �����/L� �[+�
o��Ѩ*�Zx���^$Q��֗�몖i��Ƙ���T�@A��M�ι��9�4�FS��eƐbZ���:ar�E�[I�,-�}yig��ǹy�xi����ي �����]�<�l���^ڡ�-E��V��YF�;�l�n��x���"�Et3粲"I*T������rr"@`� Q�l�L�;��9��;N�qC��d�<�[�5eD2"""I�B:1F9�Ԑ�D=�)E���̂��+mr��>D�� E�]�[��� ������~�c�e��GnGw�8�jR�G&Ow<o�'t�D.��1��w&Ð�Wq~�̙Z��wݐub��F{��li���z�����Ѝq���&S�
�G���ߥ
�I�J�M�ne �I���w�]
��&nS&�hO~��8t���j8ۊm/up�o���rP+d��sv���AN}d��~������Ĝc�}Ppo\�?F�_���;���͆���Z���ϤNb�����>j[}��ӊg๷����B�k���� �-�_��O0�T\���WcQ���� ʓ���j}�A��� ���p0��F=	;�p��͏�{Y����~��f2�bn:����3'���
�<�-�:�Fp�lt��J������@cy�g�R\���IR�h�I�C�CilG,љ�d�.m���F�͜�:��°�Z4�K���@J��9��&�j�ˊ5�-P���<�
�zx'�x�i�����܆>�ݶ8���D�q���0(�fd�;��U��!nh(LP�0�>���	'l%��=�e�Á`@hԏJB���&m}�yy�6�qv�YCCQ���Y���8)d'��Oǋj@o�*f�<���a��AV��C�9��������(�/�` < Jd�G�\M:�����:�^iiD!V�ͳp<�W(s�m�>&M��7'ߟ_B�q�l�Xw�nh���m߻f�	��S+-A��!?|i)I�%K�"��K�9j�O�&7n�8��I�MnYlr���9�;�Nn;���5�_�5�[���Tsn5�ǼÅ�r�-YΝ��*R�-%���8�P��lun�.ϗ��O����9�L��Dɹ�i"�����6��Ǎs� m������e^�8w��M&g�{ƹ'6��q���^q��=�|��=��7�ܣ���Mq�͞�%���Qz����ѹ�t�֝�ЙTpngr�l�'�����{�sn���/���,>>�VB�G]|�[	�3U�6��֌Ԛ�HSk�b�Z;�l-g�����	�R���`����>#A�A/6� �!�v�vk�jՊ8l�Z��rEF��j���x���h��Q�!�5g)��V[d�b=u�a�}a�!H]�8/!A0|��d�v��7mw��v��v7Z8����A��<���=�:�[g�9���q�2�&s�b�7ǹÜ��s79��R9��sS9�!//�/���q�����{��-���܋����t&���s�����{@�ܱ�:�߹��:{���<�Vk�01]���M�6WW�P!�+��8���l<��y8�ȓ- �9g����ǝ��/ߕi�����P����I�&V;T�eR�Z[��T��RkE!W9[ͨZ��ªYJ�l��fS2�Q��*Q[����0V:ڤp��ڢ�R:�9�Xm��dCzù��מ�¹��w¹��M^�s�� 8_�s��oϹ'�O��Kd_^DD4h C�O���?| ���bÅ�3u��p�K�ʽ�Sgwn��N�xI��z��xU��+;�x���s��^��[xywb|���g߹�=�T:���J�F<�`��/��!��^/V�m��j��<\�µv4ډWu�s�8_-��Ν�|-��T�p.:*zy�`wzP�^^TS��v�Z�.L\���
��Ϲo��7<���R�x�M�-��5O� �˔��-���X��3�t>P��@@���9ԏ��9���(�]fMi�W�h����+��	�QS��&�Z+ˊ���:IҢ��Z�[Lg�;���[�����//�L�ܟzٓ��˻������B���r�`�c�x$B�/Թ�H(�8ԫ���"��\��խ��嵝{~�x$���n�c�8�[�m}����P� �|@_t	p�\?T_��;LK��DdD"$""I�4a!�R|�$=�������$)H�� @HeZl�y�z7y�'6��H1��׷�b�{��'�@��|L�������Y�*q5��x��"���p��u�	|K_����/�����{�}<Y�;�����bs�@�����H��̤A�smk���L1w�ET�w⹉B�)����&kve6kH� �m����@5�S�]�Ym���)3{5S��_~�Zh`>�'���ݵ�Q�O'�^X�j�F�N�uYg�t���N��Qz��C���j��j,�=�RAs*Y���w=������B�Ȫ��`�Hq�#�!x�� ��@�����&?���`�(�:� ��������T��zG�p�YP�gR=�eaVD�e����ZO�-�oӯ��d�W:�����ĭTh�x{O���y�n�5���.�yi�����\��N�Q�%58\=g8�y��rf�'k��}T��P?ޮ�.��W�v0�~�=be�c�G`k+t�6�r�cZ@���Ű�'r�l9Iqhy�B��h��P���W3OMiX8�\���F�k�J�i�o��zeڙ��h��m^�C_�0~�����0�3<�L����C��~b�|����e��M���:�Q���; -��$,<i��(�/�` E9 *]�F�^M:���Y�zÈ4K��H(.�)��U���,����CX���۷��J+j³5pci�h�o�l5!�� �bK^U-�Br���	��n�RUU�q����fm�FHk���$J-�\.g��.	���l9̖�� 0�t47c� Sx�	���P�;6�V.���N��ez�d��c���>��!S�
��UU����?����A�}�?G��1-��������G?��������n�|ѷ�蛂�'���C�o�F#�ёJVk˚J{;K�%�8��6�F���Fn��W-��Ҭ�Q[{b�	`���:���Q[+���jw��ڕ�2�buVE;Z�S� 1΢֊x�K
�e1�6WL1����ZL�UҒ5j��ު��,-�]�k1�%>�֊I��P{$�WKm�]���r6.����ܜ����h޷띹�PA��[�/�w^�$�y�;_xߩw��R�ۛ��y��w~�o��������urt�E'���Rл��ZXXY��8N����\�l�}e��"�\�}ռM"�Ld�;�>�7�mbxg޹����w޽o���{g���y��y���y�F�l����yٰ9��o-	]Ɖ5�s�w	��ɇ��(�D �"�J"�^	X�E�q��
'���q�*	�P�xab�D,��@��1�[�E�ôY��V-Ui+i�%&�-yL���?EP~H��k|�K��Q&+i���h�RL� ��RJ��B�-����*���VRG�R[�d������`.G%?yg'�; �x���}����;�x��lB�ꝟ�w�Ov"?����C.��-�σ++�T9znm��Ո��n�$���xg!@�3����\�}Q��)ui��N�+���f������&	Gq��D����}���wz_Zt|���e��`n�k�7 �>�R$.���idbqy�[��̹>F�!�`�lGi��F$���<�Q�^S/��?�k���^�����5�
_aސ�˱N�ZXg�tu�)&̗/^�| ݜ�i��5���Z��R�ld�C �j�j�D�����>�Z�ڨ�-�����l��V{bj{��%k�,^��ż2C[k�b����
y��֛��̖��l4�m��}����O���G�,��C�L�~� ��`��R��ǵ�����L�zzjjrr�7�6�����x�,~�5���5���ξ������/��4�7G���G���3�9�33##A�$�p11��a{�e5�2F%%�U�XƁ�4�����F�>ͻB�辙*ˉ˝��S՚_i���j��&-�D�h���m����24�Eu�X@Db?�� I@'*��vBz����5
�3r� 2�9
��Up,W)�j�.�b�(�"���������0��u�*�Ǿ7�Q�o*ւ\}Bu,4m����P��������{�!m��\ѕ��c��r���Z���������9�3�j���Q������ZFǧ����*���F�F��*��(��\�3`9*4�v"�g8��IG%W#Nl,欩�&@��8u�u�$H𨎮R�T�x󱸵 �O0(�m�07�=�Tc���'ܰ:�n����.��܎�:\��[7Ŝ,e3�Gә�Qrz<�?�� a�.��4�0c����gC)�E�Q�W�j�|-���7.���	y�|�n&ظ&ƒM:��+:4�K�2s�4�9�!ʣ�/�}_i�Nio���7�0[%F���J�߳�0j��OO�Z��_�-=�e�P�b�:S�9?u���J��y��*�c7���F�MF�ޡ�ޔOe�
�y��|/�s�+ՙ��0�N��>��ƶJ��(�/�` eB jt B���ʆ
#oJ	��?5#�0^eD�xw��b��� �E�(�J�?��5�hR����Dʶ���[�g_[��w�f+.0�
E�jiiEC� t	X��.�W��U�q����(
!�
IC�)Ԁ�b!�2�DpPW�8@ա�$p)F-��#�2�����L�7���M�f��y�M��T������;����M�C�P/����a7��N�B�Е]��f*$!"i�jQ�em������W���;��ڛI��{�b� �˫o=�c�:|�-yν�^{m����Vg�a������:8�Mv���&�i:���j�Zl��h#͵@�N���L����7���]����+�����s���1���G�c(9�C��_���w����{���猼����39oy�SLE��]N}ꄄW�iт�ך��<��[�?.q|!�����G^~�R\�ߩQ�z�����F�ײHkY����_$�ޗ~Y}��,�$�|]������D�s�M��^M��-�Ⱦ�^�^�/{��ʽ�˾�Kg�ҖŲ��F��0����k}��u��p��c1:��[�������7�؍�n����5�������o1�ۉ�n��O\$�o��o���l쏯�Pt��M\��٧ʔ1b��E�С�Ԥ�����T�'$p��&�o��7���x�]�.Q���Ꮯ0�-#����#��S���.��U�{�.�\�/~�4������\姉�w`�zrw�K��{?r0�ڟ|j�~���\����`L�!X�e���H����&e`��B0���X��U�1�=3��K���=��0�"�r~��;ꇻ�@i��͛�%��ęE��K��	��j:��N�FӨ��oLMK[�[������3��G����>j�1����I�q���;�o5������L�F������Hf�FO��ɥr٭��S���R9������O3���a\���??�(->��u��2�٩�]h���ަ��f�@��6鬳���
��8R۫o���D`�(^�g"C�W�3���n�X�����{�?��(������#����3-���q�6�����\�E?q-򖫬���)�A���s-���3�
~b��(w9�*��� ��L��o�7�����-�{ �lJ~b�?�݆��Z�c�Q��:�~H��@�R��]��v�~`�:���vhG��v���W�
v�v��!�݊v=n�L���c9ϲ�$������,֔Iv�Y;�d�i=�9�`$	#��5B3�g��V���ŚrLТ@m�TU��T���Rϫ�~��E��;J)Hk�*CJk��J)h��~*
����~��Σ�v�V���|�"�Z�c�,�ٍ3L_�B�V��X�i�MƠ�m��f�e[-�l���@3�y�l��m�<f[��Ѩ��v����A�V�l�RV6(m52,o���L�,�7�A��23"""�$�pIǐ�E1�9�FDAA)(��i�b?�o�3;x�D��ब+�����~w�'y�{!x_#�	V��~�q�%�=���*�p��H]�;:/0�(7�ᯋ�u��M��Bo��$��j1�Z�U�@��/�k��%{u�H�m�sQa���e��̫��U��$4X��ߥu�����}w�u��>S�&Gэ���z��CUL`�����8�l&�6,Ө���>h��_9����r���fz�N�ou���,~�����A�vN�7m& �M�q4���M�=cz_
)@3�1B�N `�rXv�ؕ��O��9}�l�|����7bPKq�a*FQ�T��N�Dq�ʋ�+��ԍ��/���U&Wf5�$D���==��)AS��@�{�%��� �d�ߎ�R�G�X�|�`^�s ��-R8�u��8�z�`Y��J�����/*6�Z��S�&����M��z�m�KD��I�D c��AB�����{���;v���w�<(c�H;������c�,r0(ȣ�����|�v'[�cۅ��°��V�����b����W�@x�m�Ts�[���D�bx�4;١��ՙ�4��`��û�F���c,�=[��~ֶ��
(�/�` �6 �]�E�.��  �ĚN�@"� V�k�1��҃�׵����`��iP���$���kX�R�)�"���mK���9=��@�M:=:g��sv����s���ۭ�f����������V��b�׃���G�^{u�bRuַ�����Lj�����,���h�f{�j�\��Y���%�$��iT�e]��0����B��5|��h��f{�^J�m_�l�G/�G��^D���`H�����G�f"��l��4�,$;�,$i$m������o)���/��J�1������R�?��w���*R8��3�o[�?��/��
���/sC��%~�o������!�� ����/��
�X�����-������>�Z��"��ˍ���5�\˯��k��� ������K2�Ga�˚�e'���Fl�7��1�M@�c����x��-�-�#r���������<�g�9�Q�[p"�TGտ���!�K'������׭�g`v�D;J��(�>�u+����n���7'��IWsz]ѯ�`G'N���G��f�h��N���!�z�o�{����ިio�1m��� P���ɢ���b�9�jE'��o%4�Z��us�oR�����[�S����;��8��b���%�7	��� �%���%.�_���q5�j�{���{NU� OOPPA��񗭩s��?忧�x�$�?�࿑��5h�o�8��+����6�=��%��i_�R�j=p)��4@���A^�B�d�c�A�ٯ�k��9���tIt�W��u`�r� Խ:p������k���z��⸥V�[��'6�8{�{��7 �����[}����Dk���T��y�烶��n�cT�����U�1��f�S¬%�Zd8]�v���߆��"�7����<ZD-з��a������T� t�er�eq�eo�en�em���40���8�!5�Bu�U$2�%m��H��JƘ�6-:3S��:;�6{�Xem�ș�m(;t���xn��/��
�=ₗ���f���w��+U��˜�o��܃
wy�jѢ�ݧ������(�G���m��8񠇗.��%ĵ�B�1�x� ڧ��W�q�M�D-^���zEUgK�a��l��ik��u�8QߜG\�XLg�I[��0t֖��*�3mF�H��?��]��	���H�"3#""�$I:A)��q= �%�A�L "������Q���; �8��:~n:䒂���>�������h�w�$EW.�%�z��z��3W����,7�$�=�g�H��1�}�I��B�9�H�0b�4�4jw⚣.,�ThB�Ղ��:$Uf���ݛ��fy�l�#�DPRo- ��� 5"K}@A+E��z@��bc�Ntg���4��-�_�9nS]��i�-�Xhf߷�w.Ƣ������.;1uxe^h��c��'b=d�50���5;0��Z�^��U]�nX��\�h�ℚ�՜"�CI��(/�����\$�A��Sz=�:�Y�ْ��ɤu�&��&~�|�����{}ca�;c�R�q0<�{A�o";@�%�X,V̆�!Ԛ@���I�?_�4K��=^�[�>���B�\@ǥU���csV!�d6�����qH%1���w����!��n����`7{�^���V	;~��x��*UY����"��WݝͳnjG�����޼=ڊ~iZ�1n96��VN��..�~�(�/�` �< �c�?p,'�YD$���zf"�.�"�ƛS�$|����+�*Ҿ�k�"u<�أl6R���P�5B��#$5$�-޽�^r���^�J�_��j�vk���FU����F��h�w�xP61��r�`K9[=���lq���s�8��&q���~Z�sc8[��:[�p��ܹs�ζ���u�g����^�m��s��
-�����6jԔ)C��
��Ӏ)�"�=L�e����<���-�sS9[�r�:[!�Vr�A�}㌢�s����� ?��s8�۹��~�X�Ӎ�^�Ū�3�����}Q�M����Vm!�B/D`k6P	�᎒��8����e�d����V�VZ�D���9Kg3ҹ#A:7�G�~��܎���s3Zt�E��s+Jt�D��]�	:7�?�����|��=��s̰s��2?m�s�9[]~Zg�ʹ�����Y��U�D�rn(N��d��Lr�$H΍�l97�C?��s9[#�r�a��M��~~�"g��ٴqn3ν��i�Φ�s����y?m�sw��3��-E���6�l~���VN��'���D}�����V���ć`yY���eyɊ�W,��HZ�K�%�.?�����H��p8ڍ�>��:�<�>�w"W�+�9����-oŬ2��Y���i�s�g{������ֳV��=O辫xe�.~	>a�������6��B� �Bq �L, �J���Rw�X+i��U��v�G^��}�J/o�%OWRZV�*��J?���ӓ D�YH��c"��B-�r���'@g 8�&�rIܨ��,ko�����]�bm ڏҊE�G�*�	�p6���8�8���*7�Ɯ�n,�v�����sK2��P�s�c��v���Xζ
��^g;��1��¹a��ֹ]X�i9L����isg�f;��l��͟�gK�ɡ�c�ҡ��bk֠Ac�m��tUU``�qCE55�[�.����p�����>��q�[<da~�k�ߥ*b��YY�d��ҋU�V��xSi�%����+K+t���4��z�/��d�d���f5֬�17���o��e2����0�{P�ι�4��՝��ٚ�s��ss9�'���9����pa��^x�D:W������'����P�s10�Ԩ������\�( �+���]"c�%c�D���L��D�ܔ&�{�s#:t6+��Ro��c��-��;�X�sǁsn8�4�NS��e�|-�@� ��5ζw6i:�/���ŉ�e�u�g[����쑯��v�M�c�9dE"#"I�BZ�D)��� 59�!dɈH
��B��e��U��~�ZbH�S�B���{"O4X�m>�ǁ��Q?�)�|:�<�c;�;KG��;��5ۓ؆��4]��+뫓%Ku�<�*�_�m;���Im���̀�"�a� �&��H�B|NLS�u]-?��������t���d�=�J��W:�cv�I�꼑Su�?�����7��M�z��F_Lx�{�ό��{�������p�8��5���X9��_K� w�� �ג�HOOu��Iq��F|���ߩ���c�[�k�
";Bc���?�*�fX`��vk���Sq�������Fv\9�vo7%+D[�H�*6 {h;��xW�8�d��3&~�<��&�e�e��a�@��R"^��N��~M4Rc�6~�Ӹ\8 ������;,e�.�q�LEC�?�|�$k1�����K������)���O��E}}3/�J'�~���w<yz^x>�@o'(�\RF,z��(�D�������X�[��fߥ�g�:@�U�$U���(v�52ڭZTu=JÆ�Q'r��;b����U5'��a��ݘ &�Y�;F7��e�T��}ڢ/ͦd�~�yrQq����o=nߢ���O����W�9s�u(_c����r�%y��T�Z4�km@�G����>�O.�(�/�` �= �c�D�,'���  �@�qǷF�~Σ+��H�$ �\���L��Hj�,�P��J��U\�ڗ�2?��5�&!*�w��9G]�pW$��U��g�9qb�8���}�q���D�L�QlV��p��,F; �f"f���5���pq�n��UE�ܹ7�1ܹ�nXw.��;�l��JwΥ���բʄT�T��`Gy��-ǻ�v7^�ncmi�ψ����3���Lm��q�g���9δùA��W�~/�Թ��\��^��Yi�/���J.��׃RR0`�h:z�Kd�Yz&��I�3�L69�Yg��A_�>#ڊ������/)ԹQ�)�3��P/ixngJ��N�3mpn�3%ύ�L�6p�s�*�f��n�ul1�[�{6��x��bw�;�8W%P�t��]��oPnw޶�[�vƛ�[U䦸s�͋i��H�ךW-�[˹��i�s#9ӫ3r�T�qn,^Ҫs�8��.q杛�3��s/�K�tV�ߗTp�]�굿x�������I9gx&ݜ�6gr����8����]���չ�����R�Tɹ�����ӹo��ӹ_�3�iә���%�
�\�?��]�K��?�X�79y}���s����9���{�H�V��b����'[@��bFb���7nt�4ιˠyI����sc���	�3Ep�%}�L�ǙҰq�#H����5��%��$i�S�q ��2�׏1p�5L���ٹ�3][�Os��мv�X�����$w���kk���t�uo;�t�]ݸs�:7صa��b�Q�W$��6�;s�o�0��C��`;Z�����<ˌ��r�D:JR[�����5���s��!�%�:w/i���C�&XXYYw�d>�p����o=x`c�R�ǙFQ8�^��xIg?���sc8�ٹ��tϝ;Sgr6;�cg�Q�_�u�Xy���;�L,��RX:�x7���4�ל��s�9sn3g
�Ls��J�8S�/)g���MI�Q���z����\��Q�L�y��$̙Z�:��png�����%��WCH+������p$�:�k�s����+�n�7/<�?0�\&<~s��b>�r�\Su�%ꆕv�:���u[3t�����Yq8*9���qwwtS�:�t�ߨ��{^Oc�N$AE�1-M ��6�L���4�N�S�^�+�d�si1�-u���:�g¹!�)�3�;7��K���G�s�N�{��JF��߉YYr�X�b�9^�$��+[�dO�\��@e42$"
�$I1�iz �1Q2T#"AA
�2
�a;}�G�2
_�"�����n}�4�~sdK����K�Y���=;*�ޢ�]mb�0���*]u'��v�����D<�o�{�7�♞íR^=�C3/��$�����UeJ��ڦI�u�j�-ֺ%�8��e�d6�f�\Q��Z�q����%G}`���-����xV�$Y?�1�z���?v��������v�+9M�=]1B�Ak�н�Bb�Hi�I��r��JR\��j��<pA�.4��B�B8����=o����-�f�M�N�ɪ�ے�}\�����h�=��`Nl$�O2�z~��������O&HX�}����͌�=\�nF� �'��/���t�0E�k%�{yWK#�D�}{3o��p��zo���F-�-���t�vW�*>]��Z
�D��5����E7CLC?����;�N������wd	��e��Z_g��Z`wLu�OT�em툳pc��
��8n4B8!��|���!��p�z-��~K}!yLK�����8V���4�L.�_܇Lv ���#t(�0$��qBhA0�� �l'~-�!���B���>lhy����ގU7�NL�#]���:)�վ�׏d���ի��a`�*DVϟ������mK~x������Z!U|Y��%O�Ts.+$N#c�d��F�����(�/�` �1 
P�E�jM:�>Gp�^�3�=F6�p�sYU��G�����\w�\��9O���kc�� %҆z��x?ܻf6mĒ� � � G����@@x�� ]��A�}?�������S�W�;/I�V�|$Ɗ���s�7�x���`�:~bxKxߧw��޺��o��:�l���n�'�x?��;�A�+����{��{)	����u/%�����8j��	4>��$����Z&%ېY���[ђ%�	Uk����jI�K2
�� 'Z\k��VZR[�Tt��V<�di)�2P�Q�)[]����V[���8�V��H�j��"X\)��Z[-�L�ޗ�����A>�Y�����u|_���s07ވ�ɍM��:��H��Z�����z,akR�#`�$R�x��Zl��j�V�����@U�%��W�ⱈ�E��h��:m�R��x��+�[)����Kq'��L���Fy�!�,䝁���mzg�{g-~^�wF���G�o�;[�����;[x�=������M��K���"��n�?�^��ɇ��^J .<%�#��{��2z�ZZ���I�C�9�v�C��###��[�c�������ji��oW/%Lr���!���ia�� @� ��jjfI��G��V�b�0���$-�G,
��+�,5k5�p��)��\�X��ؕ��� q&�ɔd�z��W1�8j�r��r�#�uO��Ɗ"{I�$�%�p������Ĳ�݈0e0����坻��w����Z���U.8�yӼ3����W������.u�*U��������Q�&ͯ3�֕���D����8����[g���y�~H���D��\or�7Zx���I��ɐB�-�
e��6�0���Q,(��r��,�ŪmVa����ng���Ãǎ:tȐ3&L�8oݛ���[���o�=S���s��9�y!ZJm%m� �:B������Fb;#�-akR�7֊�֑��b_���0��0��EQ�U+Z�`R�˝��1c+������Y��β�L�+����&����ez秦�z�$���=z�����f`C��Ac3##""M�4QF)��8�e-*D��"Q$%�UR�tЬ -�U��d�����[#?����nX���aW�Ђ;��]�"����O���⧿v�Y~+���e$f�ds��d��2��Ѝ������e>����_�c�_.��D�q��� �P-���Q��޺>,�^V%Tݒ�dR��n+��O!��`�݌|sy�6&B:�-�k(0�P;�)��";�}�Ǳ��铮пB�Ģk���s����]	��6!������Iʳ���r]3�V��$(u�Q*�Ճ�.d"u�t�>�{	^��vN�v��0l�N�@1�豻i��9���RE�N��E!Z��ȱ��4�p�P�D5fFZ����W9V��Mz��	ג$W�W��r2��g\��0�pC��XX���=	�ɴ���~#Ι��_���X�^�#��ձ�8�r!ދ�wW��Ǡ���Ѱ�i��cX��4�	Z�#��h,�!jKЛ&=}7xb�ne����a�ʱPP�.�eD�,�v*o�vrz(�/�` �: �\�CpjM:1�r�E�eN�FА)�c���tD���IET��Nɋ���������h��}[�FIt������u��tޗ�;�y_3�l��b���}���ʔ'J���;y߯w���;�0�w��;'`�;Y>�>k�������������dg��������;���M)<>�˦�>v���M�o0�����(^&v������GD�M��D�h�����ěN<"�Dڹ��hkik�V�B/<�j��+��_�o ���B[R�hc�����&�B��&�8�B[�M*l��Z���~�����=c�#�Uk��K̅ǱV*v�_�Վﬗ0�o����nQ7�Y]��z�����y��h�sy���6o��˛5��������F��o�)�D�\�%�h� �g �Y{;i��$+�X�&��4��x����s�����WPΥ����I���f�M�:԰��'Y�%���K�ģ%�ݝZ�=���i�$��,�LL�Z��
%DaY]��+���@A�����3��u3�żo�w��N޹��ް��5ޗ�;ox߬w���*d=�Z޹��.�3�wvz�����v����t�[�E�Z����Օ'ϊ(�
<��h�����F�QFo4���F���թCE� �ӓ��iz���(�7
��y�}�}���\���@�e�x���w�@���Ž�.3�yz��Y��apOQ߄���e�}o�����'��E���c"Y�(y��\bc��|��+@L���{#>}��T����Ė,{9�H<Zlki����*��Lp�d4����b�+"�\坩��$��}!������x�S�o�;Cx�1������WBә΅�L��%K�$qz�|ި�7�捚!�g��o�w��酒z�"C��q����}�/���xJ¦�}mv����1Ѹ#��ь�O���Uo����2�<����ѥ"�K���}'����Jy)���J�W�{�e>_�__-Z���7J�Jy�M�h�]�~������jk��B�'�N�^�����9�VG��0�a�����y[[k?�@y���*�g{!�"hk}��Zl�je��x�nY^������Wy��I��5�����ޚ�ښ�^��?�ʳ��7Q�]�-���M�wf�XY������\�ɼ3�w�4�����{g��b��}�;P�O/՗3�|��X�K�!�1Ƒ�I
��!�P�Iz��1P!#Ɉ����(IR�4ix78�`hu�[�E!�S���܍�����E+�3p{�G�t�j�5�q��|��i�s+���Hk�X�M,E�� ��p�\E񈕓d=��C�cvL����o ��إ�0
���/�%5��
H�P$�`�ȑ����&�!
d:���/.BK�c' ����<�ӄ�����H���;?�Bت-�V�x����/���C�xC}�b��p�H ����� IFp	�[p�M��)�x�J@�녠A΀w!9x#��' �R�a���RP���A�m�:ɖ�	BK��ݠa�%���W�c��C��)P�A�3y�f�30�A~�T�B"�\EԒo%�W;C�`jR�@`\��H�I�u�)�����Ұ�C���"� q\���Z��7��b�i-VJո]��v#�9������p��4�K@	�,��0���q��G�<��flD\! Р����"l��h�Բ/3E�R��ě�AnJ&S��ј?}�#u*@7��7d�h����`�؉�އ[UR���lw�F����Z�Ix��7�M�>����X� P;��#��g~�r;�a��l�u4�cj$���Лu�ٍѺ�����Z-��B��`{`��c��(�/�` �/ �WlD��&<�s�Mъ���ݎ����}Z�jw ���3�uDH���E{�����6ńdDۏ����f�n���) � �#����|g �>��������O<��XѢ�S����BJc��Ą�����&2����}?�[�.���}䝏�rTI��>����g�w��o�w~�����3����$�y�wfy޹��~yg���gzg���y���}�_�����^�;�7�9��� ��{�H2�l���_�*�TM9�ϔɦ�J�T2��r�Xv��.�(�*W���Z\mUS��֓��![�I'R�T#��I�C9��P�E���i|�`��u�՞d,�3B)#Ԣ�0B9�f�S�T�$�l�W���6��CmU�����r<�ڊ�{+6�j���z�֖Ր��`���:�ï���-��>{��	o;+�+�QL��\��X��N�u1�u�-�	�H���bd �u\����8����S��v-�;�kQRG��L�Շw`�(�plD�A������Z���S�Z��z�8h �Q�����s�/�w��E�{�G�3����YD����7�;cx�����;����s���x��u`<%��}�8y���l��[��1���;�x�^�ىw���G;�}v��z{�wF�o�w��K_(̷;yq|z�i�^"���4Fx��} ���e�5�)��'��j3B��&!jZ�Q�(%�3���*M1NI��`ԤNZ㌑D�)��%5�U[S��ƃBm<���cX�Qնv@c��8pڴl�hb<�h��k��B8�p�M;QN	)��a��)�a�0R8g�(#����	))J%�2@%�������y{C�'�e��&r.�II�,�(� �N�f)@	��S��NM ���t���%Rp}.����R�@i�R�1�9y{Mޞ�����~xG�T��=>E�]���N���eq�x��1pd,�=� ���G}����گn��qd,V�q��۸�!k�*k+��IF��j�`���k�@��M��W�/�wV�)�%@����������;3H���ޙ�����9�]�wN���>��9���:Wp�Ե\���\v#""�+d n���s���!Ac�"#$�H��1����5�����@"	F�GAa���Z%�;�${`������&lan��9.\��I��?w/t�m�Qu{Y���W@P�}��rA�P.�L�6�Z�C�@;lMї�(2��2�>N��<��qK�p�$�c�(�����8�:����z�"2
��
CA�S��a�r�0�]=��]����
�!�+8�`j�S`�~鲵l�n��y�wC��tnCށB�t	`���k4�gz]�e`�3}i6!���O�P�	$8��i�-�;ԂAܑ�u$q7	��6�y�7'�w �V�$���n;�> ��T}(�����O���$���D�v%�h���o�C��)"I
y!,�� �/�ML������8b�?�M�>\����t;�P(�/�` �= �g�B�jM:�J��Ιoy�-�5��}��#�5+�[n�j{����8�g� ��K�A������ɖ$b;�%)809�dZ�$2%ٚ�E�$%-��djYԉ"�D����R��LZ�-%-i�(�c�zDkCAڭvT;�:��a���&3�v��L���%�X����D�)Ӓ)�L�R�)�bPr�aQaQ!Y,*,�%u�<^y�������v.]���u�S���:Y�H���~x_���z��^߫G�* G��XX�$I��ɐ�˫V�ɾ���D<���`�bB}�wަ�����z�/����y�9�;�J�we��M�]O�o��{���x�FxW�1���3��7�]�MoSл*|�]��̦�5/��i��!͒X$�fS3��$I�2�4�ehGkG�c΅�RE.J����ڢ����H-��Ґs�0d��"����1Zv�A8y��;yy�.���}������Y޵ȕ���"��'��×W��+�]�������m�t��.}�>��w����i�"��:����YHѻ�x_8m�jzgʐ	�]����[ʻ�y�(��'��k��]q���]�����]� �k��2�X�
V�W��ӻ�`�U��ޖ�5,�{������*��EzW6�+{���y�����6����la�r>OS�U�,뷓`��q�p*��Y���Y�K* CK�L��B��6��=��5ͪKUά�a�W��&��}�l�R����e���4���|B.u���V]��dLZ�j!�, #I3#E3C�Q[i�fUf==�hyDf1G���\�Q�բ�=�H�ꐣ,j1�Z2B�l6�՜j��V�)Y�l8^y����]�����V�[�}i������.�m�_���}Wd�z��H�[���թ��w�*Q"D���������y�+�]��ޗ� �+���6��R$s���������\�
�|<��-��\�~dAdR/F�Z�-�#�F��̣m9�(�Y���,�GJ)K\.7ڼ����U����߫`Vަ̬v�WQ�=�Ս�����|y��.�`q�ddA�|��h�ݎ�L�/A0\
�p�rj2�v����%�-�'��% ��;Ȓ���6@-��2�8����խ�T�x����
��=p����Tz_�w��t�9����L�����&��Ea��z^��ջ�o�jK���ॽ�M����3}�b��><_�F��$F�8�.f�Ȗ�4�L1��:�\l)R	�Y�Ґ�1��"g-�Y84�P.K��u:�N��w�3{��>n�x_-:��`g�wxp�-R�X�B�++s���]c���"�P��Hd�3"$"�$)tA�9���D-�1�D$	�$��nϤ��4�0��ݫK�����U0�v��l�-Y�~��"�S
�$���@&���Y�8�͍���$�ڬ\օ3I��~T��^������:<�6��si{T�=_+-�h�`"�h�\�s�Y(�j���+Y�J����R9���3_�d4�V\���YR�l�<�|��~�d~���ƙ[�t���Gˡn�y�_�\gg�<T���-�^�rX�����*5#z��ҡ�ᛗ�e� �3篆�!��&�|�ҫU2��1_�GIT�[2c� �X�$,�w��G�@;F[���^�b��H����!hnDe��'׳."�U����Nr�5�����4d3��������f��}���H#&�5�P�g�5��A��;��2��ԛ�}, H��C�s�A�E�OF1��?4Y�����~�юh�pu�u\�WLj�oL�^�:��t�D�x��ڧ�����Ԏ т�^�H_a2C�o�1�)� nn��>���'��\^^�5M喹��f�捀�4P��FLE�A��e���'	&m@��דs�=ޑ1��j�A�.�D��}����rO�v��7�t}�{�\��B�>�x6ڀ[�ivF�(�/�` B �u8?p�&I�|_?2s^���ӹ�WT:\ە_�֥��G���b����vƾ��T㓥�o�'D��4B�Lgah�+;�}Y�{_��;��)HE�y�����kI9�o��]/�]YT�3�|�o����?�d2��IE-l��$B���I�����.7������^����P�z��|�K|/�y-��wl���2)#E��x@f˭�Rg�V�^E����&+^i(�8��W��#�-Ib�<ю2�h��(�c�{DI�$�V(���r,E��Ҏ�8�"�`^����J�W��t�Z��E��ZY��x7]� �,�+��1��/��Y�塾�+�*�F޷˻x_,�*�>�����'L�����*o佭���]ǼO���zW1�"��w��#�_T����7�Ļ�x߬w����P�]s�K�]�S�w������8I��qbp�E&���k^>	"J�O�����O6����fk��i�f4r�IWk@�"9ZmF��lq#iMK�8��Ykk3mF��ZI�H��L����,i����D�Ϧ��H�v�H�d�����>��#��$G�4A���Ț$��̑�� E��Q$Gr4߈��8�l8�Ƒ�2�ë�M���y_:�:�}���5�eޗ̻ryW,�ۤ��.y_%ﯩ���^b���}��������{�|߿+˧n�.�Q���M����aC����лNx������0wʻA����.�ޗĻ^��7��zת	7��Z�ޫUޫ[�|�2�}������`�'���>�n\ʷ�u����}�a���2L� a4�e�M�ngo6�����Φ�Lj`ǳ��ŬIU�B[���ƨ��.�Φ��ݍ1�l;˳�̝M�.f����v<v �g��v��Ƴ���L���B[-��T!��l1K���*�P��Y*.`wfh#�쮌�r<�n���@�t�u��/���}�\(���Ȼy_6\h]���Կwa��:,[[�0`�@�:ap_/���*��j��)���Rq��M��}���)t����}����*�[��>��o��$5���x׬��qe����zo�}y��Bx��*�}��w�~�O>�˧��V�,�s\�<����U���7|WF����w]�����j���]KPz_=o<Y�+����}ռ�4��}�)s����,�����>s�O��U��;�x	9Q����z߫�i�՞ޗ���z��W@�}��o/�wO\�wٱ%ʓ'K�4iҩӅ�"� ���J��})9"����wm�.��}����}� y�!@�������zWKo��:�}Xz���Mz�,��^�\�/[��U��t�+.���@��X�%�%_�N���CJY���p�(3�?JG�4d�, �R�},c��~�~S���y�d��_�uc0)Hi,d��`����b,�>�qd�� )S��!�2*����G��)�1��(�ӐA�2 �4�1�� �1�}4�(��4e3#$"#2R�$�F12>��=sd0�$�Ԫ�s��S����~��W�q޻���Z҈K'~�W�7Z�+��^Ǻ]f�JFf¥����[�~�&�f��v���,A�3o]���<1̘��XѓN�9�����T[F��J[�*��>�̛\E(:H�~HE�����{��FKj$LbL���;��G��N�-}؍к�*v�1���R~+K���E!�=�����(��VLI���|�	�; �J�ɖ��uK#-g�_5qkH�f3�*l�ܵV��n�= ��{�=}���Om�l��@7��(i+rw1�$������޵�k�I�t�'a�bV��� ��)�@����H���n��d��M��MXQ$�A���E��1zw��
f:�K7�SB�2������R�W�c�
�"0����%��`&R�R���Nߒ��E��"�v*g�t%?@�Tfm�a��7�*�$��ڜb�S���=eb3*����V�`�Ӥ�O�55���K��
*�Ǌ7"������#>G�O��ˍ�pZ�(�->�*����p�>Ї����ˆ���<�f>G�t��xTvZp�{�[/�4�;�R��)\�=]���i:݆?�(�/�` �A *p�<`.%`t� �;9�k�1�ߐ� jT�Wo� �q��7[��ow�yj{	{���NOLKεȹ!��#ߵ��=;g��:��}����U�!d�����!����h����BN�fV�T�{��B+~�7m.��.§��hц�~��?kC0��8�'�"Pϣ�C�N
N�����-�ݬ>���h���y[�%D-�:k'Ζ�`~5۔�v�[`�$�t�Rֺͣ�`�oz�ʎ��aR:i�:�G)(R�!���m��m�r̊��4��ۢ�&�T6��I�m��J��-�v'����T1�.���r:///���.ו�ʁ^]��%��$Nr��Mr�dMr�$_)���u����ӹ=����t�J�K�ܔ����":7�s�:_C�6t�(ηй=ν�\��}�ǹ�aU0��$��P�c~�S�W��Z���w�rq}wL������?W
n?e��AH�ez����j���?Z+F� +�x�y�蜖�(�+!n���D��:0��	a��9���(�W$�>R�3Kpu�Ag�H��#	\]y!��I�H}�vzv�φ?�3�R�s��"G�u]Z&t�s�9�8�s�n���\ќk�s{��;��Ĺs��9M�)>V�s�'>�����+=w�p�[=�������hЈ�ņ��}$p��cb�|��w��?�ڹ297�4����f���,���5ù=���>V#�4�𱞝;�۫+P87�+׃����p�3���;7���湧wn���WVU�#PG�G�]��sO���U��<W�{0��n�sug�(!=�EY��Ԥ3��܉="~���`�BI�ӂ� ����zb؍C�f�G�aRJ��@�~�~⍰�ڜ�;��O��N���z��IpN������./��+'+�+�s7:7�sU�}�u͹՜�s�9W'M���\m��ƹ�8��s��h��9�׹>8�׹-D�X��m�s�:w��kչkV+�zp܉d�*ܩ�f�ΥKff�0	r�@�h:�-�t�%��\G tn=o҈9W*�s�.�je���e�c���JεV�X;ԏ�u��e*\�d�R�JUՕ+%��IPr�$7i@r�\A�o�]@^�����Hr�\��KZ�me�\[v��H�s�u:w���ܜ6�{S&K���H��\I�{��&t�?YR��|�x���<���k��4b�k�̹˜ɜ�̹&:�1�s���WLM��@�sn0	�x���˧��B꣖sk9�G���XΊ��2�|��+�<���q�!W���zƋs�;���s�h���,V�{Ź�8��Nq�\e���s�8W>_�&q�x{������G��Eqn�᜖{��5K��pn��59^+綒%ǫ���j8��Ok�se�`��2"I�$�F9���4��$)� %�thw��I�ŀF��G���-F�������j��O�	����,���Y���$��+/��lVİ�oW�H7��*wK?up�#%��w����oϤ9O�<h�>Z,7ů��U��}�踋R�'W��M�I��Q<��p�D
G����(㑔�i��2)�Gw*j��"��-K��'��K��*�L�RYq	�P<�P����md��qDcr�	GCk�M�'x�\��ie����%x�ĆP�@3�oe���ͶZ���,�$
�|�D�e�|�3a=�.��R�0A�R��)���K|�H��8�k���F��bV@�T"�u��§�Ճ���.�` .4��ky2f9=wD�&ߩ����(^�K��7�3�L�V�.b>�_&�7�H�7J5��k킑�����:�~q��&|þC�ܸ��B�'���}o��5�KoY�捧%���7e���B���8�j��LyH����'�(�������`M������a[*��,;��z����lM"��+�������?fu��J�������A_n������_�=m~���^�B����˅���"�� Q��ؗ��^�2�/��T�-Ԣ������8^�0��� @z���7ӧ�+���A�n]?@~Nc����Z(�/�` U@ jp�F�lM�~_�xf�0Pu�r�Y��!���z��6�y܈c�_P��� �4��i
F��}�h"m�ۤl7�do)SST\!-R����m�����8	?��]������*r!ׂ�E�+\��9����P��O� �{�!�
��1���Q叭���;�?n��ib�ߛ9���?������?��{��0�mr�S�:�q�kor�#�r�ڵ�D�r#gS�*�=٫�;.k��dr�䁬m��".
ũg�er�<"�Y��X��#Nn�:_e��{m��fI/��vs�q�E�Ѭ���<&!L�l���l��}�:�lc�ȏ�V�G$���P9��7[{E��6�"*k-^{�����.���^�n�#u$MG$m!�; ����L+�����O ��.�_<kS��S�8[�ʕq���(^{u�D�Y3]��s&�����Xzp�^*)1��O��$�,��g��X�w��K��B�q� ~���D�{�?��4f��w�b�?�Sl�������U���	~b'���1�����䏧0���*?�������'~��W������!�"��|ʵ>8���V�%J�l{���࿅���O��?�o�3��}����eo�'��:C�|�kǪ*��?w����&Tq2�Lfm<[M׆h���X?���D$����w�	j�)��^V&�B yo-����Ӻf���쵵[���i@�/QK��kk:G��6W�2k��m��N��"Zf�3�y�N��̼��f��{�K;^i�(�����.,y���!��OyK2����F���m�0�^�'�xyF���ì��&M镕t��xF� �`9�=���O��������I��?���O��DU�q�����!��''I~����L��h@mϘ���M�y�:�9Ǌ� o*KA�FO��Z�R���؄�Y�&��ɤ�M%�[�����8������?��\�݃G�����q����A%D�2��F�����?��o�c��艷�s.����trF[NǍ���'��(7r<���h��	lU��+�nrd&��x���Q⽙��{�j�����2e]�G�0�ޏ���w`~b'r ����@�Uy�Ǳ� S�	SSRR(l��ND�(���3S��	�5p2Ƴ�sAb�{��E�1��B�?����i����̩���	д�؎����:�������ȸvV.!:�ǸX�|r�d��Z��Q@�0V)uѯV[C���~E@J��4��m�.W�����h�XA�Rj�X����*��Q0���R��\�~a"U|����j-��R���V��a��Y�����Wa�V����R��R�TFkMZ] H�W�������~_��������]`�S3�W.��2��;��:sW�E&/�:Zd����na���0�f�f*�-��8��3"$"""I�41)�``�5IsCRF
J�
��1�I�_�պ@���9�Ĳ��6 �/^�n�%� �Q�NW6ڋ< dd�@�P&4㋾�g�
���<-[5h���xtIx�`W�ڇV9g#ZmF�=�:h�v1�=�.����I��%J�"�KzE\��8F�8�i��T"F1p-�c#���u��jy}7�k6��Ȋ4�
�ݻP��Yja���9#���&I�����.bqqo���	ͼIN�Y͈x�I��a��/#�q7�I=�g��L[ Z�>*0��.�q����y�mV���M8=$;(�+�Б���F�����o�� WN�IkˏL �CZsܶ��{<֓6ckoP���Lf-��ꟹ�����tsG�HQ�.@��Ex1����[/�Y�b8���`}�^fH>��rMb�	,hB���sO�`>���`��:�	�z/ɘ;��S���������$dcf&}m��@6�l��amP�%��� ��>��%,�j/�j?~����6�(�kH>�S��sˮ�؋�k���4��h�VA!�Wb�`Ґ�v#���l$Ih�XA�&M�<l��NCv#�V@+I�(�/�` u> ZidBpjM:�ڤ8%��Q�� U��A���*�Qmˊb�A��$�7�����/���Hkgy��~���7�H
:@W̹Ŝ��|��}v��̹2��s9W�s{9w�s�r�f�6�r�-e�.�rn,V�m���dc�;���sK�(�r�N���ɹ��+=�%�^���J��!�!��A���q�=���\m�ǹq\�q���+Dt����:���ss�pnΝù1�k��p���|��͵u�s�:�� ����>8���&t�A�t�@�~q���:���f�;�|����չ���wn��:8��s��U/k��R���\��Թ�.�s38WD�p���w�{��xn�\�wn�s����,�h?{�8c9�t��ޟ��u�j:��:n&��h𬛉ϏB;gq�25�D���NE 9�$i�IE;eEj��	$�I礓Ě��)�Hr �H�(o�J�Hj�t��V�.мz�EKZ �@�$�KR�o,iI�X$IZJ'��t��k�Fw@Za�GZ��Ԓv�jGZ�%`G58E�v;��)kE�$��N*R�d
�?�����~�_���~;\����U*䆺Bn!�"�a/� ���y�x΍���tzNǁsn8����lν�\����s�Is�4g�}�̹��,�]���hd�Mf̹ǜk��ε���+���=������|%�[B����hl�:�<
^�1�֝����W�~j:wӹ6�|�s��;�U������|uuܫp_$�^ƨ& ��'��9��x��$��^�����&BKکR��h��W�&�H)	���25*Ҋ����*����L��v�����
wsR-���^d4j�~=���}?��AU�9W���nӅ�) Ν$��a/�ƹJ�=���Jv�sqnK�v��]SzYi�ԟ����ߞ4�Oq3ccdd.&F"��[���g/�|?wZ��2d^�,���	�s�qn!��f�#m�w���U��s�8�W����=�=�\��Zυ��:W��˪۽̓�ܹs�z�|-�ܸ6��tn�۹o5���2zy�[����(�����t�s�5�9j��?<��6'��}�1 r��y����8mN��.���nI�tP9��u��B)7�m�s)���嘘���z���tr���%�9�i��� �ő����s�V]It�Q�9�q�s�2mO���t����&L�ak++K��#G���o!W��ܑ�����Q�	�����9�Yt��}�L!_$�Fr����ȹ��+��-r�@�5�1�ηĹK���aa�/�&�un� xt5��W��@e%"#""�$IcF)	��(gfD�$IRh������}��S�my��5�PX�)k�J���K$-�zN�8n幨Y�����J��0���L�ke&�71qՓ�2O����c�MY$հxϰ�4%aW�<M�S�^�Гk�HNx��B�!�����%A�ϛ���8�2J�Z`���|�g��qB��ٕ����ɔ�`��I,�1�1_�c_Wi�����S
j	)P�֡Y6��o���GP��~t�����ד��i�V�67$Ag���CLF��0��	��md�N�֧��A�F�(T\�z>����_�98�GXt��}���n�����?a)IR�Q&.g����qYk�K3����g� �ͮ�|��J,�S��Ӕ�x	�ҖÅfD)dva����A�y�U��K��z��,&%総;�C�>\۾dy�.�ɠ8�"�&Sь�ɲ��[���A�К�|��G��G�K : ���PQt�s��[~K�UuZ��	8'Ѷ�&1�[��$�S@8����/5[u�pd�	X��!i-�'���q%ܩ
�e����5�Nq$m!���ni������K��\,�b���O��߻��!����\"�HdSZ��b�/̜f���sz{�o���(���c�L�2�C���&!�9�6l�F�=�@J�d�ת9�(�/�` A zp�9P.%e��� ��r�!��v�|Rpy�|K
�U�D�i~t����eh+&�n6+����p~#):KXge^V�s��g/+�s�HQ&��;W�sc8W�;�����R:��5�,�uJ�=�nb\7����.`G��E������rvAV�+����7��Fե<u'I��݈ѹ-:��s�t���]�й	:� A��܁���Ϟs�q;�ۜ+��r.�s�qsn7�F��jkν�9�4�F�_�5<�.��r���w˹�����rn-�<�,��r���}�\�o�sW9WP�;��S�uԹ��k۹��+y�&��;� �r�q�:έ�|#+,+���s�8w�
��~q��a�$�5Ź;����p��m�\u!�	�p�^!_	�
��l����չ��²���L���ɹɜ�_���Fqr�Dy�u��)w�.r�o�!�
8���q�:l8���p����8߰s�xY��מ۞�����v���EvWg{[c	xY��8໋�nOv71�O��������V8�A%,T�����HZb'����9�M5�'��-��$�i-9��h{�RҒ�GZ:�9RJ��#y�ђ=�R��D;Z;Zߜ<�R�*���M�h�R�7I*���=CJ;�I-tNJ�|s�v��Rq�x�8}t�L�+N:�H)I-��N�������z�_o��v?��j�Ya��ӹ_�:k����:7&Ki��\˜�̹�^���}����!�֎tRjEߘYW�t��7{�}|$����t��으ksb.g[H�@FE0FM�9{l���Hy��'�}<r�T�$ـgG+�0�1��z�o���S��Ϭ��������G3'�β^��	F)M��fM:d`�:ss�ค�����$����J���:�R���\�����ܑ�5O+:�D�Ft���4�s�sn?���97��s�;�k��v�5˹ǜ[̹�97�sա��i˹�,9��s=r�#�k��F�u���87��=q�����#DxxY{�>^ݹu��un�sp~�xYq����z�ȑÆ8&M�b%���ŉ���ýy���#x�6!�L��d��ۤsO�tnH�rj>窧Y,�[��uΗι��Z�s�is�6iX�{�̹˜�+��b�΍&��й���ٹ�:JCi&�j���H��87�\��2�vc�;�s�Xq��ĹK\�q�>T��X�8��nq�,�͂��Zv�Ν�+�+��p!�¹n�|��������r�������u���ˠ��e��{�B���k�x�\�uυnb\�qݷB� A���LM��r݅B�c��zԌ��5ǹ吩������/��I�����<ε��f
^Co���)^�ua��\�������pn��@��]�T��I1�!܅�ޅ���X��<e�4##""I��1A��=�TI� �#R���Fac�/	��i��TJ�w�(W?�W�c��d��w{~�T�u��e��	H���6�i������x{,����A,�z[���CvF�� N���A���Ȩ~��RtI���˿^�d�s�B��:��Gj�w�\�!��4+u�e��t�:cUE�/֋��:+�#=������a��ln)g���S_�cd{��K�Hs&��V�[Vj�&~�yIp����#0K�b��Ɠ�u$�[�~��޳3��h3έ�̬������;�˰Z%�#$P�\���X������;;��'��$Պ�V%"��߭<o��%_���ई�{zL���c���C�}=�����#��$]�����IF�;�-���FUW�e;T�$[VM���H&����n������_��g��x6���5b$��jI�d������Io�Ѹo��_�>������?�n��|Hq�g4m�N`M�S���x���#ԥ[J�T|����tQ��ce�D�,���`��3�����B�^i����C�xT��_�|�J(	�\��& 0d���"�1|bGU� -Yz	)z����g���ک��������[o0�s�M������x����,{�����hM�O�u�k�-:����4(�/�` �? �l�<`.%򟚿4�T�S&�4�e�
�N���3F�(FS(Vt[��+E���Y�]�ھ��[#)A8Aν�\�o�s'8p�}�Ε�|o��s�sMt��-�������{��� �?�^^B�pT�tBϳe��c�Sֱ���-�Oz�T?�
�WS�N�n��F��x����K�����坐��dhy_��B;锝4����H��)�1�(R;紪Qv�.�)�''�6Z�IC+�V�!��s�}�q�V�S�ah�8�?�DҪ)N*�\@�x�7�a0xֆ�����N���-5������r=_/�sd���@��� rE rs�\	��ȭ� �v r�s�Y wȵιw �-��
��*9�A�@�Q�z��:w�s�p��΍�\�v�wR�!��Ge�G�|>_�ʫ�Ey�钥G�B���t��j�s�9��ss�LΝ�ʹ�8��s87��w���V������϶�.�Wg�+Wt�2�D���?P��11���������]����|����έ	�ܕ ]�s�12tnCu�u�����L�5�^���jҜ;M���a���r�-�J��Z�wn,�un+T��{��sK�rn(M���\;��$]�\��wȹ����Lȹ�9w��q�9Ν�\A�/�s�qn�_�^V�3�ع�F�{��s�q� ��5���ξs��u��R87�Q/��흻�un�sM;�^V��WUw:t�q4$����D.�:c��{��ӏ\�=�-G�t���"�t�e�hg��Q-H)�I鴻/qΐF����qaN:�������z>\�ù����\m��p�ṿΕwn	�u��*�¹�t��ʀ����W�����^X^�:�����ժj�ϰ�R�k�m���I��I]�	6Z��+=��\k�ZE�;��q���I�~��x����#˅a��t�a����:�����mRݴf�,QGuv�(9��7��6w�iowZKu::uV7-�Y�����W����]h�	Ґ�#C:N2�b�3��s���9u<(9�H�Qjw��$i�t�s��o�uιۘ��x�̹>9��s�q�$��ȹu�xY����\S���s���G����u޺=�^x�����_]FY�ki	:_8���s�s:�sMr�3c�=�~9���r�QΕ��er�n�����s)r�"*�sϐqn,*��]����d�ĹMl��eU��eut�{�AY�����5pn�jv���͝;w���y���������G�V��y��^���Wd��bT�G�s6�@55Q��O��3� G�C�nҐ�%����9/�h&�j�pN�kga�Q:'�l�#G9
�q�Q�\�Z��
��UE%q��
��B�έ�
�L��0e�52#""�$I:��9�;=�(�����$)IZ-! _�󶀤?�OP���#��'�ۚ&W�njO�,�P�pS�r�^���=V�F��}�9Ɔ �B�I�t�@'�G˽��ɕ?:�ص��SVF���P�2�'��Ȑ��cX1�K��c�%Z�W���ⱗ��xE"�!�KY�z��(=�_�}�1�#�����6#� fN�sv��ҽ�M�3�{	P��w��_�����J��?�s�]�s�����cP�t� ��DsG{Xs���bm�vл����}���Y#��g�Nl������
�w-�S
��4���VJ��$�<����s~.��.k��?��`S::��_������<��I����P�%��Q�x��ۛ�3����~t��\��ԁ{y�^ce<iaS��G��T�M/D�~��wH�3r�ɨ��6 y2w�xv�9q6"9D6PN��܎�k��tY��F���_9X)�>m[�g�O�C�C�C�C�C�O�s�xHY�b�1�tA��n9-I�����#X�t3�~�"^��O,��4�̈`N���HB��[�|�t�u>�!��(�?�*U��� `��5�����㑖\��ZP7�t $w�G���o6K��X�-���yLh$���bܦM!�K��-�o�n��q-�X��Y�@C��B��4w
��o ���T)�$���~��\(�/�` �@ �p(A��&� B(��'�7$(���bX�@�|�����]��3�����@;���|��vRdd!2JLZu�iH+�v�5
�-���B����6���N��ě�x_o���x����}��w|_���Ѩ�]z_��ߴ����1nEK:��ӭ,X���0���b`h��30��}����L�����M��w��NoJ߷�M��"xӰ>G��쑞�����j���1|K	x8��Wђ�t� ������u�S������8M��h�uJ�����(�(;ar�ӊ3�:��R�����N<A[�0�V��IQ�1���N	N)��U| $�6k�8%�f-(%�lNN[���Tn��FL�)'����f��6��l7[��8���ϛ�y�=o��}󼩚o&o
{�%o%o{�#o���DnR���M3�)M깫z����B�)��x�q�o��
�{�V�U���U��M�P9�;�M缯қVy_ oAQޔ��*����9Z���<�^�r�*q�\�S�"�e���ڔRJ;���GsNF\�9gece����jc&jr�;
��W�3^����mQ�]A�sT�M7�/��`�9��}��|���H�s�C��{"���(8p kjc���r}P�Ax�*�G����{L�	�����v|���M�ޣR�O]�U�����㘺}��Md� _q�[y��S�S�q$������4��1�����:D�i�-����l�jŘ���Z[mMJ8�l�I.���1R'%333��q��>�'�Z��c揻����b��c�p��B���y�q�c�X��q���0gi�8�j������)*�Q�S�VF��ʆ�j&�fqP��Vq�j��d7	V��!7ᠪ��jXq�j�B��8��K6�p���pP��l�w��dP��i�����-�d�o���>X�s�\��f��.�>�W�l7��v#D�}Ǽ����]���~y�']��Y�<G���
#B|������}-t�+w=�}���@�֭�d�b	��r�Gܣ����}A5�)�������q�]���θe�Wƣ��ut�}�X�a���2X���R�%M���{�M/p���~o
�{d�/����D�G���_�*Zҧ��Mx�u�@X�A���6dȠA�R�acNN��ʕ��������8g`LbD�|�-K��!�w�B�}�tp_7����
��)8����F�c���n'���M��G&��do ��W2��Ed�}�����}��y_<c����z���P'ނF\�C]-��}�"�s����؊�t+�P�ۿ���\�|X8	+1��y�ճ��<���} :��:����u���>f��=�Y�s�yܱ�[���}���u�rq�`�H�UN+Z�N[�X��"hc5�0ъ&�)��3&��O��D��#2$#I
��pA�1����u9�I��HJRPF��u��9����m>�T>-�q�$w%_Yj�'�LuᚂA{a��C\���=�dFah�\%2K{ص0�L�+Ws�۸ ��es'���y�S:�Q��,�rvgoz�}������8������}���a��7�1�/��^�ӏ]Q���9,�گb'���>��t�(!��Dޣ���R�]l.dF7E��,�8���htM��u� �~xj��]LY`�9�NE8�e(zeE��Mn���u"�U��������<��i�ϡ������x�H#�Y5_�Qz�,��אb\ .]+�������M-�g
��l����tL#;��d8t�x#�ƛ�������^c�u")�����¿hf	�_ʪ�a�t%��s(��28XfF�9�-��:��^�Z���G��]�J�ׇ��U2p�]�%����0����g)B�3!���*���.:
7jb�ư2�e; i�Rt�ERR�+�H�豇�sZ�ɜ@.�O���tV��H�/�����p�U�>�4Y	"M+��_�$�Rx��ЅC�/��l���"�2e��8�X�hU{˧VxP��<�
��׃ᝦ��D$t6�c'�\��
³عr\�6���&V|w�>E��p~(�/�` ]< 
g�6`�$HmMD!�b- ����Ƅy$&�܆�i���6׵�������nk�ͷ2d�,�g��*�qE�+P���D�$2D�!�C�8���A2H�A:.HA��_�d�7���������˰��������W�L?��7�U�W���T����꘩~�:b������_����.	R}H5d����3��뿎��/�����j��P�CTC���j�����~j����z괯�iΩc��e��'�>.��X�o�.jآ�*꫈&ꛨ��=�𫣅�*ԯPC1�ؠ~�nIǲ�e54���#�a�:��'��t<P�@5�I��W�����\��|$�j1�0��N�*�L��X�j��l�/6..�5�l_.�F.,�+�� ��r�Z�F(���0 �kkK��#P�����pvEkl��}_���N����p�`a�`���(�pnn��@�v�݇���t;5�����tuu��2G����>[m+g���B��j�\-L����\.�A��m�f�my����l���f�����6�v�o���훠 ��p��f���v8�(�N7��}���p�w�p��+b"�7��❙98��x�/��/�����k�v�B$�>�4�>�ĒWҿb%}+UүB%}*Qҏ�$�&K�_�$}$�x$�#iH�F�7l�o��i�HF�H_Ƌti�D� �C����!}1��2�o_�W�\iKߖZ�ke������T�W�T��꧝��T�R��U����Bԧ��<��ԩ��L=����"Տ䨾#C��OhP�A�����>��԰W��rHG<���PD�uj��>�95S_N}854S�M�����N�5M{P̙��������^���)��'���V}'��,���Jj�U� ���i��j/�Ho ��%Y�H>H} 5�Q�G�Q���<v��Q��5C�`��괱r�^�Q��-�V�[�X�~��
�3��1ޙ�L��;�b��%I�G��|TG��0҇��.��?��K��W��G��>��7HC  .}\�_����#�c��l�DQ7�c��M��g��Or��#���0@}!5�Տ�?P��PG��^����Nk��A��\���v�#�� jxaC��.��g�-u	�]	V��а������#��l�U4����Q&L���%J^�L�$IR�d�@��� � A�G���j'`�ԱQ)�IkI_˳������@IJ����� ������ؑ#�1ҏ��2T�a��M�V��,e�W"#��$I
���)横:��D�1U
���Tڟ򚽾�H�."B�*}���N�\�����kA��v�� 5�����i+HmD��}ss�b���dd�����KwG�=����@�{|����h}���G���}�!GQ]��epKΗ�����!_���}���&3g�.�}H/f�1}������R&=�7��B���O}O�O<'v���U_������j����d��q�Z�+9k�$�53(�	���"�-��U���[I�I6�Ja��'�n
�X^s����C��ځ��^�����h�p��;7@Y�?7�)�����
o"ؼ�O˭ O2O%Cds�x.�	�|`��X>G���[W�&\i/ܶof�H���Wć����C��3�tQe��]�r�Rآ2�>ξ���r�V�)����9�
�d�Eޝ~����v)C�i�ۻ��8�h�i=�*ou��b����"&���&��5����#xmݿMO�1��4����g	�"xe,#Ń[D�֩��_}L�.�	nus@�.=�8Z��E8�^Ʌ��䄻&D#]F΀B�Z���ճ�"��f0Cd;U����^<���?���Nf�/�(#E�bW~�t���ƣ�u�dK�?![q/��6r'��Y����է]m���
�(�1sYn�����#UR�;Go#=�S.>4�(�/�` uB Zt,A���r��PQk�T䷲bL	e�� �kӈ��*Q�H����[���u9#_����nD�-��{�-S`kT���?���y�s����X��m��e��7�}�?���5d�-�a����j�2n+_����o[����]�?����p[��_s��J+V��G�L�?p����ߔX^ǵ�N����1N����x��R�CYt�=�>�~��GC��!�����g�,f{���}ԣԣ���/�������u�~6[�y�G�ϣ���B=�3=b���b#CM�聾�����v./��j,gRŴ~����"Q��p]կ֯�Z����e%�Z�
ߘ�k��J)��~u�aHhB&X_�!�O�:�7H�/���بG|�P���l��^|G�i:�G�gx�i=^���8'�)�T#�jM��i�V�����ﻭ^�_v����T�8�W��{�z���9��8��\E���] BM���O���W�<n@�-��b�gz��Ϊ������@��C�Zu�ѯ��N$�'=b}#P������Umhr�bQ4����!6�uLӞ@0x^��:��`�_�uG��y2�դ���`�Փ�u^w�u�7�ʯ⋫	oe�X�y���f��&_�i��jMNIINIU��Z�NIN�i.5�}��o7����V��_��ˡ�-oi�d��?Wh�Q.�oU/o��+ ��p�w��[��Do�-O%�W��q���N�����r��ș��4���ń >����RQٿ,�_��/E����!���/�����@}���F��=*����s�s ���o���%��β���o���;�aDq[��]��)�����:�O�g-�e��_Z���
��B�̦����kq��f w�w�]>ũ������<����h�>��l��[�2�����w�����{�E�{Q"A�������7g��3���Mf����⿷�+�I��d��^��+I⿓l#;��_N��)���e���?��/y�o�;F��"��N�M���#���큃���o������B�A�o(
���?��fZ��KI�;	�#�g�����$kڪb�n���������?[�/����&0���[[q��E9i7�_�^ۺ7��W<�ٰ�նn�!�kx/�-��b�6G(z�7���F���kd�DV=[d�lr�(�#��'���;m�?v[��<x��A����)"J9�����aq@�!G�(�S�0ƚ1�;g����݋�(�!fl�TCZjP��7�埱9�E�NU�w9H3��y��-����ι-�ܵ˼��d��'|������l�>�[y0J�ϓ�zYP��dJ1J�ϫ��ZVF������A��Z[i�u�V�G"hE�Z�Ҭ�R��9�U�r!X�
�6�(��E�ekAQT�E�fAL`�>0��A�Z-h�K���I��Y�Z�AЂh	␯Y��^K�D�F�w�A�9d�D""""�$I:�1	�$5URD�L�$�״�)�b@�"�'ʇ���er�0�[i��x�҇��vG}��U,�|y���í�ו�n��m���)�R�.e�q�+�O�,u�M�z�5�H��	f2�<��	�;�W��n��]�T��:,��8��|L}���&�p��s���q�8?x�N|u
�ʗ����O�"��7�\���l0��mT.x�����ښ�
%�^�%��~�& {�h�� �-:����������+�>8͖�a4�at����4���b	[d�w�������ӌ�k�'<�L��o=���ݖ{���)���`�o|����}��ͮ����Q[n�,�"0����L�|!���S,t�q������Q��p�e��c9$	���zE'�
bsv0���,���p��`�(�?������	`bV<1���CMjo��ӎ��C���������J1�yr���b�x�c��:��y�:���~,�Z'l��V���2HE��V��h�űW?�,4��*�S�Q���g#�J�iS������WY�p�B4���u�ƏR,�3��� ��:t�u2_?�)���A����5���(�/�` U8 �`�G�Zm�Y��x��:�<���h��^��ø���y]�U�E��h���m�����)���B$�fc���2�&��),($4�l&���i:9����ѢE��2d�pa�Hg��Z�	�8<��/p�T�s��U��y
�)�s��+Wuؽ���Cs��+�u��1�ݦ�em
V��<�Ьh�##O��<븭T!]�.�e���l	�f7�n��O�Q��~ʳ���?��Q�&��g�_���M��g�?�ոkǀ��	D�pt$���99�XQSSkS���tw@�����.��'Q��Q3i^M��Z�;vL�f�mL�l�hA벣�I��Mm)т)����fG����.;Z�dA��v�ˊֲ~8��TO���q�1�ܹ{N��%F����J���<�G��ԟ]�G�کk���r�?/�E�����H�����<����G�(
�ڵ����V���nXb{��S����_���t�:��M{�-6T�:���z��<8d��s�Ϸ �[Y�Q�?+�xП(�NS!@@D44�8��TS�b�
�v;955Y��V�/���,h��Ѿ�h���n)�m`j��5���ewR�6Z�S�[��6ݎ���:�.�T��*���Rֲ��Z�ʱc箪s_]w��sSy>̓<IZ�H�"MY�ԟ�Tt����?#=����e��.�(I���h�@��C��C�߀�,D��w�s�?�����H��
M+u���Fa�/�n�0,��@�EL:��<��<�JC1{.b��a�y�W�X��==���8|��o4�c�A��i�����"
,�]�;eA�����"�`�x�;vʃKǸ�Ff�ұ{DAG�q�;d9O�<M�$O����0�K���?c�����*Q��ܟ���R�H����?���/ʮ}gn}$�3������$�t���n5���2��6hР�d2ӬQc6;�+d���g1^�?��Z�X�2E
�C�4�	hH�TGqԮ�]��V|���(�	i��6^q�hH?P�&ULÚ�vW�'��-Sf��̔�2�̮̍�+RE�*S�##MUH�b%��N���S�ӟ}�g������?���������m�/q�3N)���ܺ��Wm��Y��e�'N�r�_"�/���t���H���� �v�=�΍{i1�]�AsA��u� C�o�c�/mlB��'.�v]�bB���1�@K-o�s�_���������8(0O�;I�E�������3�������Ũ?�?��Ě�=��i���
�;��db�""$""I�:!!6"���!Ê�(HIR�������^�r���]���{�������<����%а�J��0�J7U:"�c�8B�˃)"߶a��ɢ��(�ȿVu����0�x��V�n�N�\�p�!�\�+�i�kj�x�)c:=���1�+�#�@#	����V<5P�-��ks���1���G�sgq�ׯ=*+q�C����e���mѫ�(��V�3���@���U�:v��aH��&��%�K��e�+�3��7��z���#}�%$�b�C%�� ��d�����CZ��шJ��wj��t
H�����s�(2��D)J�#���:2&k��z��d������t�,�F�.t$
M�z@��s�O�Y){0Q h�U�c���/Ȭ!�����!�0Y	��#�`�|�q�@��^K�6�#��圪Y��q�O/@�����M�N�ܢX�R����3�?*��*ȯ������E=pgE�����6�030��;=�dч��[���
(�/�` �7 �\$F�\M:��q�S��9ٌaL������
��&��W�?�AD���L��hU���_1i���*�k��?�K,!)	�n���J�mUu�*�V�(�6���8����p֢��wO���y�c]����Ζ��287����L�:�Ѐs���-����s�ζ������l�v�gI��|��#���,��zp��v�R��R���p��p5\g@V��d7�Mv�I�Դ�=�zn����;[y�m<#�^{|���.�u�y�p�=������+�͔DL����c�J�:k��V:��8�m��I���+ڬ��Z�R�uR�R�d_�h���G]�5c��{�h��U�~:�JL�٫�5:���s��iN�s�WN��ձ��.�ӳ���|�7�A�ٽ�3�@�{�0�(C
�2t�iA�5r�$F�8AC	�	�5�M)�|S�6	J��1VX��A)A�(
�)4EH0JW�2��N+���'��d5ܭv����ssqrn'g��|]��E�Hq�}�ĹK�8w��q���a��S΍�l5�o<w<���{��x����G.ǃ�8p,Xt���Z2d^�2ej5cf�4iΜ�ّA< �'��Le�_�f̹ǀ97�)�ʹ�4	>��f+a_SJP�qZ� �ڕs_9_+�rn*Wʹ�\#�6r��9���s�8_��qn���;�Wǹu�-�s�h���,N��:7�پ8_�@��ιs��V���_|g����H�{t�3	��.��mrۓ�v ���moq۩n��m����\��mos��<JXc;[+��U<��f�����׋�V-Z�d�sgG���w��.H���Ȑs��Ar�;Gߨq�MCƹe�8w��~Q��nԹ��O�~�te:_�s7���6���4����ܷ���z�RϪ�ZZJJ����rr�嚚���)Rd��+�|AX�8����ҵ��p�ν@��7�R��}g��H<�:Ա�>#��y=��L(:z�G�c�g+��@G�<f�-�h�AV��{�{�KZ�'}g=!�&�A���ֳ��<v�N��)P���	�V��2��i)��IG�s�����/ѹ���{���sn�������u�v�+�ӷ>8?�G9��`Q����t�r���g�0��	?1����K3p@��a�0�Y��TD�$##$I�c��)�F���("dN ��%IIAj��� �s˭i��M%}Y���.~��VC�N��6�;]��[�Ӵ�vt�L����n�_�m�5w�d%��0ב��:��	c���f_?)L
k��m���[��Է��X�mT;�ϯM�,V�����-h4b]Py��P�����# �qJ�]no�����nub���4Yr��a��7�WH��q���m�U�T��I�͗�L���W�`MC��$��ܐf��QƠ�}�o#��z��>�8�GY��%ݩx������]]�˷u����~���4��ܛ��#��������E���?&"}�������D:�+L���;�� 6���&ۅ�G�b�$�6Bɟ����)�G���mL �a1��<]�8&W9�������~6E;�N��ƛ&z�g�2��������ix>+ʻ&�š��q���L�n�/��7�l�]���A_�}y���C�[�����;L������،2�>q�i`{c�XM;�l/^Η�35�?elh�ٗ�gp=^�ӓ��	�?|���t�S����Qk`L�^�a�tb�ǣ�ޱ�?�(�/�` -> jjX@�,'Q�����^-M�ma�s��{����^���&�w%NE �����^4℻����]C�h۶8BRXA�bPq`���q[]ĠxA���� �W)NVCZ鬴�:k��.�K��`WRD�!CRD(��G����Ux����$9��N�3���Y�������2x�oo���>|����r�3�mW�{�3���j�s�+��6�;#x[�|�ݻ?�b���j��x���~?��l{["�{���r:��>s����=�3UNߺ��L�|O��'�r���ߜ�	��6'@'m�h��o~����������'S��4I�G��6)mN�ٜM4�IY)�}r:�M1�'�@��Y�V������ͤ�SߒVu�:)�`�� �d��5}Ch�_,D��RL/�]�Kq�u^}7�e����'ʋ1���Z1���xT<*&�Kd�<*�m'b��=o��Ӽ��m�w�zP|���;�yg2�L�gl}�%���F����B�{�ˏ���cx^{=�}��Q��*L���*Q�����v��Vo�=��޹!@v��i�S��
(S>���$�ۆyg$G�?��F��/����wf�Ά�{�ƿ2��]��!��ᣅ��Z�~���5k��wo��qo��_ZP5	�z�_=|	up<��p�U�t��{�:��.1C�r+c3t�>�_�`^́7���Mv�H��ɬdSm�W���$���@y�
�MRٔ�JV�n��R���WJ'�<�*�0������Հ�h]J���4)���R��I�,��d�l�u�Z�̀�rZ�4i��"��V��
������`������yT"�h��x�����g�ث��G��58x�ok��k�����n�����wuMm٢E��I�����m��9���=2��ݡ�;���<a��&��h����[�%���˿r����5˷U��	v\�j���|��Z�b�zi�S��u�$,91ɜl��4��c�+
	C�%���K1��@ԓ��LM�IՊ'�u~
���� pq1�'�I��uր��g�!&4���AzA`T��������Ȫ��0���[A�ox1��5�Z��!���.!�V��Z]\1
���a�j"�ζ�aAz�	���bxgEo�����m�޹Oޓ�)��>�:޶��w/�>�	���»���6��k������;z�(5z�H��m�3���s�m��w~����y�5o+'��f�lO��v�z�o[�a�p��kE
'�H��"<�m�-�9�-���_���L����;j�G��ke>�lO��w/��|��:>�HǗ��()�=��R|�ҽ7��X���ț4 o�D��Pc3"#"#I�d8q9�F��9E��%IA�G�_ ��iW~�ǜ����
.T�ۘiZh.���	8����\����U����Z\4ȐQ�����+�y�G����� g -�U$��2$�+-���#��^�ĝf(k���ӫ��(�f-�A��'l�>�QL��[�R:���d��mH8��.C��M��.q�ro�G�Y5�?P�bt��:�{�yH^�t�n��;]�\����@���/��])�}�O�DV���-�����tu��<���4����1h�����(^_*�����$xT�5��S*`f�1D��`���q��6�\Z���� �y���:
��-���l4n�����	�=s|��B�a� �#FY]��l݃R�v���� �]D���*�w�k�� �r�y'��v쮈�I�vf
d�ߡ5A�����>�Y.L��ޒ�@���;N���l�u@��
u�'y�8t:򢃤' �Hlf���m��H�Vt������Q��t8BGX*��-�EYd�dX�[��6rN82U|5�F� dҤ�a���n���t|#�A�b�E��r]Yp���Q\����ԯ��LQ.�	�5O��Zn�em[�[(�/�` D �{�G�5P|0}�y��/p�P^���RN�I�c3�i��"a��.yqOX}�BAz]��l3�߰�&di���Nnkj��d��}M���}s�Y���3��6xߟw����`ĉ7��y�G4��G<(����o�3���0}�x3������x��W��;��7�;��͂����K�9��s~Nz)�)*J _�|���]5�BCq�EE6������6�AgJ�-�z|�숩�6k��eT���e=�V�F��1�d������y�l�z�m�@�L\��l��y�"��m�O�m��K���tq�i�F�N%z%U؅���
�q�N���>�[ߙ'��o�{�{ߛw6��}�w�W���E������6� �> E������&,�7�K�?T��K��w�\H����ޙ��xg�}Eo.��Ww�5:���jt�I�p!T������R9���5����䤘�4h]1S�J��4)E")��u�iQ[c�HƲ,�RZ9g��^R�i�)����H�kR9�5��UJI�2�ŕT��r����
�!V���p;.�qĜ��%,^�#�8[����x��;��w�x>14]���L������~�����^$k���]�3��I��,�Y��A�,�y�Ao0��y�����Q�q"t�k(>�N��mLhj�6��RUXR���m��Q0ǧ����L�>��ԙP)�e��O�iW&�u����P�ʤ��?㽯���E���l򟉏=l�L&�u9漮�0�y]��rR���u\���S�9�u�S����i˲-g�*�Y������}W�A�b�WW,1�G�o�����=�+�AP��I��y��ǘRk͸���,@��e+s3��%��Y��.�a��@�aV�V1ª���j��(���}fbj�,����R��W�J��[��x�o�,��;� ��$����}uTo��i�(˼���ۣG������s:!@������Pk�s�<�}_����=�"_� �3� xg ���y�>*"��Z^��(�h��^UTÃ:1�S�7xz�2o0�x������OϽ
}"q(��& �6|�m�H�NӶ^R������Br������}�w��k���km��u!����^Hù��w��h�VI��&�sJ:�e'�uZ)鍤Rn�Io�����`�>�{�B�ܣ�sʌJ�, ��M���)1*1�`Z֜�Ι�Z�����d��ee61kJj�Й]v�z��#MZ���N���R��ie�S�HY�:��j���I디NiMZ唘���
����=}!�w�)�����5Y|����#~��œ�~"?�?���x��G��3~�O�7~����;Y��b�%G�4b��E������Fl��ȋ(��J��A �w�� �55q� �� ν�B%��3>�����D��ìKTI5��YY��`n��֡��bf6|)ݑU-��F �x�)�W���?�0���wv������;wy��8�Օo�Jy"A"B���C�.\�y�x��Y<�=��@e3"##"�$�1�1f�Zu@5�QZPR�dؿ�(��k
^ǣ�<|��v���)xs�-��e� ��Π�]J��FM4�,��h1������`�Ŭ�?��y8�P��o�TP�K �(J��,�.����f��-)An� =]z����+9�F��m(���|S��IZ�q��_q[5�/�������U`^o,��e��u8|='D3�Y{ݑk�H��Y��R=��Z��jBC��������j���Pb�Y����N �@ʩU�g��_�.�ԭ9�k�x/t7;�s
t�4�@�e`V�O�TL]����띲-�����ex���{��k���|�S-��qv-�k��Uy-Y�I����s�v�,vt~���S2 5�K�A4���o{�_���y�hj�pT�!5å)*|j�i��@�M^rӵ!�6�R/�;�#̊����7�X�Vt��P�J+���e��2�ENlb��İD�+P����p���-z�^��'��C��A^Uv1e��M�o�!���o���X�H���C3M������t�����R�ڬ�4:�
�ͻ?��ɎzVZ�OZ؟ ,=�_c��ަh �+}��s{�F����#�j$�e�(����DX��e���܇���(�/�` �D Z~`?�.%(��.��J7�NݯzSǗSܕ�P=�I��y�/b����p&�B����}�!�5Bi;jfXaa��M��E�2�=5�hм�����^��b��P
��\���Ui~�
�W�s΅<L����`����X�����9������&����o�u�uVeܘa̕%����cn��sQ�,GiU�ciE��+Lf��ڮ-�|*�����)���K�Y��|-'�\3�h��_A�V��|r��,�Y�Q*_R�M�U)�|���T~m�sq��<Ƌ2��(�l2�x��Հ,�ʫ�)ʹ"�2�"$Yr8�����L7���p:���ÅM;��Xu����5��s�9iF�Q���x��W���#�9p��y��W���O�B��Q�@/��WW�-�@����,�����f�Y.k�5òuq9����k�W~%��*�~~���~w ������5AB����0�V���pa~/L�kA��J��7��߰9�u�^Қ_��`~��W7O�S?���L�f��/�J�V��/����H��ED�_B�����>�G��z���Ԑ_������m���&��i���挿g��O��+�wZ����~��/�+�^��[e��S|zɯJ�Ub�_#E�-�@|zï;����:������Og�;ç.�u!§��.y��o�V�R��[���R��\~�I˻�%��x�Ǫ�)�|�`��ds��ɧ~@�n�f�Ǵ�L3�7g?~0q�M4ZNc����똱�q\���3%�'{��ٷE�����fM��E#ģ(�A\�����
�H�N��L7��qy�Q^��W�k��Sx��]\�Bl~�f��1AL��a>h0��/����˵`~d�o����<e0�UR�+5�/�������/u*緜�#m~i3�߰��)n~-A��:j�o�E�.:��?���=v��#�_9p|����;�SՌ�f|Zïd�%���/^�����.Պ�V���I�����7�m��Ɣ_e�+ï1���W����_���;z�W�?`��-���_����)�.�w�O���4l�f�T�R�S��OS�����U����r�w�)��6�i��	��Id(ӡ�P�M�r�C��ѰaÂ�
nܨ�P��M����Wx�������om�f��91�Q����ή������2L���ħ.�+���WǶ8��f��/�4�_+�[�����P�������뗿_[[����0���ך�5��X9���'6���g��F�ə�H�8g�A�8&g��B�$��h�$CpV��j$8�J,I�2G���h�Q�	��D����H�d_)~�e2�7ڸB�������8��,��c���M$i���S6���,o"V��&�h�'��H�U�C�Y��$8g�7g�(���!
��:+��CɭZ��T�!�!Y�0�l7)��q$i$I#m�M@��,ۭ�ፔ�M3Kq�f$��q�����h�Qu��&𻑴p~�(��H�dᔁ#I�-��DR�7��,fV2"""�$I:�D*����FDDA�T
m��v���x6�:��m6M���4�.P�b�~\!���~�o���v%��ׂS������$�G%f��`��o���5�A�i�R�����Ia:�bM��z�6�-�&�B�R� oD°$��.1)O&�UO�.��:%2�5Y��4� *I:���D����@=������{�a��L^YrCW wC��R���z�ym�C�χ���fz=×�{�a�����su�j�1�F�=��=h�5��}m�ٽ�����qzr>����Q�o7?�u�w�{���׋+,���Ƅx{�P��Ǻ��/m�����O���_3Φ;0V�i��s��1�{�o���)O��Dd'��x#�/r��s%�7̬m���91ׅ����#X�c��rD�B$�X��l_�8;���۽Ӟ���^5j�^��*}���e�F��I�>��FCޒ?
�-�P�.^aJ�!��M�f���]�U�	I˸3�ވ
����=9��p/�U��7�
��v��K��L��[-B���~UAbMJ�UF4�}H�fu��l�^�t���'1o>�����nO�t|�L�[��s��j�)���.��VSb�W�B	i�"�(�/�` e: Zi@D�^I:�z��d�a�d��J����sLtJ ������G?�TK~XY�����ތ~k���BHkd7�S**@#�����z��J�^�+�l�o�F����N~��	�M��.�������L�7ɯ|��_$�N�K��4��wy�\	�/�_����mD�~>N�n�+�s�d�c>�2���p@�� G�kk��j��>L�g�@Eea��&:q��������n�Ȓ`d꜀��X�_�w�(�U��O�4��&L�ɑ�=�E����Z�/{�o��c���ck~�l̯���_���'�����5Ab~IXͯUY5�U�a���W�|]����(���}*��&����k���i~��ʤ�M��X�K4_a�!�=-X�T�պ���	 �E���X)#c7�[���T&��$���5"$����c~},��:e~e��_󕏋�u1Y�/�bN���|E2�R�]3#����]:``~�D��wh��_��j��om�$痜/g�;�/�����d��q���~��K=����|��_?}����_=~��y�̓�_<w��k�ќ����l2����1���0拿_��녋�\���%��T�
�,�}��%�*���ui��������o���_����Z~��e[�#�S<x d))�kU5�cZZ%�ʪ�F~��[�ך͹*�n���5��E�:W�|A3��\�o���5f��<��ݞ?6w�M���󀈈��I)?
��(���y4�7R�e}������z��� ��.��cIP�ā���(�QPA4iJ���H"dI��C���¦v�IC���`ꉤ�d�c���OB����Q�y[aHi�?����dfd������~2��rAA!��!���ԣ�{y�I��DU&�()~�IC�P�:��P�H%$A0E�K4�&��0�O?�&Ҋ�@,��q�H���&����o5��|r��/
�b�[�����5�wʯ#�iI��+�2w!@�6a�҆�6�*�5�����%�J��!�sU+ʯO�.�r�TP6���W-���{�땿 H�ʧ+k�I�7_�7\�X^����썔__�*X��_c{���m�37��旹�ق���Hr_~��L�S��M;��q�f8���&��86�c8�����foTT�(��`d�����f���V��ǁM�i���xK ގ�nc8��h��3;�B�!Ő˯I����W+;����~E�/��-�.� p�N�K�]�jd+Ϝe.��Ls��"D�
�,��<e�5"""d�$MQ�1栲�1$��QP���>����l���n�g���8\�)>_���s#r7�Wr���Y?��a��"��[�cB���S'�9A��ի������u�Tc��vy�/��z�Hq�M�T���vwi	�a���O��?�ҜH�c.Ǆ�CHޡ�@�=И���S�1�>`����^2h��=�zM��w��؜�툗G@�h3���~"O�d?��)��D��y�A�ºAB��[��Bk��$%Ե�)�5��ԗE!5��뇾�C2��*Ħ�?ƺ�G���{;)1C����jA��sW���:6"DW���v,O�D�&��f����'&�����h$u��	"�3���o2�lG��P��"�+q#F��*?��o̫S�
ǐ�H����c� ����;��|�[�^ez�Iӣ\�l�qU�~�K��9�	�QF�Kk�A%�kW'�	�Il� ، ^T/�W�5������Z4�	�!�K���yϱ�E#�q���eTN�_ݙóԿ�wn&�O��������U�r#�$����R(�/�` %> :b0C��I:�7˟bj�2��0���QN�' lv�K#Қ��jw�']���7B�����U��?��2ka��$��^R��=�E�k�}��;ۏ^R�/��]?3Q�t229rT��3'E
U~�e�ۉw	-�>��7{�7o
�}ݼ��E�_��̛�y�,o���N�	�_���M��ƛz�ۂě�/�7�ޗ���[�07�K���!��}yz��^޾�n��zy{S���=�fM��^�gM^��O?k��~<:7�]ME����'O�r8m��w���)>��*3ϐ'eZ8fr��d<5r2�0�'�ɓɯ��y��d�V��9�i�g�1^Tsr���G!��rcn̅��l�ā�6��u�y�1�ˍ9���,.�}_�����xS����)B�)�����r��nWt�z�o�`�=��m��3�������zS��7{߫���V�Kus�no*��O�I����%ez_L/)Mz_����t��]�7�۳/�ǣ��x���8G���uZ;�+�#�Xyd�ӆd2��r��#��0x!Y��:'�V�+�Z��A2k�󱭤V���I��~��x��(�Á^Խo���l�w͛�){_.o��}�����-�3d�o�7��޴�}/�o�R���A��aK��f7"��ݼ��+�}�	I��7��qjj����DZ1$�:�JVk�P䐜���SŐ'�s�U���d�uE1�:�<{xU�ӂ�G�:~_�ǵr��c�
 ��!�#���6<��-_�3�i�R�7ʛBy�'�K�}��t��
�Q�3�]%^bxS!��L��wu�I��A��̛&x�~S/>��Ǜ�]Ex�����|_�[�>��~��]a�Я�^�����Ǳ�l�Gǀ��}�yj��{jpj�������N�+�'��:�6D����S�sV�j�c�C�%ZRgk��X�sڭ7^Ͳ�san����Z��� �W
�M	�����ߔxI� ��\�FO����	�ޔB��K*�}�����o@�Kz��z~�+=�p<5$�2ז���D��:��r�c�=c�/+�W-�PW�<e��2�U��hg���UqkκEV��T����"���%!�.EA]3���I�w��j�L����}��wF�7Ž��%����&PBzI��o5zI��^t+���Ϯ\�R��̊�)S��1o
&�K*P�8iB�����y��%j��Mw�/�/)����M��W�Jx�v�!9B��$I��@�a{ ����DD� II�0�� ��%�>g�A�UpJ�J��Q=k��0�T���>�]�������%���s��A���Hv��m���Ohu��;���D(P���2 '�#��Dt�?>���m��7N��{C�Q�WT�rPq<�+˺�M��d'��!^o�T!	?�-���:����$z]�O��Ӊ%zYT����ǭ�tA�"8t^6.�����������r`����������(AŌ�����{Km�|��X� �Z��G�CB+�"��1��B�.��T�c���7<O�W<�q����h:���'17�?qj��X ��[�A��)?�eL�h�%L�߄��.`lUz��,Ѧvq�b�]#�"ks�x6.$�m�☮�k����U�	�7���9M�gș�>�fAȲb��QWgP��K��B�,@�P���Z[,�����g(tK����1�B�$��7�e�c��G�Dn������g��7~�[�-�dZj��6�R�ő�����<�b\����Q"�Ϗ�D?3�Eo%t��\���)�?��lW���&��>1Dw�RB�u4�u�r��9��w��mvO��:2�tNo>tT�Ħ����+�.uj�����C��<
����j�#e�����rV�_�]<���I{�|�fty� �2g�>���6bA�iV`l`�	B)�Gn��ƍ�l7�a"a�RC��e��0Rp��/斐V˳��0�`�&(�/�` %> �a�F�lI:�������d�(�h�����ܭ<���ΰ�PGՆpߐ不'7<�6ޮ�m��������N"-��3�R:����fj�@*B�D�ƣ���a6A�-�c�"�g���L�Lُ�>���'�f��mN�S����(Қ�.�w�Wƻ
x_��}�.޷ŻZ�������ݪ�}k���^���D��>���*QD��M�,"M�����`;�$@��Z���]�w�^^���ܻ"���]��-�T�[��R�;�p��5���޻� ^� �;��{߆��?��'��=��K]w��RS��x�:{���2�G\�����'��s2��4�L�k3�(OX��>�O�_ ��������3t�ˮ;���x�;�}6�0X[H��C+�S8��8������oL�����v���hC�&e-��g�с��r60�d��̼k�}�P!��WȻ*������u�]�*�;�K��W�;��P����`��d�N�(�=fu�K�NK++kk��L�'IB����d��Cs����1�]�\
S�kwz�{W�}o7�M|x��]i஬Kޗ�x��Ͻ�_��&������%o(�Y�;��s�?���������O�΄s�?V�>�&!�"�����?]],-�I���ڂ���xW�X�̽o�|�[P��;�,^����Yڻx��}iPPP���zx+0�Ǒ�Ó�Ud	�KVL�<Z�T�r�F��EY7TE�f%�-1��ٔdK6�d?l�(k6���F�1a�L7�5z�52��T(ʃ6�Q��H&���d?Df�)��M����tq��w]z���]W<�Y�{�}�0d��#�we������eMz�-�k҈\\IILL
��1Ȼ*��U�	��o�ߗ�����U��+���5��G:���C��;5����x"��!�kN)'�w�
��޻}c�:���:�݆>Ot���qfe���t4�"�h^]YYUUa��E˕+q�)CR�})̦ٷi6n�ō�+��W��94{g_gY�&�̃玝���F���I��]ń�⥋���e6��}�X�R�<i��]3���w����F��w|�:`��/�d�^q�>h����Zx�Q����}0��&��/+9��H �}:����6�o�(����j�=R)��͐Z�x���	A)�Q���;؏�(���J��-��SJ��T���G��l���&��E���^@�V���R��}\&�}+�u(P�0���Ad###""�$I:aD1��(>`E5�)��$�L��x�w�zXmҘ�9��ڏ�ɸ`ڒ_�Q�,�caf�r�v�9GHg�,���.r6�D��o�2`/4~�WAz��f&<��< c_8��_h�t�?���#�����׺\�����*a:�&UK�������yF�6d4�߫B��
崳2��i�*�>���W��6�*{�z�_މ���>.9J�} r����3䳨>�kQj,P�A�>�s�:��gzI3�Ѵ�Ĉ��xo�P�_ FE���5{J��?h����a68.;���`h��W���'j�ˇ����t��o�M���R��<0ی��jow�����|4����N>�yc�'w�vQ�e?:�����ڗ ����9�A�?���H��[�kr7ƣs8��UZ�L�����'�����+}l���D:~̷�7�P�x*�	�>C�}��j�m��$��&��o���7�!��H�0�9l�?3O��iq<$@�ʊ�dV*�i���� �'���Ghf8$��O��?���d ��%�o�]��;��k�7�I�eʖMo_W/͇+zo��'�|�bw
��Ͳ���=6�dK]r��D���JF���ԀZ� A����1��T�Zѵ��2׎������ګ��l�[����vP}
[:<��`���E�F����u+\�ɥ��ٵ�Dی���A�N�-�!b	��>9��/6���w�߲d�Δ���+(�/�` �; Jd�D�,'D' �2��H�Ӆ4�8wS���`8�>GV��j<�	Rf� !u1����%+���%kԈZ�)(.4�L�Y���q��.�F]J�%+N��tF�"��h�8q$�E�a����,����L�}����h����<ϛS?��>��<woyǱ�+Hzg����٭��*N�J &���h��2�8Z錒�֐�� �y���^��y��,��`�$�>��d��s܍��xۍL���t42�vL��[R"�&7�d;�d��n�&��`r�&��Mn�d�l��[ι�-�s�9�Is�aΝu�1�-�cyi������9��s�8[�s�8o�꥽pު�꥝:�ν���F�s��@�s���v�Hg��ZLD p��H�s	){>y4��&��}�hr�&w�Nn`r���N:��Mn���C�5�_�Ϲ���yY��sn8o��ƍ�sk�9[g�̹ɜ��<���^�vϙ�r�-YΝ�JO9�'Lζù�9�2ȹ��x�e���=���li�I��q�
O���s�8�or�8[�s�8۪s�hg[�u{����e;�K���%^�1d�sGhQ�ڝ{w�Kg����ɥ3Q�4��1���6�s����li��h���of%�^�ᯞ��xH��eg"(~��>����؀�l��=��(��O�F�g��l�-���`'��YVV)R<=�h�bŉQQMM�x&�$g�;��,l�xi?�;�T����M����^��2�<�k�KO��檗��Jk8^0w�ZsPh��,���0Gk����UZk��n�`�7W�C�֐�H�*����A���&t�V��D�KuA���T)���x�;���F�Mn��}���lq�{Ϲ��흳-rn;gk��\���g���g�m�K�U��q�8nt�s���n�~��4���|��H�hÆ��@�	"D�.��\��r ����,Zl��~߄ff�ʍ��5�����C/�k�s�x)xy� 1]������� DQobĪ��e�O��/�}7�����ް��
BY�P+�$�J�S��Pǖ�E`��Չm�ӑ���u�N��h��ƹ��>x�q�"v�g+kg[�� e/�j_Z����k���� VV.ב#^���s�������V��mW c:y��qM�\��_s�^�tSRovB-Zi����Vzgн5�Tr#�:Ҹh�O��a�a��	]Յ��:-J�zAp�"ҫ�+�&F��(�TJñ���vL��6-)�!VD�8���q�gۡ¹)<�H�AC�S"#""I
�taH1� 59�)eI ""���Ne�^���S|�#@�pK��ECC���Qg��̞g�0(,5k�zh�-�� ��%��݅�>-�R�HbEc^�]�[pKۜZ�ИW�Pt����HabH]�4*2zv�d�#�y�^�'L|r��>%%5,XS4��O!�̏9�ֳ��ӗ(��`ӳ���s�VKZK��R���Վ�γ�)���	^ACgL�
#��j�0:\$u{��vt��B�2�7"�;�e9��>m'���#4���r���gH�H>�����oud�4��@������t_��_�x*yGґn7@�Dڇ5��'��	<m��m�VX7�@v2���GI�G񅹌�Gw%4�S+
�bH�8�gZ����s"a��.�wt�=�8֏�Zۑ�IQ��H�(z8�瞑P��8g�4O����dS�8.牙O�w�^P�2^��-�gڴ߲T�ē}h�ڋ\��;�!��x�K	�����h����t(�'~�W�_����;������~�L���{>��<wr[�/��5��n<��	��fU�.�Z�������z��E� �>c$-s�f�]��2�BR��t_���6_|�;(�/�` �4 �R0F��I:�8H  	(�g_S��cZ@�#�����a����A�����Tc��T� ��b�M{���߲i��� � � CR�\�.�!A
�6��]����ژ�v�]��}�����v����t?FE�����X�>Ny3�w���w������77x�$��]��uǛ�ޕ��2^|T�� ��� ޵DԈNoVzצ��f�w]z���=�}d�we�f޻&@`��޵����=��>�l��'���m��嶇�lh����	/#���@�@�'�>/o,����2��޽�uY�]��=z���]��|������]o�9�]�r|�w�z3}�o���wu������KUC��KS��<�p�C��϶n{�˦�L� �T�'N��>��l�]mH���N�*B� �l�ޢ����#��t����޵�n������Y ����w��/�lH��̊��K�49u�i��.幻B��I�|��	5WJ�;7\)�\ѹS���\	�vN( �+�Nn�}z���ܝ��;)ʝsC�&�|(H�J��J�B
nS�ە�>ߚE��	7���va�̨�z�����1-+�Wo�w�z��x�
��f*��\��Oo���w}�f�}䡝+��dC>v��Z��ST��˪����d	�A�+�,��:���׻Z�H��Uޢ��b]��o�ǷX��3�o�2�v�03/��kрhs�����W�M.�s�9p�,�-3�9}(8}|�v'x���(�34	s.���	���re�B�ܹVsw�%�r��F���p�N�};]�cTT�t��p}�O!̻�y��B���K��HQc�̕*�]�T&Kx�+�7k15U�zר"�*|���]�Y�Л�4}�}���Lo�~���o<�-��k�{�]w�}����7s��~;��������X���YID�pn�\�d����]���k�]�:�x�v"y�!�����ZXNY�{�ŏ�����-�p��?'덳7������f`�zY	Υ ���F�t�9'��<Jw�l� �;��DT����P	*����5�1R��)L
��1��� �)�1��H "������J�<Wlc9���VMf�lu��ae�d}�=V��Mh�H4�T����(�����V[�V��@�&�@�aM�>��jG78�+aĝ�֙ZV��1��"��&◻0�m���N����T���ڀ=��H=����3?|�-?]&�A�9�*d��I+�U ՟�>_�#�u����ȕ��S���J�'�~|D�9�{�1a&T}��3|�Nĕ��ډ�g�],̌
�`� Ζ��A���a�]��nRO���#-oia@#�d��ܢ� ҂�Y��HX)�O�p�C���C�r����ʣ�pF����mx m!�F�P?���&H��`�<D��,k�JC��{����K�����d�:���ο�� /���=��}ϗ0�	xx�@��L��xu.�9lAWЫP׋�
�~���Y�����ȵ���酃v�e�xG9��	�!�̛�is}������WWsm��Cb5���>U�����!����'>(P(�:l�tZU����R�) �� +�%3�+�E���!��P ��Y�f&4���P�<������w��'$�}bֲ�\�$tDA��,��g�g۸���	�|�� 3�GY�(�/�` > �i ?p.�:MʨN��B��)�d��;@����1���o.�����P6�.P�GjD�O�R���m)S9B>��H��6�w����+�w~b!�ۃ?&�w���E���8�e��ɿ'󘟽(�������t���Wx����2'�^B���!�� 1qa��������������oZ�7G�f}3��(�3�?���k���c*�[�?�⿹���\��M�q�}�o��9n��������7,?M+V��#���o�Ӥ�%���[���z3���A����\����ɷ��
�e��+Jǉ|0�L٫�;>�z$���ެ�k�/�^M� ���Z>w�ek�A�쵚$oը���׎�f{3��Ʈ�V�$։*���P�^{����%_�`X�/VCJ�)�Qz��RZ���� Xc5����U*��~N�[bǫgWX4���xɌ��8>��qGK^��e����lm�Qe�>�*TH����65QJi,Vi�0�>A�`�QJCZk��P��V0V)s�R���b�h�`��QJ?Z+Cf}�h5�5�jd�Zwu��QO\k��\�fo�v���Σ���
J�zv�騬p:�+q�[���-�+qV�J�������,�Ĭ�f:��tTbI%�+�r����P�p4�ԕT4j+�Ű��ZH�R!����5�*���a��p��6��f7�A��������4���O��'��?F�u;F���a�����d)�?#\���y���f���
6%
?�-�'l��p᏷�w	��A���{�����<�m����P���H��F\��<�[|p���r��`�27�^� u�2�__�������}�}s}s��遾�a}���̢��(��*Q����$I����o=�����g�ۤ�⏩��2���.�;�?�_��s�?���"����!�?.��Ή��C��VU���8�4�x�Y��I���&X�>���P�����3���3�/)
��d�V��=���� �}�S�j�4:((��0��]��)��6���7؃ ��l�������'����P�q�?q������*v������Z~�2�G9�,.��e���0a�t��,��&��ݶ!���㏿�w<玟��m���7��o/X0�$�;	S���a���9��$d�i~�p<��<�Co���6|�7���� �=`������$�oь�����V}��v4�"W��*�j@����6��j��U�Q�l�ެM�Q�5��B����u�
����H�ˎњ���Z��$�h>t�	���\$����L�N��Uf�!�n5�����`�1��,B���&�t!D1瘡> �-�1�DDR�ԩ��^�x�p���
#ڣ��a��j�(���P��P���4x~ؿK�P���e����j���
͇�a!DZ%���l�:"���*�6�f:�q�@�M �6r�̮�@�|e��g6mX���Vj��-�Ǚ� ��ؽi�Ș�#�#7���k�����TO�) $ d5���=I��鏡����nt� }��3y�I)�Ri2�m�(����(�t�`6�'b��E�����t��B���cz+�̢���5����Xl��\Y�B��B����mUS�l!\�P�;�S~X�	w�P�,v�^����w�v�yd#OA� ��������PmJ���D�4�?�*�^�����v;g#���L�d��Q��f�ѯ&��>���#~����o%��R�$Ӌ鳷r�7�|�Х|�'"�����R�a�ĵH99�Y9(�����F\�et���(&h�8m	��!����5�Q�:�_D/�b�U�FMC9�V�`Zi�J�	Kx.�m����Y���Տ���N�[���L%��~pU�$R<�B���+�/�de�M�� ���4U�V�%�u��w�C���	����Y�Ϙ(�/�` e? Zd�C�lI:���λ <�WI�A�m�0xM�w�=��N>;l�EQ�z�gC�B�D}�j�n����ǣOi��!((�$*y\��z8�i�+�й~w�s;��A/��չ��yS�\��=&�|�\%J�surn%���I�b�k^9W��q�^Τ�s�h0�ĹW��n�����k����$�b�N^�4��4&v�����Yg�]����j�� �spn�s��U�L87��s�޹�s�g'�7�^��5���Ü���Ws
�vfN^�����8������tX6B0�����f	)TBѐޘt��,V��;����i��n8������ i�� �FG��ސҐΐ^�b�E{o�6�
K��ۉv�I�a�� ���I-���r/�x-�3DHih�21���)���r�Uv!�VSL+�ų�xj�	�@�y�X5R�8O�:qS#n�j���z��uȹx\�����y7���5˹�4�s�s�p�͹~h1�Z���6��Rʹ�87$���?εƹy�kֆs8�����5��v�}�\ۜ��Y�v/��Y�v��5*�mw綷���qۇ��^#D(M���;w��I�;cclM@:�K%�"C=��3i;�Fg����L"�I{&��$љp&�3�t&�3�;��3i�L2�ɟ?����/�(�OY#��������RJ/�?M5�Hu$�Z�K���:�������A���e�	^{��m��$km6$��mv�D�!yZ�zYN��Rj뤔���!�LPf<+�9�r'~�T�#�%vOsR~���Fx�j�����de�Y�.�P.�nN�zyD��N�Mm�8׬/3�+�sc�k�/kֹ-�����uvn����\鹡���������՞[�� ٗ5G_�Y��ϲn{���rK��T�*u� �z���7�ۺ�k��d�����I�����V��4���.j�5B���M<:��^�hT4g�$9t�ص����Մ�ߛh3c�-�#����}�]
g�P�i4�+�d�4" ^(`Fe`Q���%������o���?�"�U���f�� ����h4���4��j�p#U�ԕ�"���y��%3�-�1V�8W^V�sO8��s՝��JW���g���G�s�����a<��Zan��ú�H��'''
r�hj:p`E� ��[Kc�rn+�J�L>9�'_��:W�3I��DH ��-�^�T^֫�@�D���t���u�+�'��`M��+�Iٹz%w/<��td�,W��KRq���4i8e'�����!=����$I�1!�1��:=1���$I�B�.��x,�\.�N"�c��Co�&�R�L_�C���J����-�k�ܐ�*�KP�����LB|Ȟ��PG�|��������JU���co�bX������w��w���Do��P������Nul���>�.k�n�r�.����UA�@+�:Nb�RC�R���3!.�[���:2��_ʲB��%�,A�� �I3��ɜ %�N����d�tG�oD�D�q�5/I�ļа�(-R�r��
��Aݚ��!틡\�o
9����(�j1Ts3����qBo"��.�pD�92p�O�I�0��M)]QP��r 9�(��b&�'3p�A
��@���~
��S��6Wc���	+��g)��N
��;�N�t���O�~ҫ#�9�T��	$�_��y���n�P֥��Ж�_��2�*�	��ǇN4W3�L��3i� ���3���W
_�@�����GQl`P�S�_۷���V�<$[��w�
���:I.6	��k�)r�I�,SZMY1�#��V�i윞���5cM��P>v1��>��
ԣ�E$��Z$�o	m�M���)R���R׏���4��x��nb=�׾cbs$ge�J�djB��rR�=S�<{�Y4V�<b[��*����o�,���;{�=f��[�D�QHB=z)�$��L{��r7����~U������g�x�*�>8���(�/�` E9 �Y�A�jM:N^s_�M�)X1{sQ0>;Y��'l��*��_]m��3Ri�Fl��ur��כƶ�{���Y�S �g��g��G,��2:9��#�>2��C� 97��%q�g���"���׹5�-�-�sW��b8���w�Y���?�s�g��#ӹ�p�Ɲ��y���Zκ�)����]˗���-V�H�"+k���T��\�����r�(�� �-�A�[� ,���M�a�h��/݅�x��W����P���29�M�����gr�]:�Jέ$ɹ�����h��FƯsq8���p��ݵ;��lӜG�sc�m��Xu�*�sS���8u]s<c�sȝ;G���{�Թ�Ζ�y�:w��s3�:7��F9�O�~
p� N�v���C�����8�M�njgk�<��}S:�����(�-�?��>%Û�K�w�a�y.3� ��G�2ݣ��y{�Y)��F�Wj�f�f��l4% R7ڬ%�3����h�S�r�Zg��Z�9+�Ԧ�t�mA%M��V���\��Y)�!$7%��F�)�h��M���l�D�zp�􂅵֋�"D�t�%�����:h�Z�F���Gk�%�Z<	�D��8P�Z7+A�yp�9k������K�.�Y�a����:o��)z��8�;g��NZi�<&4��Q�M��f��l�������@��ֲtOB��$��{K����
$� �-%�
��$7�s:[9�t�@�CG�}vϹ��ֹ}������q���q�
��b�>k�����Օ�TR�ٓ'�=9rܸquEE5>'�d��<"In$Y��59�М��qn3g�%�	-V�m�JOi)I�Pg1g[��>�%��������>I�g�$��ο�?I�x��-��a��eO ƛ.�E��ɪ�v�A���f�!��ҋUi�Q�r2����^�B���*���*X+���o�Z�7�f�E�ś=��V����}�vO�i9g����&Yr�-9[$��p�.|�^K�t$ӣGL�ɓ3aҤɓ��U���*�����E�!�2T�l�?��b��8�֝m��O�>���y��H�F��{f���ş7�& ��H6Ef���J6+�T�`hH'�UZ�ZC���VJ�ykH띗R�����e�T�8�ʆ@䊊���r�QF�DDD$iA!Q9��L@%1�!%�H "EII���,�oi���\B�c�3����j`��i��6�)�%��,�� �B��)i,@��'� ��9@�*��64kPۈDBW1B�^"��<3��������Zdv� (�b*e�JQ����z\�cK��ILŒU�E�J5LK�J��b}cE���Im23C݋jF�ˬ۰J���3�s@�\@�J�=0��k���j0��R�J���g� ^�V�"W�(�D]�xi^���/2�u5C�#LnN�R�g�[�p&�0��E�[=��~������Jq�)�=�4r��[�eJv@Cİ��^fQ�-���1���a�)�Y2˃Őb#$�W�$¶�z$ K��;-��g3hJg�r�1..����i�}�9��H����-�7���b�I����ץ�C�èQ��R�؟*�3���J�C��gh��I_�D
���)"Ǜ���tH�5�WB���{�C�s�h��bwx��5﷼#F]���d3^9��|� �S��Gǜ��G��[ ��Q0�ѭ3,�72n��IJ ��"�уE��`��kb��J������~��L�~J�#f����f)���^��ŝƆ��U�H�P�̈́R���UX��e�.�-i���.����sl��n8v�rkT��~*���ëo�+��������(�/�` �: �Z,Cp�M:G�~���H�TH�  �cX+!4q *�m@R����G*��qO�:�x�=z�qߜ{��fS7Z�Z}?,�H��c�e����7�u����L.���N�(�pii��s��X�H+�����RZ��x^fe�nǻ�F��ǣ���n���v��������)��n@R$�S@���qng��0���l]����$�=�l��qV�:��sg�-ֹxt"�Ov.��m
;q�__^W��3�l:��`�悳�;�?_�G���qng+��*����������S�b����i/��i��K�d���s�g��l�s�6
p� &�s8[�����^^�lQ��G�8[ g5g��.,�����=������`�x?���
���RQ:7�{�+���e��(��t��q�R$������ZO{"�?'��v�����q�s����^]fmm�k�#a+H�V���#��f����'�X� �	��S@�0wHu�s����_g렻�=��i���N:deaaq�@$���x����^�by?������ܾ�N�t��>�tn���%��<:��ܼ��p6빫�;w�og;�'O�������LW�Ktc��<�Vc�D=#�6�HrH+Y� ��)��-YΪD�r��s?9[�s79�%m��7�mÖ8��0���%�l�?m����ރb����̮�.\�r�Ug���ǹy�-?m���"��y˅x����+H��e�n]��n
N	Wi��uy˲V���-/I���Z�1Hip��~��w������-i=C�ޱ^3Xc���Ji�#��奴�%T��^ZǱ�հ��@��N	yB��mpnB-�܁���ڹ����}nd��l���t�eR罁���i^WH�&BD��!C�9�	�r�l�<��\�}���9w���s�97��u#��aΖI�s#9۲g�������=�[�@Ｋ���z�󴳳:u����	��:t�fgS�s�C��َ9�iΝ&��ie�]�$sn2g�v�.gu6��[J;Qr>RD���8w���a�Ӽa�X��s�Xq�"���l�0���5g�O���h�D��u4s4s������iͼ��=����v�'���54�����νn"'�ý|��I�ĭ�����o�|�����n�5ð�����H�x���[7�p�Ee��$I�0!�1��,= %I*�DDR��N=�1 ��������
s��yX��BJ�2��Lg�(_�g.A�/����a�4��|�K#�q����at�ȣ|��CG�6!*;^v@��mr�������n�NT�7NZ_��Q�� �Zi�c(��|!�œ�T��VR�'?xSA�Dsu��y�����M�<	d%��X/2Ge�ₔ��{�[n2�ۙ\)��Oe�`�Z�[K:,8"ڌD}]�s"��ʰ����9�WW_fFw@a��K2���Y��&>��S���Be�;�� 7RA��n gG\���}իz��[��������pk�,����k�e�I����V?|5��l�Q���!��n������w�dNU)V@\��z�d�v �����3��(����
q��u-��QF��c��SLK�=Oc؃	��!���(�Z�O&Lg+��e� ~q�zh �G����:��<���o�%@_6/�c䣗�}��El������Jē}Slz~G�0�I��+�Fu��A��#��Tx�뛹�_�j��%)6(ENmu_^3�'�U��O�u{\z��9��y2��.�;�ݶR��O��6ʵ�'�h\�8��۳��̽��6�R��o��s�ނ� z5����R�}��:���1���DĠ����ʶ����.�[�J�̠D=8ͥy�s4�*7���w�T(�/�` U; j]�=p0�1Yl���us����K��C�f���
濾� ����N%%�.����"Rp4�I ��CǿtH9��C��o�̿gh�Z�a����_.~E�/"B����_e�i�5\֛�&Jx�5ʿ"�z�o�_A�B����~�׸$�|R�*{1���B�\V�� ����3��b*W��
��l~�#\f�`��)���y �4��RJ�9N�.�NO�i��V��^8��Z/�ӊ�==�ڐZ��f���s��zsR�t���pZ�IAk����Z����z\�A �aoCKA
RQ�mh�I')�T�e��,������{���xY���K�N��!�6��"��!?���U��ׂ_��Wˏ����e��U?c��f$Ͽ<��I�Ep�o�.�I�u~��\�'����W@ ��I(�B���O�}²��f�1r�>�l����ffs`Ċ�lˆ�E͆�a�<���y�
CKC�GvZ�Z:�qLФ��%Zj�X���@���ǯy�jg��踬v�{���+���UL��`�U�KůM�z��+��H���˫¯T���M���Z��
~�@�)�ݱ��ر���9�L������ I�ဿ\ �|]շ�?u��T�����٦�I)�lt��95͉�vgw#nҝ�MK�8ˀ��sW��v�G��@��ܮx �E�s2�vR;����i�v�v�ݤs���v7wsgC��t��؃���v��4���1�����9��\n�nn�[��%�U��|Y>�6��EI�o$�:�/$�>�D�E�_@�U��4]\V1�����u�ߟ_���¿,��5��Y&��bh�rB�Ȑ#��%1100/������d���Oڷ�Ld �B#��WO<��sK7l�2Y�JÿW�ZÿQ��Ȑ���_��貾�o�:�.+�.뭉�l��R.��Rv���x�� :�n6�}ŉ����'��[�$�� �/�z��"�-�;����9/���.ɱ��x�fVLZ�(��y�Uq�x�b�dEj��T�f�4�IlhC:�.��[���jQ
Ru��`i��(I��g%`�.\�\)~�D�_�����B��ÿ>�J"�_)�-�eZ�X.�
��J�s����Bŗ/TU�)Kv\~�/�_q�i��\^~�I1�e���r�����'�)	�� j�����T�g�!=�4"""�$IZ!D9����9U!��	2RR�����%��CS������v��H������z5��5�����C��m~_B;-w�����~���}Ӵh^�h<v���@4����:۹�3�[ ß���g�|�C�#yLK���%�w����{�Nh8pa�l���D���_Q�T/��c�@� o����BGА��YBݨ�;�g�hj�l�u�DXW��}m*��E�v��WI4b(&�0'���>b��
���5ρ�QFW��B�V$Y)�n��>���  ��_�$/�
��~Z��+#��04b��G����̵j.|��A��هX�bɲ(YMf�i�� q��r5t� '�s�QA*Խ'0�6Qܖo��<�kNN���^���]���M}�C��p�yꢎ���$ҥ�U�a�롑ϊf�Mj�XE
�K$��?��u���w_���Q����"dJ���oz� 
�b8�ŉ: [#�vpBUD�	}���J�5H�$�-���J���q����lW����U�� �3�6o?X�%���qׇK�G >�E p,}ohHH��&5�X{�*��U�b����q�z���y���K��QP�p%��R�R����3D ^r���d	f$�?�ؠ��K�$��_��K��C�q8}T�*�Y���5�X�L(�/�` }8 �X�DpjM:t9VvCV�Cw^+�d^Zg��5/�*�)����U�VNh�?\�N�d���z#�X�����	[K 
iqw��!��vn��p�:\��87z��M����}�y_p"0w7o;X��Ԥ�Ǖ��l��n�_�Jky�Zko��֜̀�����o����ky�jO5�eVܢ4C������vH��Ղ c�i��ڞi�ά��3+k��W���jyh�٫��Z-Zk=�QAa�G*��S�*�]P�����	���q�#g���q���?��!��q�=�]��4�wƹe����r�{ù���<w��}:7�sO8_�sk�[¹��:ߍ`�S";ӟ�u:�S���.������a��dUp��M���l�^�bwgTU9�|�Wm��g�rO��糥P���U�َ��vb��j��iK�5������xQ�R����������L��V[��p�S0(<wR�ΗH"Oo�s�8_!��q�~�.q��:7����p�|#Dx����W�kun���=��.���\T����:wn��:8�]z������PJ���$�]���Nu"V�[O�Э3�{>�'����Fb�p����ŹU��׹�;�-�2��Qr<�xF�P�s�o�2��^���81"��ژ-�8��I�42*��I��$��X�H�ZYV#2))�cЄT&���4���m&�F2w�ʑ42
PT9�#I��X���&<ڝ���$��P?������l͹ר);wY_9_`G9�E�M�u��V�8_&L<�@���,����Q<E��έt�m�����躷91K(�.]�lyz:p�<��,X�҂ �.,��t�K�h�s�sn;]�s�8o���̹ˌ9�˹�����m�|e���Nq�fgԋC�:IV���6�#���ɦ�爪й���Ϲ��9w�9��s�9�0�˹������;��vr�*�-v�%��}C����~�xz������:�3u����b����ҿ]���@2d��������48ѱ3��|ѹ:��s�����rF�[P:�>�>O�΍���zP�s��977�vӆ͹٨Is�4�sќMz���g�}�̹͈9��*�y-O��/�'M:	�s#9)��3*Dׇ�{�b��4�|a�;�N�cy*u�M�-2��I�$AF1��=�CE1"��H ��$EI%�lFRL�p���tt��=���;�t���� �R��zq�,9UNi�[r�t;�bp{����a�*�/̾��MuU��C��T�~��@�/[��F�:�b+��gu��j�	�Ql8�$r�d�|�Q���t`F=���?u|���Ռ0_]�_?�[jR��P����wW�B;`���uW�7��G����T��e;�h���Z4��f�m��$βE���W�m��P~�6�+n#|� |<��|�;"�De��!wg`����o�O�i�7?�Q���)Ň�E�����������T5G:�{����I4��Q�`��cnlo+�!�	0��C��=�s$tp���$��= ��J$��\?,к3�2��+"�%���N>�l�B�� 2^*Р8́uЮN��9�F�A�I��[h.˻�/w��������!%F���+��(�.���Ph޲̉KDC�(V�}Ὃ���i(H���>4-�
>ܤ\�W�����hv� !
wB�{?O���x'J�N����-�3�~?}���i��oo_C_�%�O0�]�5?��U.�a�ǐ�S�p�(�y�M�Hpz�C�/3�����V�G!�7�Hq�}��S"q�5(�/�` �= �a @�lI:)��g,��ч浰�^����k��G��\'V�u|�ƀ`$$_��������IK"-�B�՞��\�����=Εǹw�k�s�8��\�;���;�.��ڼu�}�mh������x!f�{��Sb�3�,��E&��6�f���iМ��s�	s�0^���\��b�sw9�����)ε	�c�g�ĹI�8�gQĹE\�Ν%b�¹!��ju����s+���u�s�pn�Կ>V g�;�w�_��s8��s�� �9����̹m�w�1w棸���5����q���jVNr{W��g#��{�ٯ @�A�d����������E �:--��k�"��>|����{�ɹ��9W�s�9W"箣6���s��Ɯkڙ˹v�vr�e�nr6R��{L�X�����Ul�+)E�|�y'�9w�s5C��ӭ�B�[��.u�_:�����s��9�do{��%<�%/��~M58*)�NR�f��]]*)������K��;'h�A-����M�n
꨼W��N���Q))n�rƜt�������'�Ի���tR���I�&�s͆+�I礵�-mI�z�m��ny[Y�V�eyY.
n��1`��ɹ������s#y�=��~�$Q�c�6)��k�nf��BJ��P��C�}I��Jæ���dd�p����гAx�g��\������_�:�=�z�sC��Su�X�F���)8hЈÆ����*
�k��@�c�s��w�U�Y�������t��X9���ZA.uElL�����?�E��4��������a���͏v�9����y�u7��]T ՝�^��MqRjE�=�w��%�0��ۤ�q�y��v�m�8��f:��s]����+Zc9W�r�c6>V����ǹ���MW�I堺7�:����	��GYٿ�� ^�މs�q���AC[8תsW8����5��Zӹ>B,�K�Ĥu��se:w�s]q�STnOu5{������Z��S4%��ҸpG��Z�K��Z�5�@;����WNz��]jA.WW�NNI��q�r^�R�@RJ���u��emm���ҹ��9��s��[JX�h�:��aGF|�I�;<7x���5(��~�KI���1r䈙�G��40�`87�s�p� :r�o��ӹaT/+�E.^s.��������)���{{*��^�lv~����4��~
�+��U	���!=d�#"$"#IA!�AD1��(> 9G�HI��
�fB�S%N�o�z���@[�f�K@,P��掅�Y;oӗu��\z"�sM�����;�se�)��6eqIk� �׀��*^" lQ��4��|�pӫjsz�#��Gf`��+��k��@��d��2�>z1(NXqOW�5�n��RM�#w����0�S�����ZEzd�^������aM���Ys���N�"Rȵ�E�j�K��ٖA��w}�&�~�,�8���.�q����+T-�h_���X0�(�قŬp-�-"i%�ű����@��7�\���V�����ީ�ߦ�p+y6��/�\D%G��ꊢ'
)���?���䑪ʈ
un�.�<ZL��$X�Լ�n�7J�o�RG�9��(���7��Eh�m\�lh�'�� o0=�m�hEs�s�Be<���@�͐ٞ����ȸ�����HOT�s;����8�[t΃|��c�01@EC�-@�b�G��������s�7f?=�04��҆����(���R�fl�GF���]nx�@Il���ا�{v$���LW�L�ɨ�3�lэ}`�imG�J�R��.�a���<���81o�<T���c���S��s��SQƄX�y6�	�R
q����PY'�X��x�1.�b�e�7o%��\��Bey����;����/Dd��ad�{:rj�x�-pyC��.BW(�/�` �= �f�A�.%
�� ��	�q����҈ ���Ji@�����뵮e����bIc�5��Q�K�#{�-5D��%0)o��]���w%�w�"޲���	�����Y���e�w��sJ�0�t~(��<�W�ŁHH
�}����- [�Op�7��}�λ��1��C2a�5�w�Bޠ�w�B�]����7H�]�����C@ۻ����|zקw!��w]�_�5I��J���̻x���j������ռ���-���d�������O>o�^R�����������.��d*�6�ҹq�ά!4k�Y���,�F]^�@p�k��g1�ݭ���Ƭݘ���n8܇��n�'�wk��n_�g�u�C�[�y�7o5_�l�R�'B޲û�xK�ڃ�[�x�������zW1^��Ի�x�x�k�%U��Ż^�eԻ�޲��Z��
��i�]|=�g�wIɎ��;4x�U�K*~���� ̺�����l�(��bTF)S:�ޕ��c����ތ�σ��k��d�Y�ھY�si�1��P��6g4(ff
�M�ٜUŵ�b��`�70�6F��1��݌`�w�ijj=���X�h ��P�]��p��	�WF7��@���g0�۸�n|��ۇ�p��ےUU�s�]��%�)Q޹�[y�$ @�L�.x�Rz�oy��a��]����w-Ba��Co��C0��Y<ƻj����JY;�%��o���|���`�y�ͥ���]��Iy��~�����^��'�I�n��Jc��V�����R��w�ǴZ��N=s9kn��i��N�~�qw�v�Ɛ���ݾ��u���M]W��%׻�z�2λ�s�2ʻ�yK(�gʻ��塔�R�<�M���[RyW��ֻn���w���7ʕN�^u��7i���kiaa� aG�%����@ײC�P�2P�Rл>z;j������0�=�C�B@��q�n�f�S(��y�d^,��z3Ō=a��͛�rlzՓ7���s쓊M/����&oys�=����� �lVU��[:xW+�Z��]u�%�g�e �w]�"����ޒ��@��ÜҫJ�� ������J�a�IǺ�k�
�-j�U�Cy�� l��J�y��1��C|��.!G���Mw�<�o����r�F����Xf/3./G\�V�A�qz��,f*t�����M޹^`7\w�}OM_RgUUټ뚷�B�S�w5�%�5ûbxWL��[x��[
  ��J7����ׇNN�_�!E���$I��@��$=`eY1�DDDFAAAR)k~`��1(�vkDi��]���uaMׄ,�;�u?O����Ze�L�8�]X�r�.Pf7E&}��j'C�\��s�m_��7@4&�a)/�0c�^��3N�(�x���q� �H_��Cq��w4qe� :1������=���)$m�r���#k�sd� ��m5t/�͐�+�E(#�E�D�| ��Fb�h���+.D�\	�Kzw��>�n͊��G�w�<��A�ȗU�夲�xB5�pJ���t,�����해*�YϙkƄ��?��Xc����yۢ����=���i�@�i�h��|K� ���<��Β�(šP'��/�N�D�Ƿ7@O��Y�#u�V���1NQ�i����S��ca:I��Fh��R!S�����ь�+Ƀ
�ܢ��CED/p?2S>�_VD.���۠#/0Lĭ$F|����~G.�i\ a hҞ����y�O)k2՝X�i�	�y��I����|j,=S��X�A8/�7~<{�b?N��:�XF!��d�X�WC��Wd�~?�nr�;Z��k�=K�'��n��B~��O��(#����0�� ��O��'��:��Y|vl��B^�Q@�SȜa�Ȫ�D�ǘ�)"!>�_؀������~�e8��rG73��Y�K�՟�ђ�	(�/�` ]A �m�?`jM:�v�;��gd��ɷ]��@g`��P�aL��ֿȤP4�m��t��Z>���F�o��6+�)=DNo>^����M,�$�^Z�;z�y�Zg�<��^Ji�:��:��;ޱ�Yi�u�׼~��㍕��;��4�j��zG1���4�\0���YAaP���A��.�s�/g���H�v���8���];w�s�8��^��qn��Eqng����sC8[{~���;�Qݾ�Zg�����C.�۸�-�NuoK���iaX�zI��:������4�1g;��b��-�s[9�%�rr��-�l�΍�\�l��o�b/�>p~����o�/yi����u:sI��U{�ԡ���m\����Y��Ӧ���I+�z�RJi�%h�sVZ�x6�Yi��W�G&��*p* P����iP� ��ҡ��aa=�\��! ѫT́Q���D�� (�,�0k绻�.���D1�7 w ��$@�tM�$�s�9ۭ3���kΤ�s�9[3�.s�\:��N��˹��I-��r&��;��J��ʹ���sO9����p&��;ʙ�rn(|��l�fq�i^Z��p�^Z�s'h]/mڹ�ζ��$@^��jJ���-�l�v����[o;r��ؒ$!#3�\�w�|�s���yˇo��CRɹ��87��5�]cZԙq��ֹ���������39�=�VÙt:�����p���=�^ÕW]���4^HAg�c�����2g����K���_ԜS�����RJ/��NZ��[Gz�ޗ�����YG���jw��N<	��fY�Z'�[���Z����v�?g��~έ��yΖ��������+���(N��M�^�'�[p���;w�l���6��m�l̗e�=l����	$L�4i�D��9۶�s�4/����H:h���[��f8w��Kk��%i&���̇=�,��6^j���sG5�����u��3�D@g$>-m��/f��)n�U���i���H+�9 �7�ԩ�fĪ���#���	����$~�[g�y�z]�樘������.Gi�g�#X�1>G�nt��έ�܇�m�l	�{�ْas8oTg�楅��BPA�Sq��c/m�3	�u�D�F�A����-� P8����l٬�s8W��J���9��lM���M�8ۇkk5j����Y��#ǌ(ȑ#�p����F:[<�4�>�C2ι㜭Y�3�q�)�}v��������*�zi�x|x<w����W��Ut��S�}�J����$q�ӣ�f��p������4�l��J����]�T�u^��]�Om���X�������a��.q� Ν��xi��M�l�"�۞��K���:�m\�G8ه]]ZZ@ ��:[X��5�K�;�+��Մ+\�g��@��32$"#I��!)ƌaz 9���$IJ�a�@�.h2���(� ȵs������/�-2XD6|����*��w�Jb�/V`�}�s�I��\�H��˨,���~�L�&�C7F�Q�PWSe*�m7v�޶��V�u����g��&�v`����h$��|�/�#�[�K�/8���f��H/N¥e*s�ZX8Bń��-XI�S�m��2eq#�j/y��N�tX�h��2��X�x�9=R"2�V��,<B�+���
CS���{��g��;�~�Ⱦ�s��q�Z�P�l6�vY�)/��������RI:X�u��m�b��*���~�<�5?$_4�ێ�ބ���f"u�I��A���O��Z�����)��w{:]���'=���Ex��p(�Nx��|�e��|7��o�)����E�Ek鬍EI�p�«�����#�z��9D�T��Q��PX-���x�������!�m�"P`�hp��,� ����<�s���բ��;�.�m��HH���,v��2��ȷ�H�;ƃ�����)8�� Ŝu������}��}���u����-�D�7�-;���o�<,��H�+ ��2�A���e���X�Ŕ(�Az{֘E$^���==و� +yw.)� ��).x�i@��)��I,��|���)L���h��f����<�-���1�(�/�` �@ n�>p�&���/R�t���<�ׯ�5|;��U,/�`�*��P�K��`���&�n�>ڲf�%$IJV]�x��^�$Ϋ,�w»w���ʬ��z���*��+�}�����m��,XT�%J�&2d�h1eʓ'0`��@��Y�/�(0�w�{��w���͔#�]��/�w��^�=�Rλ<�޽���z�9���]�/����������ycI�ǧ�G��7��Ի|�Enk������}@�I�ă��ȑ<����Ay���LZ�Z$��x�YM@�|���-��%�i)3S��yGj�$�N+� E+d�3�X���g��8���i97ZN2K��R�und��L'e:Y��c+�L)sY�jc8�>]���j�P���j�ݸ�q7��P޽�K8��x_�J�}�F�׳�p^��.�����{��]rxC�ՠ���/,���Ce��{��x4��:��E X$[�fc
�U��j5�*O�(����`M��I2�Gb�����h��Vu�®f���6�4�Tl����,7�Ia�`��>����2���-�ڜ�@�t�ҜH����"))2�d�s�#@`NMڤ�&�'�h7h}�M��:R�s�$�؈2�#��!w�Q���h�d����E�����}��.	�/�w9�}�KA�+�]��Y����.��/�w��}��K-��]*y_%�2��&y�H�ɻ<�G�UH�}���w��}u����]�x_5n��K@����� &�
C��Ҭ���a�� S���FmP6��)�6�d�Y��8q�8�V.׀9�+PQ1�"������rTcY���*�\�FȚaV�TL�t�N����8L-���X�$��9�`T9*�� B{U����1ԅ�.Ԓ�n��R���y��2���y�h�.��]m�ۥJ�����A޷��Ry׮w9�}��K"�;�]? 9�:y_���u��wA���U���ޥUY5�I�W�^4{�{�v+^���A�d�..'N�(ɐ��&�:s�u�+�7�A��$�͵��\�K|����Æ����=Q�}K� q^��}?tx��WCV��W�KJ�TԻ�y��}g�z_ڻg_u^��γϿʿ��5��<<{:a���Љ�Ҁ�O���`��� �0Yl&`F����T��s��!�"�L�i��̢%ɐr�IqL)e��*5 D�*Êy �Ei��r1��kb�L��c�"�3��L'�9�.�9N��I)�����֕֕�j]iٯ�N�tc�#�u�}}ů���o����J}}7���w���������~޷���q��z�}W�k�^�:�����rY��U�����b����ݹ���"�����%��+)J��]M��w��P����E&�ذ���w���z��۷u��N��L�H�I�$!�1��)=@51:D��HAII�Z���:��D��<S������E㜘����!���BvO�ߏ��6��/%��|T`5�����rL��x�&�0�
=��Wđ� .	h�R`����I%
��UM-s%|AyE��B�f�w���lS{����u�A0L���~8�82դ F�7ϙg;HM�3�iT/:'�+�UV��NW�7R���'�?F�N� ��.��(�>&i��0�/��A[[������1�̝>k�5_狁��H\�������Ǡ��)�7� �C�����7�闤MDpR)��Ӷ������(œ%��l�Ŕ40�_@�>�DXJ�:�H�@�0n��q\��`���-������f�[�M��.;k��9D���L_Y,.�1�d�[1
�b��hh���\��Zn�����
��0L�7��x�S�,�G�@�y��0�P����#��@2I���х8[�.�G6��M)�F~b����B!�Vpas�I{Xy�T�L��E�N��ʤ��.�z�ӭ�a��f n�l����ƟF4g�\��`��5����|"rA.�\���/��/��?��|rY"To<��I���&��;��X$Z������_/�b+����L*@S�ދ���oq��0�;��5����Y�n�9�<(�/�` �A �tA��&U6��G�k�j��]Vo�6{2nv���^�ue��X<$~㷎"�9~���fw�k�o�^2����_dR�׻<_O�c��[�O>��}�[����M5����b��=+ݔ�J7�k����b:+����M�r��b�l
k�A�`1]�b�)X�6�`1ؕ��xS��\��z�\����xL�r�=��m�H��ޢ��M�6�;y[+�<�mg�,�C�-Y���m�;?xo1}�����|ox�-�����M5{��n�j��0`p����qsB����/���m�}�K�#٣��1�쑀�q��y�9��Byo5}���{��br�/����;{���]��3�������,�%cy[$���;_ySyg*o��=Ny�)o��=yg#Dޙ��;K�m���{g�{��!�Y��H��	���8���m�c�wϊ���C❭�-�wV���fx��Hdx۫wp�5���zg��2z祭�,��:>�����I�3����4	HA�g�I��/�%_$�d�sJp�l��k¤�$(e�M�%�A9]R�^�5a�l��)c19A��(���lQ��6�٪�v�]ߥ��Z1�֋C��  �l���-�&���"�6QE�T�夤�JWk�6]x�N7|��T(�"�9�-ML*MJ�TR�RJ�k��a�%9��^0PJ	�s���Ť���R�|Rʗ���&(�|M)A���sJrC�j�QQ�T��(��D�T��V�nGo�4���/qi�ZuQ����J��V��lT�3�(V��%�Z؜j\�լ����J���U��;c������R�3�wF0x�o������[ʳ�ݹ���T�w�z����t5:��ĕ�m%�s��m�G` �L�\�,���e'r�q�b� /���N��ǰV�.;��N�W]��ݞb)���V���Y�=~x�^d�VqXL\.4C/�Wk�^��WJk!��VbJ�Ż]�f���\�,J/�
�`Zw�֊/o�{k�0�W�0�!+̅�a�5��VZk��
$t@-�z<Z�W��x�ܓl���l�Bv����<��!��u�΍���;�y�0�\��3�1a��kޙ���wN��(����,�3���r͚n�Ӥ��'$؎Ŕ),X�P����(坥�P��x䝏�E��{��k�-�w.���X��l��ټ �a���<M��.O��r|,�M��d�9����i���J�0������(݅�*gU���/΅���ŷދ�ŗ�V%a���P�^�Y0j�k�5��4��қ�JP�
e0��:��Ǭ�h4�\P�ߨy�4o�H������{��|�/`��m1}�g����c���Ȑ���� ��1bĉ3�ۂ�X�,y�.�y��zxgok�s�o�x�.��=�gg��p@��f��B���Dj�:�A��H����P�Kfa@2���j����Z/���jX�ț���x���r�X�j��Ղ�4��<��2#"#"2�$�A9��@55�1t""


RTP�F��j!�+z���66�~ug��ḝ`l7;�S�cΜkpK��"47a2uUț;7����|���Q��R6e�ޝ����&m����9�������2;�Y�i
�#�V���4�:4���1�Zf�΄��b���X��V��h+��U�i��uT�rW7VU�a=�,��	NU�So�:I�O���ǳ���|�:�f-]��(n$� x��t\�=��_�$��a�}���A����֣9"�hǺ�ܷU��nw���jz�1q�2�x���_ w�����b�i����a�9	���D���̔����o�.B˜���)U�!�JCN)���9 �,l�ǬP����>�	U)���
&������]��$�9֓i��l���J��d��AI�4'X��Sh�io�MR�����I%�j&���q��3p@��sr�w>=Y.��;딑��+�ø~&��.��!��}�S���<�H@����"��A0%oVYe
)p��F���`MF�
��/�;�%2E`>X��M�\��a<�%�=!j:Yn�R��$�69�M?��dYQ�V(�/�` �= �e BpjM:Ii���V(B�YPE�j�C�D��[)�O�	�@2�Gu?1��i�����%Ƕ4j��v���l�N*1.�h��.����*�Jo<z��n>%ڮ�۫ (���[�� ��>_��h�A�4,!�Joܰ��gEi���BD�)B��Jo��ݽd/
�wkWko���ۍF����Z�����jU?ܨ��n՝c����~���{UTȱs��9�3e�]�J[9����87%�VB9w�s��������?����9�x��l�P��0g;�L&8w���:��s��ƙԝ[w��s���ܽ^s��ΤԹ��$�s#xzi������9��4/-�3i;��l���g�u�j���|�Tӹ��%/;Qa���ȯ3W{���2�{}i� 9�S^��U���օy���33:s䔝m�s���s�gK��l�j�	�-�A�^u'�Ҳ8���^9����	��b�n:�*羝I1�k��ɚ��ˤ�բ��P%.�Ť�� Z��H��{3́�8�R1h<ν�lu�8���qn�q�!ʞ��@8[�\S�Rw�K��;���N�z
\\Tԉ
Q����m�s1q�p����/mع3��O��;[�p��a'k�ٺ87�Sg[���1���/�
�D摧�!ڢH�i��je���h�^X)��++�a	i�C�XCZ��/Τ�fq�+έ�lS��ٞ87����zi����l���;��:��lC?���p��X8�k���Xx��^�����V
͓&�$�D��@�t�I���l��As�*g���S���0�(�����F���Y�pR{�ɺ���R{��^*i>؟���i���-�h_�_ixE�Rz!��R����/��a�G�.k����w������K�>�/+a� �t�xkXkXV��d N������K���]Y��VJ�zǬ����_�T����Ȅ97�s�9�z�'g;�ܵ���f�{��Z^��:�F�vH��l!gKS:���/�N���gfJ���e^^1b�v]]gg��ɤ�d��d�i2Y'����0�&7�$k��6IBf��s���iڋ(g��N���sK���ƹ)�mԙ�:wp�vI�K���%�=ƟIa�9����܍9�xW�!�>�(�Bc�
F��t>����"��V�W����U�lU�7�{o��j㻣�C����Yk��+�Jy���J�<-�\��WEZE�� �FsNuJ#����� Й&i�ܶI�l��#Bg�'Lr˹�t��pn,g�;w�n�l߬�p�png{u&_�;�Q�=d42��H�$�11�Yw��E!s#A$IAA���EV-h�"�W���o��=�ȿ�d]z�qfMJ(n�%����jǙ�� Ƚ�U�ob�����S�\$�%4��=�̢�ʗ�!}g�I{�s�	�������2��>�}�vb��ԛ�cipR��^�(ECm)*�Y@�R�����Z�[˶��Ù���]w2_
i���='LO��c_�UW�v�l-Ԋ�O���M�=%�ǜ6=I(S]B& 9�gQ����R��{݇gq1ǃ���Wxm�5���b%�{#�1��yB�wQ��
Gz6?4=�/g�!����Ǽ%�m쏲G�+gv����T�s��g��r��B�.��%����=�����/x��H�6I�z����X2"�(�6=nd�R���E�.6z�r�c+���)�h`�LB��(� �p�J�l��D%�t�S�3�&a�n*�E~��/y�?ๆ��Iy;��A�t�ʸ� �L�	D��������3�5�#)�����7��n,��<:��fp�/u��*P�}��n6�;�ʯ5~�����HL�ȕߌ{�\�8ov�NM�5!�|�c����|�檓7�MQ�Q�d�T����J���b.^KF,b�M�Qs�����Ip�ڭ�F������3{�[D�W=�����j��z�
(�/�` = Zg�E�^M:%`[� .@n���Q�w/ ⒶH!$;��Q�/߂vB�����>�i'��c�ڈ�{
D��;B#3H��@؜ �(��4��Qp��h~s�&����7)l�X��(���GgN��[md����늬Vl��I�P%O�7+�ɑ,Ś%�H�vI;�c%E���"�j��"T%
P8�h�s�9'F'�} L�$��b�7�'�0:�pNJc0:'��sƆ&�o��s~�9�7)�d,dY���Z���j%�:�Պ����dE
f�Zm�"Y�j�AIZ���=�����Ɲn��t7��D��y���.7��]8�3	�v<\x�5��n�5��t��ƻ�ls�K��,�� g���[8�6������r��.�+u9Y�+u�2]P�/Z)�j[�f���Z�}մj�"�YӪ�f�J����C�����VҖ`�U��E�*�E��iI�ڭ/����JYM���JY����Z�,#�xg���-��ꝯH�xg�ꝩ��yꍥ�Y�}��9ꍡ��}y��{��;��W�κ7n����靝���I���	�9���q���������;x��<�/�7�����{w��Kvѫ����>��ez/č��\LL% ��+��&q�����x�+޻�y��x{͎�~��ޗ�;��8��x/��!sƻ(�G?~���X[��s�����Lޙ�����!��i|�yg1�K��x���B��\3��C{_JO;������8P�wQA_V�@_f��*ښ�Z5S��j�z_���V������V�XҨ�5
�h���jI?5��8��X��֚D��4P-�`���P6�Z[����T��B^-G坧���w��H���:p��,ޙ���*��)�9��xg�;���ك��Ezc�lSxg
`V��;+]�\D�w�����wO�FG:W�oߊ*�)y=ַ��wV�O�y���x�����O�,�}k���d곛8���g:�y�r^�7Q�`a�Y�@�ѕ���q��n����y�6��1a�\+\��U�+�q�|�M��0cn�a��D�	�]���>�\s&��9��8�~��*�- �̒��|pUe�����j�F�q�%d��%��J!����ꍏ���*z����ՍN�\?~4y�%P���\d�;�@���&Ibg:y��(Ƭ�T�b� cVd�
��� 0���5_M���8�.���}s����ݑ$	�;r��|�m�����0����3�X�;��zg�$��;pxg&�q�w�P�%��,#��Q9+z�ڤ��Zl�˼�τ��`���/��oy�-��@f�3"2""�$�p��)�Q��I2d����):������O=š��.#ς�y��GJC^]��z���E�3��91O��Ȇﺤ���#�x�Jդ��'�k��،œl!K�����)���5C���ꄛ��M<���N�<7�������O����M����Mu' �ru��.:�Ő�PFx ���w�Շ�F��v&-��[�۽^�>���-�v�L���T���&�����%>��:�� �`ʊ���
?���EB`�uV��	�o�)������T)�6��ؓ�fo��E�dh1aL
u>�+N�O}9N����(}��Y��ޡ�f���f:+����i��9 Wkw{�Xw��ؕU�V���I0�s���'��H7!�D���dM\�����IA�6�R��9��g�
��?�ǭ%����#'嶂i)@O��$s���^5�+�PƗ�L��j�x8$���̡��s�
�m�H<�zP/ � �h�����C%� @�������h���M��,���.���I�G�\��rw. .CF*����`�[�œ�!e�0 �ͳ3�4���.$,���м���d�2����9���� �5^	�b�DZ� (�/�` @ �j�?plI:⽓�������j��E�7�Q��Y=T&Ere@Z��R��!rC��y���;���6�4+J/k�s/8�M}��Ju&8Iu� �c��S��k�s�s�J�����3R�gy��Ք��7��i�����O��R['�4u0^1E��v����H�q�o�9��G�ŐN�9Nj��x�h�Յ���Ձt"�xG+�yA�:V�}[^8'M�6�I� ��C����ٜ`��IAah8RݣφwҐ�~�~t~t�y�|6o׵�:p�u]����ѡs�snBg=����y�jR��
:7�s�sn4���]Ε˹��;ʹ���s;9�"���9΍�\��}��6�j����>����[�\��XQ�ܛ]�}+���I�q�.�����c0aN��];���tanK��<n'���q���t�K�Z�ܔ��P�t�?��'��i�o���L�9��s;�m�݆<s�3g�̹͜I/d�gR˹���&�fr�e3�^V��p��vn�;7�3�sC �Νu�޹�[G�s�s͝Iznz�e}:����\ŧ��{����ja9��#��<܇����n튯�s��"��c���@��s�"�k�s;:�E�s�8��͹�9�`���r�/W��+ՑseT휻�+e�8W�q&�Ǝ��5��^g�{;/I'�vGk��O��%oUl��^X�'�ti6It��Ub&@��w����Ei�5 �'���fu�999yO��m��7�u1)�
PJǆq�0����I'$�s9�C�=�\��;ȹ�8Wg��V��4qn�z;����p&��&U_Vg���N��vܭ�x�e����__WW��2J�s=;�@��w���¹/xUg��X��s��m��:wչ&8w�s�:�ԣ,|��K���1���d������1��~�~�3&k��N1k�g�	EC��{#H�"�S�:�� /�3g ۵���Y���`�^\������9Z�tR���I��6�{?:g5܇���
�Q��p��j0a���/+����HgÙ|q�F�q&i���ٹ��0^�]�8w
�ĹO�k�����V��gT���kU��ߗ��}�#��e<�m���xo��Q#�5��F?��{�9��q@j��>�!���F,���ĝ���	F��`�������h'� ��@A}a0����v];ܮ���ʜ�s+1r�f�8ױs�eM�H:���*vnc^V�U/+�3	un(��s�����K���h�	bbdd*T�������i5]�\9���uk���f��:�g9Z��uș@�ʧ�u��C*yk�lb6E��hH'���',�B;����c�9��###""a$I�!F9�9>@eEP1�D�$E)��b��%>��Oe���Ix�Zb>�����>����sl7��v�0��0>c�S�{��e��-I��	}gk�\��z��x5��oՑ�i?�#��~����/g��b�����Ю�g�\g�7��uS��Z ��̉^`~�[ײA�P0*c��l	����A6	��{�smt�\ �*wQm�*�IQ��*5x�t���[���ϳ=z��I�R���,���}��?���<�|���̢�("�#����
�#�F�u��܎4�� �RR1�	웂/�N*hmdhO 9poi��Ј�+K�5�%BUꗃ����7�}]�
?�s�������	��`�_�-�h=�B�V�ue8B>�֘G�:H��i��l��~ھ��X\�u[2��3�x���	�>>+�A�]���U\,`��5���䒰��$�E�B��T�#�BKp3�Z���B��G!*�}�IZ�⽢Ԇ����SLi��}���)�>�U�~&,�/	Tk��bq�E�8���A!��P�O��G�a.��gÝ���1�T���,��e*:�sO�|:��$��LO�'ʴ�ey��A8)�@�M�̄����4j��h�(P�\�4P�]�в�9��II�m��x�J]��c((�/�` �> jj>p,'�9��A�Zs�/A�-vL���K�_D�e�
ȌF��xcF�=�t�5L[�]��7!6��H89��L[���"@v�)�s�8S�s�8�8S:�~q�]���%>ҭ[n���L���L���[�����΀��.��<&�Ǳ�wGJ���L�[�:W�e5�^X��S��U��{�T������I��R=�n�V<Պ��3�٤$��4���V��n����j,&d��
��� eS8�8��ܬ`Ue`j6��fTMM���i}_Q�Y�N���}����+?��ua����QL�9k�7`m����O>����N�!h�����/�K�Ŝ��r@wӉ��nv[ =�뀨��n�[Ϋz�xK�׻�z:[Z�ȹ��k�s	�˹��k�sw��9�#�>R��87������ù;�i��.P�p����{g����T�k��5zn:�,�ٹgg�i���?���cs�+xn�\�s�1ڣ>RI+[����n��CZ1J� AJ��e���k��֒%IW�
��3�$ɑ#E�
�K��P��"|ɎUuɺp�b�c}��Xg���*��=�T��z��Y�:+6�a�F3b�hY���ʓezb�� !��2���4�;�2�Z���j�Y,S�r󖩇���	ݎ�jy,��v�<l��ƎT.��z�ܗ���r/��v��s��˙n87�3-q�(g��3��d�a}�.k>�	�/����� �D�Vi6Z�~|^4b��Z�V#A���g �?��_��5�	^��V�>0�?�� �~)����z�^O���n��Ҫ��{R�G����E�����Yn>�tO�US�,w�劦�Y�3˔�r���cĀ���_�����[�{��,˝e�bYn,���r_Y�V���2��L�����rWh�4�r#X�Q��ܝΕӹ9��so:WM��t��΍�\�{ѹ*:��3�r��Ν�\�ѹ:��s5tnCg*�܂����s��=�+���ι��s�9S/_>�2� �T���ӹ�*؎˃�x	����Lˁ|���R�?KW���_3��R�rrd��=�r✹����ډY�8C\���N�ʭ�M���b�9sH�\�����h<�-�1ڏ|�a��Lo��׹c�ƙR8��>Үs_����Vc��>���N�	��>b�9��H.v��ϑ�F���f̰:��!B�Ǚ���ǙB��E
� �G���Zg�;w]���f87�L���Tv�A�G
�P�Y��(�$�"����8�,yg8�RfIܜ�)�'�O8gr��l6�9CRN��9ܼ�P��,�S��9��
ŉ�SE)�3��	�Q��<��3"#""�$IFA
U@E1� eFReUJA���s:gx;n���L�7c�ƒ��I���r��ȱ_%��`�b�x-j�5d�3���K:K`�$�g�K%��QcCL^�c���� ���oS�\Q@xz;R�>
���e3)�3	SC��	�
"طE�1�q�c>G砐��*���H��zn�d8dM\�z�`K���ܫ�N���VYD�/\��1�"��qT�5��㈘p7gOD;��+Z�=0�t�?��JW}�0�)����4c���� �k�����M'	��}صQr(���4F�P�( �'�
S=�>�3�z<�*��q�_Vn,q�s\RW� h��1��j�d�@0�c��jr�
�`3�R���/�Xp�uP�4���r?5�Ќ���&֟H�ln�2��O-K�Z`Qtb����Oy�Zyn0�$=C�U��s�#�*�ŉ3gL5���~.AFd:�w�ќ�ԧ0�8�E�1픈6���|�En�T(��@	Vhjg�u(����'΍�2��B`V�������?�3D٤�Y�/�
��k0�l9��?P�gm�67��Y�ˌ�K�F�7wa����P���%�V�gU��m%T7}0|!�<��1ۭٵ��8�i�v(�/�` %D zw�A�,'�ަ�'>�����D'���W��J{���n���
1   y�6�IWa[��f���%��}BR]p_�ʃ���Fa�>
�'�� w�^��K�TvwG��*�=Q��$�U"F���c��RJ�;LK�*��k�2�pA��B��J��A�;Z)�V���U(�%v��%� ���#M��2m�g�zUNf���t�^���QMe+�\�m��󔷕��Q��;?y['���mi�1�w��s�-�w�!�c��?���?m��v�����.y��L�md MMoL{g������7��s�m��3�$�mwo�ڗ���H���{VVS�ng-SY�r[x���oo-��A`�v�;s����O�=���7�}����;[x���'���$�Ƚ�+S���w�z�&�|�=�	�qo��m�l{[��m����s� ��o\����r?�$�Ѥ�_�Z�Z�-��5JG�%��,����\�Kާ�#fy/��޲,�/��Hڬ6�f�Ӭ�p�(�j3�nđ5ZGp��-��JJ�z�z�nI%�$��^Z:��nIo%+%k%i��y䖗$+�����'�B\x�ěX�F���M$ �7WI��Wc`Hn1��-�U�����z�
�;�yg>��m�m�$3~��L�m߼s�������x��m���c �G�?���AY�r��v�:鄹W��w��s��e��X�V��,��zp�]��ʣ���mɼ3����Uz~���䧽�޳u)��=W�ؽ�����J�\ʕ���1���T�R~�_P�;�g�a�L�)
`���iC<�G��0�E��N� A4b���*T����SxcJl���wNAc�����{a�w�:��B%�3���\ߖ|c��7���O�䍹�8ɻ·�\�@_�IV黕$눨J��<a�Y�ORx��R�3�I�N��}��+�.���'J+i^�(�TYI�JӐ��R
%�d��[��MpEi�}s>'[O׳�zN�T�b��1�wF��]����G�����x[oL���� ���;x�B�wn���$x�o�����.x��ޙ�m_��wֽq�s������;�o���g�<{��jy��Ƿu���;o���q��/(�_�ǽ����R���`x��l�B���&�j
�yg5o��Ѽ�76��f޸�;�y[-���Wޖʛ�S�S|�y��w��5�X0��n��-�6�;�x�"��!�Xꝥ�wn�S�i�&�=ο��H�	,,��ټm�w�R�+�e�ƽ2o|��Wok��UV?-?m���l�-�o,{g�Y��z�2^>�
��^��"X�4�����դx[���2"��3�� ��du�� �C������h�n�'�0�fdJb�$-(��:VL&��v5?�1e��Ē�n4Tb��$���)}"M�q�χ� �6��p�p)�x"����&~_�ʠdaU\��:Sԉf�TeVY���܏gޏ׳�G�Wճ�&|��̪TS���$�Q�9d�"2$""2�$IAF)Ѭ;P�s��$)��,zk��g�l��� f^�|R���V��V�Z�Q��
�X�%��w���i���[u� �AdMv�(�YQ%��w2�\i�S����P�Ň�>�h.�1<����O{Tą;�{H��A�S���(bY57Ҭ�0�p��ߵ	A�}6R��?/�1C���P���C2�%}�yN�k �����θR0/ ?{�Uz�suT�uq<��*����y����m=�N�e�YI%�$� ��BP����r_��$�X=W
���#����p�G5�)�L^�
[,mRs˥F^Ӊ�vg&��m�e�>�d��:-�9���/��:���X��!`�����H��ߖG�^]�����ڹ귀�Z�V�N��H�Sw��]n��bAʞ�.�v��̀�ô�n8��F.DZ�I?p��<	��H*��r��\"�jϮ��s���3�䛵ϻ�<I�&�v
� ����s���yXy�2Q�1��
��Z��j�#��Ux�f�d�4��@��������e�^(� ����}��>yv4eqχ[n+�P\��J�#�ޒnf�A��].��$���ڙ��������7����z<�7��')NM�W��ԫ�?T�nP?�q5 �G �L���`~>�S(�/�` �= �l�=�.%
�a"��^Sd����z����z@��� ���S�ѵ&>y�_�;�����l�G�&3H�049����KΟ6m����˗5!�����>�g���_��v�_-�|A
|y�/��r~�~���+�Þ�MV���0�o-0Lل�����
��oV����-(E_f�W���q���c���K���fV��t��ɗ|�����3�}�����
����L��ҥ(�!��	��$$)c#��n��'�5Z;��o�Ѓ�P^Ue=y��u1^�(�7��\p@��y�ˋ2OJS1�H�A=!hԒQJ��"C,����u�#�N��#|��VX��մl�m�4�f��l��F���y���2��P�P� �R�~U+�[ɗ����H���OF�2�"&�7��K��S/-�`Ӑ��
�[(������玿w��k���t����p���6��a�/0���⯗(B��A����8n�{Æ�6j�[c��3d�+�Wᯊ�����y��~�ԗ�_�L1k
h2˟�k��_��`}�������ۜ�x"dE�d�	�� �0�_�%!�K�,ϜB��L�j�d�R)�TM,Rɤ�)���1jv-�ZB�</~T1F(B����a�Z0~.LI�M�����}f�͆�D��k������i�M�O4���e��K?����`,�mM��~��󑿏���_G��� 
�W��/ ��g�����U�I�_*����)��P����'M|�\&9D�~�|�^��g�Ҡ�fe!B�-բ���᳋�Z�0a�����gϞ<y�<�%z��K�����Q=�գ�;v�藎���/���_6zF�gt͐�/�1��b�F�^�l��,��reJ�FY(�$�~��#�5��^��C�:6��ޠ�_2�+#�~c��/�u�B�+T�W�	�� �_V����/�L�3�$��O�}�"��%�S�N�u�L~�����!���~��!��ɣ�k����k�|Y!�9|�j�0�+�s1��Fnjj����$~�)�(�e	$�P����������yM��q��mE�H��'��[^�Q��E(�,�(��E/���</v������e���IꋊR���S����Y��88 cM��M����.v���A�ʨtB�AH렺���`�9}�A�UQq��\�E��P�q��8�4 rԅY�.���똺.vT��ll�j�Z�6�]s�~�(�W��Z��*����T�Ke�o�$�_"�9D�C�҃~'�%M�4�ĚP��ү$%����O��<G�5##"�$I�1�] 5�!(�HAJJR�s_��#��_9�묨h�=��h���<��y�m@����1���*�I����mS"�Oe@�������7��Tz�p4����[=c��|���}�byV_��Z8��Z˾pc�	�՞l:[�T?&�Y�GM~��TAȼh�D�"VC�vk��@O��8pj�I*��Q�G��+���(�r��68��F��#)�Ni(o�T�xw{6ŋF�-t�U��
��-UlGz����/xQ��&N��q�?�2�1����B���5�`��������&�U�u�U]D�c5��[�.T�/�B]up�O`.�2��дu�ga#ii��n {r��ǜ.x���Z�&m�k0�j8������p����/k[��� �n��Џ#�������&��Y3����M>��19:V�����?��Ӭ��T�o���2�s�̪U�=<r�����mֺ�\�@��D;�,����*���%�7`�Gv�Jo�m=���=�'�O��>J����k_�(�*�A!�k�ԏ\�|QX7e��+��(&�ӫb�|��v� 汶x���)׻J�B؀TP'uM�O��|�|��F2"��k��+|��0�E������u��l^(�/�` �5 :^A�,'�I����  w��	р}�(/��� ����l�fa��uQ4b7h�Tb�V�7طY�kh�)sJt�s�ष(��sJZ��pTN)��sN9%HC����r���G���l<*^��T}��3����w˧\~��-�j��/��f.�h�2�Ik����Y���e�5��1|j�_(�E�'L�k���ꕿW>���l�=�������~m�o�2�)��O����_�%�|�ů��q��w�T�K)�k~��K��KJ�\sw� ���XX8� ��ņMR�
+���Tg��ԯ��>t|Z�����k�|��t��e��� (s �&�\ �H��S5��I����#�񷇿<�EM�o
��������>�Q��=�us� �5c8\�l��l//8>�b����`����b�˒%�S,u�Ԇ�9|jçY0����ܣY�Ր��>-�W�b��WʧQ~����l�r�N�:��Tm��h��b����iͯ��~��O��|�̲�0�%5�>7����Q��e������4�0�ʛ\H��� (%('q�O�Pi�P���I%(A8g�4��� �Hߒ싰�1$X�}�T�Œ�	ʢP�tM:���Q�UU��E��.�O7ۍ״�E�U�r�*��X��.��J�dN�tl��l<x�#�6��"��+ ����gOg�:���!�������L��˧��Z��2]�����-Ej�T���)sܠ:�z!|Z��_7r�f��hE�Y^��U��	[��Ͻ��' ��E�`3¢����i8otJ*)��&Ɗ&A95�̪&uB
��I'�C�)�t��@�V�R��4t���)��B�L#%i�9[Ζ���_�����M�o"�"��
�7��r����8����_�����{���$�:���B�`o��_� �=z�*��E���WW���{VO���O�t���S5��A�/)Q��rd��C��+D�_�����/�jcN'~���;�����"�����Ņ~��/����N^���V�Ч�
���F;3�E#7�OF�1��`	d_��b1���b�)FH1*I}�c��>R��(��M&�!~��[A����EY�2�EaH1�"��@D�%#""� I�t�H)�����4���HR��z�cZ���-}V�ފ�b��(_M&��r��-z�Z�V�/l��{�t�1�mi��Ap�X�=)�u�����}]�ZC���@^��o�_K�4�`e��2�0�S��eu���V���4D �'�wW�2m�0{�0:��-!�X18�P�`���i���?9�?�&�R5�	xyFU��J��n��3A)��KZ��f�b�X�����M'SXFp�30��Prm�a#P)����l�^j֍��@f9���{g�ǲ_Ew_v-�O��
}1�v�.13��f.��pzh��p�ً���F�-��)�Ŝ���R�р�)�����u,z?|�l��b���W�AҮ*u�Pj��p���^=y��*+���d����{a#;Õ������a���S/1r�2S��׎p[�k���5&��|���6���3P8�H��M";R�b�o�ay "7V�ڝ�]��>��N�s��O���/�Q7~�X����ؔren0���)�a���in0�F��	�U_�w�X}�K����GL�(�/�` U> �i�G�Q:��
\���'�x]�n���x��f+58z:z����ж��^�Ʒ���ڊ<�O�i�l|k[�RK'*;H��so�+�yY���d{޷�ma�{�Ļ~?��$.~ū<xprzz"/$45U���e �7��}6K�����w��޷��Jx[��Uz�f���'��������7w����+�m������n����z��}���]}޸�q���U��G��}8�;
�꓅cչ3�� �3V<��B�[���uV�<o�'ǘCʳ��A�b�R�Hs�,Nf{����SJ+���Z�ZyN�N
Y�'O�!��y�&�tN�Rf�R�)�I��I2	��Y��t�ɓ�A�smF��;�Mf��v:�N'��6�0�ƻ��!�7ć�M�
�}7�+����Fx�8^V&kse~��˺�m[��z�1��gz.�5�}̫�Xn>�
�V�h��aUk� H�j��Hʱ�aR�bC�*�|�
a&i��~sBE�s�5h$C�64T'�tƂn�I�<2�nB���3�����t�N���v:q�C�G����y�"�K�]��v��y[!��}��냷��:�6���x��ۢ���w]�Q���P���"�W����p�ޕ��Vx�
oK�]����m`��w�]y���}���]��ݽ���U�����սm��&Y�����<�z�V����}�z��T��"ԉ,-�xEoK�m�x�#� .�*�.��{���ۗ5��A'�A2>;���?2���;�6�9wh#�8A�y�'��j����$�u�#��PT�M#;{��&�ɣb�#9��J�$��d�!ְ��o!��E��.�M�@�)�<'�8�t�4��f�:a:'�1J��d:��'�tۼ/�w�g.0_�S�Y��}�ƻ�x_�wUay?��^֖��|īz�	Z-��
�۲��ﳁc�|���5s����}��,���by���V��
����e�v��.�z_����}w�x�/�油F�7	f����F،�F#�lt��� �������F"D#�{�\#�8�`/���Y�v6��NV �tż����yW&�w˻JyW(���]��+�wm���5�@K/�T��ܩ��UH�LM1��T�/\޵h��^���o�'��t�� >dxW���S�n�S�`ﮃ��bw}|�ʁ^�*-�1�p��Ģsgv����[.V4T�l2�0�F<gnR�bGiu�h���]��� Xg�l�2�!�a�T���9�%�4!�5�F���9kC̕	��)�v�m����ިqߕ�1��4�BS�˺������5`�o���%+��[���m]�R�5e34#""�$Ic!�1�L%�59�)�#���$�}���?���W��p��F�+'=�g%y���!�� Q<?GHM��5*�	;b����[uU�娩����,��U.c��k�+z�R3b)��v0&iq��M5{ �&'rӢ�:pg�]D��8��Aɾ/�$��fX��Xe9�� �PJ8r]�5��@X�g��:n�S��&����.��D]Rk3�i��k���K���%�ƕ��������	���3�z�{��/Zyx��>ΣV_I�0�޲�����{�.����Y.++~tO�CJD�8xL����M	�ա�f�g9��ʭ�$n��6P?|�P�{�b>�$Ih�1�l$�R�ĕ7��L$|b*�L�&��w�v�3���gx�9� �b��^����3�6(oo��������g���{�o��Y��/�q�wyنw���또�j�8���8�(�����.R㬊$���9���El���#d�+����|r�sl��gH�V~p�ᵾ��-i�I>��*r���#��6���4	P�E��d�G�m"ϳq�Ù�E����G6��C���(��=�}�<��Tg�֜�"%a�=����� *B`oX���Ծ{z��i}�#��Fg�4iW���>~���[m(�f^VK(�/�` ]@ �o�A�.%B@�Q.�1 D���rǦ���z?�N���������N�Y�Ό-���Y��-d!D��I?ED���l�toz�9VJq� �#gcr���:[أ��ܥ`G�J���I:)lSJ�U�Kŭ�CIJ�<��d�B��N�0w%Tl�
�L�we��[��vJ��JP���EL�%b�j�ڌV��jX����s�8���q����^L�:����s�8��sw8W�ss�+�ss8�
�p�Y��:W	�p�X��:��p��s�Ε��T���
�5���+�s#8ON�`u���kԹ���t��ܳsә>ήs֒���ec:��������w}��]g��V�����26#�=��!��HC:�V�?�}]�����B���)�}��H�1b��x�Qι��;���:�2�.�cγ˹r97�sX�.���I]r�%7Z�W��u�z�WaM��X���_�O͝�ҹ87������^�s�bu>cd6E�V&�]6;a�pW�c�����뺥�v''n9)����]�rR���K��AJ�'Pv+wwk��F����:&+�IJY�K�I�S&w9nW�8���!�h5��Guq�,�=��"�d��qf8�"�:�=Y|��sE:7�y���E>gÆ��2d��
 �	99��\���Hr�!?�����(΍����ĹZ8���p�	����yB8��y9��9�>�cX�M|�A��s�� d2*J��L�)J�d Jz�r�I(�[���ܘ-M41�5�;�y��u��[�jAA���B7͏��<� ����0���Qu�*�\��-E��Ωs�so���Oy����G��^�������I���(����+��.5 �S�҃
.�JT����f�i.��J9A'*RR2pANr�jw�@P�Rr���r�M��\�����8Nz��1���U�����\ݜ�͹�9w�󤝫�s�9ϥs�r�/5˹��+�sc9�+�r�V�m�ɹ�4�qn+�UŹU�k�s�8W�.q�$>N$��:�禝{��8����<��V�t��Y	x��8��ܳs�S��~V�swz��Z�M_&���@�!:�3�� @���^�}T��h艡G��y�Ҏ�����T�S"���B�85R��}_Gi)��Mu��5�8|��h������󼩩��>.]�Q��'~FH=5�Z�F�:�3�6s�c�M�<�<	�qny�qbIAB�)��t�����$�LG��-[�`1b�__�����|�<��<x��y3դA�E˙�y2�{�y6�[JG9O�sC9�(��I�3�+��3�6��q�Ys���tn�<���[�qz�w���;��y:���b��qd}v������Uv���&$�՚���VHJZe��Ô�(��X�!Ec�M��1!�1��aw�U9�)s�(H����;�v�TX�=(|�ST��?��*^_�PP�R����V��I3��6}�]�j��kQ0���/�>@�ꄬֶ$����ﳐ .yT��7��r�Uv�4[����r��^���O�;�B��q��|E���RB<���(�i�'��S��=k團�ʨ��E����t���C�z�9*�y�m���t4�7��q{(f��,i)Y{��=r�,�n8�<���`<v	���~U2�����Q��qO�p�9�����;gT���)*�mɓHY�o5��}�Uز� cDqF��o�N������O|[�v+�_����׻S�)���Ϯ�D��o�G?,�I_�����[�)�J|�̆[���QD�;�+2�_6��p��
�Q.�*8� ��o�^b�:�vf��А-�*�g�rZ6��π�Na^4�p_,�ԷNA62�%.ܭ.���g���y��-�ţ��z7[.]���N4$=8�h:	���d5��.W����>�L�r���W�%|&l9|�wu# x,��aJB��SCVH	�>]4�2��QW-�?�y��B����K{��n[M:C����[H}$�� �/�"��k���R=���E�8w� r��Tխ�>�?zRq�o<�� �}����(�/�` �@ �h�C��I:�rrl�,Y�aR#KD67�����79;��"��U�l��j(�����s�%
��Z�7!{5���0G3�����#4�܂�7P8�~s�n�t97�sk9w��-:w�(���f�[��JΗ��:��̹o�S��E�;D�{�׹%���{u�޹��6�]㜖��ݮs38_�sW�y�F(��E:wx�I�4܋޻��ҙ�$��O:��V���pN�P:
S�8R�0c��j �����?�p���
>n���g���^���~���s��s��w��97�9瞳�|ϜK2�&󤓜/ٹ�y�� w�	9��Z��}\�87
�6A��$�˹;7X�sW�:�W9��Η�;�u�	�i��<�{W͹�o:k�X+e���6����J�vm�
��0�c�U�W^�v�I�xIVUmG��s�9_0��r�+�k�Źy��,F��n�s?p�깧�7�޻ax '��%G��r�[��qyT���I�ktn\��%:�1:�;���Ѥ�~�D?�
�_ߝ��j���gu���8��mtG2� ��1磐��*C(���1�9ъ4jS��Zu�6U����Zs�"��b���Z��!�Z��BE1���:�l6��z��Ն�V���Q��Q���R����$6�Yb^ ���g�X��ĲĦ���V+6�=t��0�]T>'��)i���H�#y䎷㑹�gU��g�c
?lt��Τ�>Q:�.�w)�Q��� 
��^,U��[�����
@���חm8'
��LJoX�N��(�)��9�#I��YU�A��|��K�q.g�{Fy��%�-v�s�����s_8g�M=,��%ֹ��<w�{wJƹ��~3��2��\�87�s���.�ݢ�:�׹�:7W������� 97�����8Jd���J��c��`c������>^�g�uu���ҹ�r�Ν�x.k9�=�;_|�:�.~l����9Ո|�VԜ
�rYՆ�R�Q��k8ZQg��x5�І�%�Zk-��Z�J��&�nb��+�Y#)����������s8�޻Z���:���j�K޹y��[���S�s��co�u�#����Yk3��&��M��I�訅R:�y��<�i�3j�20����ek�`�!�=p�y��l��������7
�l8\�IoU�NJAH�1�8E�PA>�nG��Ν�Bk9�:��������O��\�s��UR:�ʣ!Ar�HQQ��/�卲�����ù;��{��/�ӹ��7�\
8���=:�Zٍ���sZ��n���,�w���<A���FEtI)B���9oCw���B�6"8�t��Dd�C3#""I���I�Ԥ )���DD$)H*���`����,���>�Y�>�X[i(��ſ����xk$~/S�M�k�M�����O)P��q|m��谢���ct�挎�!G,�H��G�
�쥯��������!ׯv�'��I�@`�X���������{���Կ�c�R�Z�<���g��{f��c�T�������w��ө�����R���,����j�t�{������ `�͠soM�_ߡ�2��]�#���D�=��Tz� �"P�?\}��	[�����l0�n�A*sɅ��X�[=��ڮK�H#p�SLZ{��t�Bu��ɷ��s�{���F
�7��TI/Vp#���5�$ @t];�ҳ������������BSӗq0�_���΄J�M��0h�ȥ�沛�Jtjkb?|(��◺϶J=\�K���'x����O�m`.d�	����r���-Jd�.G��^L=$�3��I�W7B��(��a��ȲO��B\�)�����a*q�8&�cw�Ȝ��_�A�O��I���Rp��w)#�p�v݀h>�R�L5�(�iM��_�@y��jb0@�#��~AQ)Q�7fS����'����7�s��b@8��	1�QCpЂa�mJ������\5[b�X$,�A, ���LyI̽���to��?/�k�,t�l��X���W�)3th :׿��gH(�/�` �: 
hF�ZM:���O�π��!t_��L>�����L�X��e���,�W�@(IF16��&����q�ڮ�5��tۻ�VbS-(,>}�W�2Xr�}��5��$�.�;�i��c����3y��GX��=�y�ZG1�VqрH���r�Ѥ��) Qu ` -���F<&4��
��
�&J)���:��F29�,�R�/��!Z� 3 ��<��"c��%m:�RF�#�LJ���9�N7�T2 �'������x8 ����B���݀��v[�_">%�Y��_�Z��§$��S%ΪO�>�U���:��	~���9pVU�Wɯ>}>��ROx��H�Z#u��������F��/�60��rɐq�?�z���@�L|�/��f��'2d��j������'e��&>m�Q���JQ������~M�o��p>��W�ߢ��?¯�_��_ 5���B!�Bxf,(y�P��<͸�����g
�
(�9O؉998 ,��6��|�.�{!�v��J|:������锿)|�T�����7�Ղ���䯓OwL�2����|ʓ3�����!	�Gs�����#��\��W)~�o5W��剿O��뤉�M*�1��8k��7�O�����?|
�k�B�TP�c�Z)�����������_T��ߪZ�_c~��N�J�4J�}�d�5���0����a� �m�L�w���O)���_�*1��VE�_{��|f�|jůD�%�������әw��V�x�0�1�f+T@1nb��tyf_�󊜿��n`F.:g���Z�4�2k(����z9	�,�K�)㤡,(7���r�\����C+0�L�F'�SRJo5R�Jt�Z�8c���zM���w��x>��n��:���/�O?�u��+քO?�+�/��G3����?Jc_8�������
�¿��)��{IR��d��({.4n�fx
��f�D4�ݶXTǄ	�|��� ��l�ǡmւ������t���	��)��2����Ug�g
k���9x��Qc�X¸e�8cm��Qꦌr�G���(A�e�rJ*C+R�S(�,��X,��RJ(W��(�H)�,����D�J�2I&%��҉�I)wT(Ѹ��0J�ICJ�l ��-�1֜$�XL�&.FI��y=����!�j�����F|z¯W�^��׆Og�;çQ��=��o�O��[=^������5�WZ���Gm��_/~��o�r�w��Z����,W��Q{�&��@e�#"#""2�&q)�Ȱ 51�9ŉ�������B�1;p6p���gP]"��ԋ]�mk OjN<]F�m��1"�O{��J�+�:�;<�V��t��E��N	Giߑ��d^ʾ���b�<��}��D�l|��a�̾��%����e���Y�~��[C�������O��,��΃��HN��M^B-�M(���Z�k4�|��U���v��̫��ߔP����{P)a�+�Th` ` L
{P���c#���_��a�u�q�{6�M�<�� �Jl�����~�pu;�/��~m�4�����J�v�gy'��=\T���#I��S
�,m,%7��o�|�q�/Zn��g;��f�%L�྽�����%�8�D�H�=�9����|&���h��%�8vbΔ�֛q�4���VI�LlM�~����uw}3���F�?P��	��KT�v"?� ��T_�9\v{�N5�m�S�8�\��,�a�g3�=��ly�;C�@����؋�<��3xeNs*A�H���ѧ�;_��@ԯd#��PT9��4(�/�` e> *m�>plI:H�x��w� ���Ub��m {�RE�6ʺ�ڣ�w��y�:�&�z~�)j�H��[�FR148R[Q�Ϲ�;͹ќ)=W+���Q��I�s79S*���IΔ��9΍�L[��^q�_g�u�3ՠ��r���s+8�#紨ӏ��᩼�E�~�g @|��;�TG�x���[���'����|������oܜ�M�rn/]�݅˹���֒��Y��K�sW�rn*G�}�ȹ�9�!���A�s�q�g*�\5�[C�sg8c�+M����ȹR���8��s8��:��m;�"��tn�s�D>R����;ӱs��c�ཬۿ.u�e=�������|�6����ʹ�sιfw��?;WΥ���4�R�-ʹ�<i'���ǹ}��s�q�g�v�9l���s�8�޹��,F�8S��������9��q�]���ε��Y�pn窧�h��
��}�Ni��#�:W�s����\�s��s�δ��J�[��3�r��M�����*,����Y}:��<��s�9�Y��S ��L�εv�ڙ�9���:󲟑9�_��jfj�6�^��*Vr��vm�b�)�M���*�����J�ݱ�s���P�2�ˉ��m��؅ؕ 74A�)wG|�6۔���n��m@we� ��v"HW��SN��r�\	N*^�]I]�xW+	�swԆANJ�*Z ]�\PW�pU������j���$����-ޕ����|\k��q��΄�܈��й��й�[й:w�stn@���q�ι�)�s��1Kν�L)��s��qn:έƹa���S��u����\/��ҹZ:�����j�5MEsn4uK�R��[IErn$�Jvn2iع�87�s��"�-�\u�֝k�s'8��J�M�4j�G����G�ףGXX�0bb.<xP�U�@���V��O�1��|�>�h����'�ܒ:ңs?jt�F�έ�Ϲ���s3�sәs�9o�͚s�9�6�
��`�L9���p���۝N��#�Ӯ��*1Ee�;�R�!�PO�4�!�t�����nw���DӮt0�ڮ���i�qa
|)�t>���!rw�n��ݰBm�ݙe���B�������O�V˩b�-��Vq�����εùr87�sSy�k�s8SۣN�%p8/�1c13++�����3Z��}�̹˔19S`�
��@��=��\��-v�3����cZ���}�`\?q���iu���x��F����q5M_ڜ��b��H)R*u�g�&9�H/|Tn���͕�K'�@9')e��Ӂ"���m�fJ�w���J�� �I��p��B)�.�IWn�L��DD�$"#""�$�p1)��> �È���IR�B�1�X���i�N'߉ǝ�{И�RPĖf��V q��3�Z<V��-�ٛ�?����zv�W�� �3��4!��?8&�D�)=�+�G�w�'��k�	0~{&�%`<�
��,G����ܜ4)x��{l���i�s�?]��Yi��j&��R0+�����S�u����l��e;L�R��F��z��׺2�kr�w�A4!������O�  ��w�V~�}K�+ɚ�ަt�wa�F��C �1#�A�5_���\6d����~�4��b���R͕�臎��r������K��qx�!Oq�h=�I��i���FR����������)�2ۃ.W�7S��O��]���GK�F�-`�!Bo��1��k3W*�g�1�N&�j�x]��N���	b��A��s.5D��Q�:_�ķ�s ���Kπ?MZ\�㑶���H�_�޵��&(�X��_��^ARK�Z�T�D5ǰ�X���%���/��7�/��$N�_�0�Z0��!A�aݱa �V���z2��F�z�,��O�PȂ���.8e�X�rb)Rq�A��#�?��LwI��#��W�x�zҁ�E}�Z%��؋���8,56��f�Ѷ��ٴ�s}�Ą�R�o~�)�"�(�/�` e@ �k�?p.%Қ�s�1��D�"�z�,���a���5��"�QB~e+����]�rSs[�lo�m�߄�A��2>Psܑ�B]M�U��=�x$��S��t�֍w��t7�n�g���a���:��o�4qI��+�_>����z�j�������|�����i�^!��=*'pI�=�k.{5G��T�ڧ:?k�a���׬ၩ�����s���)U�2��*@ ++���J� A��¯8ߏ�d��J�����Fl�t�_c�����0���S~Uᯊ���>5ᯖO���L���������t�ͧN~��Wj�w����O��=�3�t�����e������EU��.�b��)�0i.˚r���,�2cL3�
�2~%�/-���M|��_���Z��~�ᯌ.����4���KtI����ϧP_R�2�ɲ���CLV������7�������k������״q���P�J�Y<��Qi�K�_������˧]~��/�Q�O��{�k)�V�@¯<y>�¯;w(\V4#�hLV�+`ʯO�>��$���qiV�t�ƩҦ��8�i�ęˤi$��8M0��J��&>�9Ι��4qt��	�q�Va��8�s��`o\�q�"�����8�	5�!�ZM��qBMq�9'dN��q����"�8��"w�H�8G���6�H���q7EQgWX9Iq��(r��9�`��Ě2v(�x7���N���������"�\�>Œ�%�� �g3�t��5W�ňѢ�
,X���fzؤA����"!<�̀�����>��7A�Q�a�a21�w��%E+�Ìs��S�f��,�
�p
����z������>P	�䁏�O��\��V��}VHX�/��@��m8P�C:�� �A�*��j4�~!m ��F�F����Q!PP߇�0���CJ��~ ��0���(�mm�x:A��TKK���W9����ߜ���_��kƯe��s��j�/#�.�w�_��ȧ��E��!��_�[ȯ����13U7��a�r��+Ưa�
拿^|�į]���W.�nѢ�W'Gv������n�h	.���K������R��{L3Y��N�ڼ�6ے�f*.2�G����	��00$D������י_	����w�������p�ᒺ��	���5�=l�Z����Kǯ�e�S~%����c�c�z����1����	2dȯP�BrI��g`�Y��,c����l�&�g�q��9z�r��m�vs�s�#9N�9N�#qs��f�k�!9"�I�$!�)�̠`-�f�$I![��䄒���=��١�#����1)��%g��%Y*Μ��LxR�/�.���f��}��F�2xZǡk��La�wU��zC?�vLv�
�*ؙ2�����#�����w�X��H�C��l�����;����
����+\?�R!0��*�^��%�u�*���k�;q9��ui���l��GO�\��dQGl�Q�l&t	�j
�e�ZbXN�/82�Ƿo��o��|8������A�������.6ëAa�7H����f���NG~�Wd})Я��	�U_���~�p�	��w�X�w�A�`�D�!Ğ!�ɲ��[��T�Y�̎"|��o�Q���U��,^,�����L�x����1{�����9� ؉�� u ���5����之A���)e�'Ǘ���Wk�^U��vX���r�H	;��<4��"w
��,�_7�Ws� 4].|�x/�A�Mr��Ӧ���G�]O?Gf����ʆ��́����y�SƉ���Ӊ�<'{�z$w>�{Zץ���]7�%	�/f�4p� x�Ƽ�μ���3��y.L����
͂m��t�"H���ߨ��z���~�q�y���ϲ��zw�0i�X�r�y��C�*N%bc��1��a쇠c�6�J����fT?J��.���7'� oK<zxT(�/�` �A jqxAp,'�Ce�� �FsZ�=1>�ƾh�+��W��<B\C!�|]a�(>�[#���ٶ���Z�P]]΍���K��|PO�~���m:wyn�\F�=�����m;[z��s�<���
w��ϝ�
w���Nv�*R�@���I�&5j��ňqb��/�p_�M`��[�|�/��.���|~{9[-�.s�D��G�X�qn4�M�l�έu��ιy�H;��ce���/w�b�f:��~俫��Z�V���������h�d^	�1cTI��?Rr�H�v,�;�ҁ�R Y�:Z�A�Ұ֐V� HG��4�v'���q��J �d�,7�t�ӎ	�F뵛�N:��R(-�t��u֐R���I�ΖS��Ԕ%�Av�i�s�Im�U!�sR���-�+����Vo��dL��@A�D�&&L�vNNOOQojҝ?�K!��c��9�ƹ=�%���~�;�l�η��T���C��;7Vy�F��t��s8[+V��FT����7r23.�4#���p�*�R�"s`�"���$k3��{�sΙ5+u2��:�	�0��0�a���'��(�L��Y�I���Q��I�D̬����Rq�4+EGq��aHi��服@J�l����f�_RUj�t�)!��I�s��p�4�s�jsҐ��i�NWY3jw5��.��(��h)eFqqUqQ�9�V�7}eW.t�� d)�~���|��}�}���|��Ϲ��:�3'ι��qsn7f>�`���KgQr�$gk�{�� |��|5�[C'Ip���=zέ'Ϲ�9��s����ms�6l��FLO��	�sr�!-&$ȹ� 97�ƹm�m�AOX\�u>v����!8����~��]�l%�/�sS�ν�l�>|�|�������ϖ�$�;�Ť�N�d\�X�A3I��M,��bo�[I���hK`���+o��k�u�&���r
��n7��x��N���n7�VR�R�n��&�7[Y�����(��[�Hٳa�����M4Do����V)v�@���/���5�-g,gkun+g{��Q���H�}�l�Y�{���Ĺ\���8w���p�?+u�T�:[�_��?�t�����粦���V7N~��;��c7ǹs�펰�{=����ن�o�s���n8_�s{�-���]�w�����ݡ<�90cb�4,ڤ��i���%ʣXtJ.�8k�7Rj�dRJ����I�*�G�8q�N[iH+��Z������L��V��jgv��T����\�.]-}�u���Y/�֢'�i�tV:j荔�)�Yi�a�t�sV��s�6D�vӎ�֐ҩ9K�t<�����YvUu� �-�-r�r�@�3����tnH���܏��ѹ�o�s':_D�>tnC�K��t�wΕsn9�̹ɜ�s�	�Us���:_�q#�¹�`�Ɲ/�����h�5hФI�!ÅKKP��S�Ed�3"#""I
�tA�1����E1�!d�H����n&ŨzSf=Mr���z(*��F&F i~}�����2
7��R����|����m\����'ӭ�{����"�����%/ki�Nj����G
�YKӯ8t��1���B�v�LŮ�Y�'�QbK
J?F�}��I�H@��u� �܏%��A�H+��������"��O�a���D���l�l�[��:���i.��}���8�w�!\�u��1��
�u��,zV֝�}�c�g�ߵ�+�C���)��b��N�v,{>?{5	�]��y4���j�OF264�=���%ܰBE_��R&��CK6!�A&)j��v�Xh1^��/����[Q�*)�b�[��wb��y4g�"�|i�H'�ɘltB�D���vnl�"�n�1�Q�RX��@;�u�͵��n&��O2�g��D�)��8J��*hXuH��Ȭ4�'���`�,�������AqDh8`q@�MR��p�a�ę³��� ���D���e	�&C(�ޘ�gW4����*7ԯW�A�����ߒl���`�W�Y�A&d �	a 2!LNHT���Z�ݚ ���ğE��ږ�s�G���-�5�6%Ö�*�7}n᳝������*��hQR�U�%(�/�` �V ���&L0�ٴ+�n�0�0��8L������q�[`��G����,�LoT����F3R�Z:(�\�_UW�("Zj�߶�[��<r[�|)���O�2�L7�����d3�LG����t�fD��ÈIt�0��M����ɑ��������!�Q��K2���rnn��~~lB�����1� ���.ִ%i�.� �e [R�N��)i:�^���c���чH4j����\���bc-7��(�`E#�(�d�XK�D��cGfmc8FJj�IBb��Q� IBBE��lK$[����h[�ʢ�ȶ��mK�-Y�V7�-����2h����.��$�� �ݖ��-����i��y�������. lK �d�V7ۖ�-��%ǭnܖ����LnB͘t\��8=|b�8k��8����8�#�8�@ƑT���O��Z�s����q2���;�1&�cz�1W#�(���Z�8Ҏ�Xl�d�k�!�j�a�BE�8�b�[,Ҥ���Q��	%	%	�z��bϑ�H��h1*Yؖ+lIRx
]	۲��Nʶ��-I��Fؖ#lu�m�ے4���B����`��`[n���%o��`[j�����n��`[N��1ٖL���m��%í΁m��Vwd[�꘶%�V����ٖ;�]H�2ܖu��ޅ���<��0 t����5�:�����ꊶ� ۽�lI�V7e[N)�����Ȏ�v8(��t�(:��=�	�kG_bB'���}*	=�:���ݩ}L�C�'BW2�[B�"�^DG" �փnt��ft���Hwҩ*W�_�����Iߚ�Ď�:�Jn�<9�7濯9��01�o��e`̣��;)3gCf^EfN��{�b�u�<��9U���(�b�̥�����[%1�1��2"b~��_<̗r�g�0ǚa�F�9��%�՜75���|Hj�e�7g���<ȃ9��C̇.�Si2��`.5�<�i^#�7)�!�ˎ̩40��<J���WC���U�|,�_	�g�o���_�1�"4�`�4�	0���Gs6?��<�6��ͻd�&�|Hg��3���&p��s��Ɏ�r�`��6_~=N����7^������k�y+0����/~L��*�?2�������-����هz�oN<�)���g�~G�o	�\Y����|�˫���=*����%~k�ä>L�C��
���A�����wa�H.�0��೘���S�^H^��x��K�oJz�����!�$䑈^��||� ����(?���Hv�';"��� �A��¿&�����Ax��]�c-�?A |��/���! �¿��mP�P�\��p"ZxTN�8�Cu�߸��~u�8��u#����5�lȨ7�Q���U���E��u�,�]VԹ��/u�Su�Mԝ��]Iԭ��?�RgҪ��n�C�J�z�:�U]K�z�5-ԹV��M�3Mչ��A$ԣ@�O�Pg�A������'��Ւ:US=I]ˑ:�R]�R}�Q�ʨ�FH�H=��z� �]�����[��V��z�X'���p*n�����<6�m� ����5��� G�<*p*%82�Nd�w]��x��JX��V�;�\��KP��y�8��R8U�c�Y@�{e�w� �x��UW��� ��
8R�-����{7���|�
�kpY�N\ �+�_� N4��p0Q����Aǅ ����x�h0 g� �
�� �����[ |w.5<� �[D�b��� .�F p���W���Bp�������ёࠏq���I�/:U�-aЫ�ПtAC7
C�C����ޛ��&
:�'�W[�$�	�*-� -�=���
��:R��R4Ё��I+:�*�nzo
}J�ez�~���muy�r{]&�f�>���]rn3�vn��#✻�ϝ�Jw�7w�ɸy�i�O�q��\q�\���~~��}^s{������}���{6s{�{sw���O�,�]r�j��o���������}�6���ۿ����ץ}���b"η����a�o����<�qy�����]2�o�$�l�������������{����m0���1w���0w�6����ƶ]��&���&Ir&.n��3�׵M����}����j��?׮r���M{����ƺIӮr��=�0m.�h�nn�W.n�e�m��-��l6����3�.\�:W��::qq�������흳ww�jn�sNsm�v�{������-��vm�N���r�<�uy��qw�{�O��\���+{��<�掏3q�Ǐ��ų�ޢ(��8��Y\͍-^���Ǹ�q��x����y��g������y��;<������vi�����ϸ9�q}ש���0�w݋��^ާ%��n��in�z������Ү�q���{:O��b��n_�!i�p+VῪ�"�p+�o&�O��%���qhC1F&�HH$J3��)����|&Ca�Be���t>C�	�{�e���>E�;�;������on"�t�?~��k���p�S��Ľ�
��y���e�R]��u���V|�����r�~�4�lj�S
�b4'���ޣa�n�PJGq8���Ͷ�@��>�G�!�:�(�$`�'HYm��{�);��
��o��v�>@�Y�qt�}]�����4�fktT�t�T����|?Lp;ͧy�k��A�v��o+���DIL��z770�i��܂�M#�(�/�` �E z�S��]� b��2dF��6pʲ����c d��33���4�vt��ݬ:S|iCd��R�o<	�c���X��k@#�D�����Вg+��V������7���Qm�᠞ӬA�i�Q�4���4�Pr�q46�k��J2�AmM���<��{f���<3�S]���(�,Փgf���37���Ne=3�TE��Gc�:�ih� ��l���V�p�l��`�d3e�:J��rXv���̢�2�*\�\f���L��2��LUY��Z梒,sm-�OK��j^U�˅*�<��ˍ�]��P��7J^��.��;�٩&�p�u4�f���aNj7�R%�9��a���0��p���|�<�{P�n���M�S��7j���5��F��MB[&��,��(lr��x�\�)���PeM����H��G��,U�_�Q�_~�y����>ǖQ��M�1ql��Aǆ��u줲���ձ�:�e���Py<�Z�̣�]��j��zgPệZ��4h{����w#5�� ���VT��V�ɻ�J���z����T�J7=�M��&�m@��6�%�}��u��Z����1�^�d��;���T�u{�ֺ�z�{���f��s��ใJ���/1���J
�	ɹ:rn��:7SW�����]�9wP��vj�ฑJ��Ý�׸����GIZ�V���:*���ZX`+*�ܣ)(��L�%���n����2��v�}ۨ5ٷo4���
s}���'*�����<�l���۶��m#5���⶝�䶓zns5��D��A����<U �9F�m��k�sԵ�>�a�Zmc��*��I�]���k�(y���\{G;\�FK�U��ёk��5�L5��Ta���H��j��0�55-�5���It�l��l6;���g5���=Cc�~�-�6*�Ye=<F�Ms�u6�7hNO��I�ټ�7��y�4�U�i����4���9Q[X6W6/�/��I����C�escO6?ђM����Z��gt���H��@�(�*p���,�9G*��yt��K����U��7��C�9x
5߹�
�yF������;�8p5�@�M��B��FQ��<�{�����'U��O�������-U�:�un�o�uԷ�P��sT��>�p�E��;���o�8��wS{�&��s.��9�w�H���S{�<���ν����{��{���E<U�E�A���y��qjp�u�7�P��31N�e�Q��T���
5���<&��SἏZb�����Tټ�C��۩��Q׼�JҚwQY��j�S�V���y�5���S�V�绉���1�i�]?�y�ŉ��؁�C����xv��}^���0�`���XFPLq�@����LQ��6�$��n�R��E�G�^Y��)ZP���D��ŰhA�0P�I� 詠�㢧X�([�Q�N����	�E�ٳ�H$�(a8P���te���ϊa��d�Lv�X���[�6IY��%B�dH�6�OD�RDh�D����"$ƭ��,��W5��D�!����e��J�?"�:d&��)2�Z�`P����D���^�D�zMBS���K�zd��1�U�׬����WQ��!�d�&�~ĪYP�n��Gw>.T��[���D��|����?U�Ǐ�cPP�O�9hcs��8Q�e��8M�h�GO6�ԑ��;(k�q=At��@@�5�D��h���T7t
e�OWB�_p�9_0S���Y�g�T8qNܩ&7*��M��s���G�����-����\�)��8*򹍾NCON#���q8��8����$I�1�ٶ !4HQYJ�}�}F ���|q��6��b�xt������	�p�ZHI��tj����{��O�:sj����L��[�6J�5�3g�O轨��<�g�E�lo�g#�]���e�V�w+���'��I�|i3�t ��z\�0	�	�ߦ�	�)������n��@��y1=���y�O��Ul�_��x��ؘ�J�u����ok�1�O�+Jr���Z\�-�]��������Z����I��..SA�����-�J�];���#+�����\��_�v1J���t�\�|N�3��b�DD�s�����nKHum.je�Dլ"A�C�F^���x���b\ *8ǴiD/6~ήo�������v���h�0�#�b.�#�2�6	��w�23w��˼�;��
(f.Z��%z(�/�` %; Ju�- .k���*���0�t;�V���lߚ��$�Q�$+����JT�w�ړ7��'َ�x���a�dL��#������z�S���������s,�jd.fb@��&e.�]�e3�>=�f|�%\����<4�%x��X��8�&l�=����T70/�'0�0�p��/�t�HmtѮ���9x�58�1��-��)؆k��gX�c�_x�rv�8�0�0����6�p
��	�y�b�w{��4�b&fp�L�����;L5�uN3]��D3�&"͚��[��{�A�֬]"���4�USM5Wʹ�WC�t����a!�3�(�f>��O�p�O��yg��u�U-��i&��v���3K5�v��SS]�/��.��-��,��+��*��)��(��'w�&g�%W�$G�#7�"'�!� �����W��=N��v���<=ݡ���o^Ǚ�e_�q�q�q�q�q�������,��p�'���*��(~�l_��M��ӎvqq/�_ޖeY��qY�s�7v�/�a4����r/o|��۳��P&d=��AVc#N��\�Z�Ǳ��M��٥�;��iy�7\�3�/��+��'\�#�xpop_pOp��03���8��򀿲�8���*���<|0�]���y�lʍ��L���2�ʿ��ʬ<�T��K�ð�;�qwr&W2$?r��dI�a%.b ��"�G�1y,�#�D.��b��,Y�5�#[t��9�uX�RW �pR��a�0
L�� B�'�O����l��.�%Z�Mk]vi�e]�u�m�e[7��Ju�E}mqrgQ�]���Y��3+4Z҃�,[*�ȣ��,ۚ����=���5&Y7:���j�i�s��ɶ�"۶I��Ȳm4��|V��莟uȴ��6�ײ���:�V�|ո��zeJ��U&tz�[Q6�����?+�Zu�=�~O�Ѝ�{�xVu�U�~C�w�!B��7�V�M�_�sJ�R�@���N�M'5Z}�0�N��&�Ju��=�T(5��^���)��l����k��⧖Ʋ��H�^�znnsp�(^tEOtD?tC/tBtAt@�s?�s>�s=�s<�s;�s:�s9�s8s7os6_s5Os4?s3/s2s1o/zY���w�U�A[z{�����λ���0���I�
L�M�]�ϻ^���F�祳����,,�5���̦^��>�F�䥳���%�,��}���Ͳ^�*��7�A��5����w�i"D��L�L�a�[�B7!���p��W�S�NpK��D�1͂��Ό{0�	x��)����?�o�������[������%�U{h=Sb��ƈc� 6@,O��	����k���0}��|̛���~෬�i��ad���o��P�,xZ}�������n��+a�ۊ�&��xsM��3��ĵi>K�V���c���o1���<�YL�T&�n˶�$�h,�-�\*�ȣ�趬r�L"�Ƣ�T&�K�4[��m]e�*�i@�Xt�Ť��4"�G#�e]7��qH���%I ��t � l���()JA��9H=�ceJm4F?�r�S�؉�Q��6��.��ɻ�؞�Î��j�{\�1�8t����Q9�>y��;}�����g�����C���Rn�h�E׮N�����zĈ�k��&d��{�]̡����2w@���0)�Ŵ�~kM։��6j���aA�6Ѥ���&a����Y�� � g%�"���׆���Nf��"������'�`���{�1p��<B!"u��y��
�3��H����'r�ڬ�]q���p��:V^���&s�b����#&��?�A���Rv\��0}������esL]$��Lׅ�E�ԏ �4(�/�`�EF ���T��]�Qz�GA��݄���H(��IH��zp�9�?9K#�(�o9K�wZ�w��{�dj*s�s>����-83ˇ���~���"�7�2���i�$�/K{d��.ɡz�W��f_k��������eUw��|���ؙ��W�Z�Gi3��bJ������=U�es#��L(S����U����&�;��G*Ru]�5lawO57��������Ò�}-�ka[�.v�	P�Wrz�5l^u�`]V7��{�{�@W���ۻ�����(n�ݣ�ޮ��=9�&K����umlk���k�cq�(�SU1UoO�į�T����w�X�a;�{���ha��]�,l���\���^�Gk�vTg��Q�,,�vk5�Fi8��.�Q�Q�Chͼ���,����M�U7��*����|Fu����Y˨�͝T��}��٭��R�>�X��Ά�k�G�mT��}Trao�:[��.�X�?�����Gs�LEy��A�ZH]��+͔��:����џQ�|GU�۰3�*3�0���^_�+��ٽƮ��*�����v��}1����&�eb
�(�W��6���m�Rl��w�?�J�T{;BX���M56S_��T�P%r�l���+O5�RGe'7j�	���י�*��=<��(�'�HqP��lԚ�E�ci~�m���j����]�姖�d��IU`am�f!�]��Dj��ʎj�SY����JJ������*Eu;��6sК}8�� u�W�@*[6����X���i��M���׻S(�%��{�����:[��=��r����l�U]���ˢ4��ӱ�gS��"}�b"�F����ؒK���7O�O�v�����Qi����k,6���J�j^qG�z��ּT[kb`K+��Qs��T��L�`IV��D���T�y��+���x�5��e�h�8�y5Q��}AɅz۩'���������-�,q=���3O��,,�M5��77����:�#���QV�˽��,���U����f�d^a���u}���\���;��sP�>�3�<����9�7�r��F�R�R\�	v�"-T�@%gѳ�;�s��\�7�4�vSy����� ,���<��M.i_}V*����T�['�X��:��k`����؛Y�(�s�QoC�gcu.R����T]�*m���L^w�P�U؟y%V�p�$.vf��<,̾�N�]l˾��;��}u��ִ�]��eg.+sY��&yX�	Cw+��2~�Q򤪸�23���e���]	M�"dzh�� l ��� �  �d"C t�A�E:"6�A�P
2ŏ�v��8���3�N�{<�%�y��̳ݶWϥ�a�a�����zEb0-`��؀y�W�̕�2G���~�͓]���6m3�Mdp�?�2�W���7E��W4g�#?=�L�:�2s5g�\�3q��ԙ�E��2SĜ�L�\���i��%<4n�	����b������<�1׎��\+�Hk�>�1@�`� Z<�̢!��:���B"PE��P0�|g����� @z���!.>�2�ٱ[�Z�p�,�Q&yd�a�T6���U;eٮ�u�s�CF�s��H�c���9��1�E.��Y��⥗�`��Fq��'6��x�G؁a�޽��u�^`ܸ}�`
�Y�%�gr�o�~�Y��Z]U�����T����W��	��$�0���M���0��7`bEUL,��:�E8���8���}�d�Zg�nKOg̦R�a�~ʔ��l���x�����{�|�����\���n���}�����k��nb��� ��gFR!��j�Z�g"a͆��`�ղ:��8�w����0��AbA%!N��#��0f3y��lG8L�u�:z��V��?�>�s}oR	/ �T���A/��K�f��&��$;l1�-�&ձ�$+��T뛟���^��-�2����ZX���J��hvz��^2B�Y�77�]�$H�8�������q�]o}�L��ߏ�a+�-s��S��9�Խ<�u�ֆſ��^g4�z��Z�}C<�$L_��r[�KVl�"XǨź��ˤO�c^ϸ�;�-��H߻[=6��6��=!e���<�
�h}�"l8�MttfO#~T�ܶC��v��1��M�E�9)1�9~�҃ځ����I���s��c������vv�*iZԟ�=:����/��2�����f<^iY�j��gz�i�5RSCC    [remap]

importer="font_data_dynamic"
type="FontFile"
uid="uid://ddj20rhvcbny3"
path="res://.godot/imported/JMH Typewriter.ttf-2ecad2ce70c17883882ddb5449ecbb63.fontdata"
      RSRC                    PackedScene            ��������                                            
      Console    .. 
   Hospital1 
   Hospital2    resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled 
      Script    res://Game.gd ��������
   Texture2D    res://World.png �;� q��\   PackedScene    res://Robot.tscn c�ٳ�Lpw   PackedScene    res://Conveyor.tscn �����[   PackedScene    res://Package.tscn ��
�e�%?   PackedScene    res://Hospital.tscn ����s�5   PackedScene    res://HospitalDisplay.tscn L����|�<   PackedScene    res://Console.tscn =���[��   PackedScene    res://ConsoleText.tscn Vx���
�j
   Texture2D    res://CoverSquare.png bc���V<      local://RectangleShape2D_ayyn3 �         local://RectangleShape2D_uyhab �         local://RectangleShape2D_tssnj          local://RectangleShape2D_kaxgh B         local://PackedScene_mqbbw s         RectangleShape2D       
    ��D  �B         RectangleShape2D       
     �B ��D         RectangleShape2D       
     �B `�D         RectangleShape2D       
    ��D  �B         PackedScene    	      	         names "   -      Game    script    skip_intro    console    Node2D 	   Sprite2D 	   position    texture    Robot 	   Conveyor    game    package_obj 
   Hospital1    index    HospitalDisplay1    scale 	   hospital 
   Hospital2    HospitalDisplay2    Console 	   Patients    offset_left    offset_top    offset_right    offset_bottom    text    Crisis    Near Crisis    Saved    H1    H2    Walls    collision_layer    collision_mask    StaticBody2D    CollisionShape2D    shape    CollisionShape2D2    CollisionShape2D3    CollisionShape2D4    CoverSquare    z_index    round_started    package_accepted_by_hospital    accepted_package    	   variants    >                             
     pD  D                  
     �D  �C         
    ��D ��C                           
     �D @lD                            
    ��C  C
     �?  �?            
    `�D �lD      
     D  C                     
     dB ��C
   �^(?�^(?              �B     �B    ��C     �B   	   Patients      C     5C      Crisis      >C    ��C     qC      Near Crisis      �C      Saved     ��C     �B    @.D     �B      H1     �D     �B    �@D     �B      H2 
    P�D  �D          
     �D  D         
    �%D �D         
    �D   B         
   ף�D  UC
   IH?  �?      	         node_count             nodes       ��������       ����                  @                     ����                           ���                           ���	               
  @	      
               ���                     
  @	     @               ���                       @               ���                     
  @	     @               ���                       @               ���                                 ���                                                   ���                               !      "               ���                  #      $      %      &               ���                  '      $            (               ���            )      *      +      ,      -               ���            .      /      0      1      2               "      ����          !                 #   #   ����      3   $   4              #   %   ����      5   $   6              #   &   ����      7   $   8              #   '   ����      9   $   :                  (   ����   )         ;      <      =             conn_count             conns               *   *                    ,   +                    ,   +                    node_paths              editable_instances              version             RSRC             GST2              ����                          �   RIFF�   WEBPVP8L�   /�?@&mS�'f̿��  � �I��v&3�,�@�_��"�G��U��;��rk�q�o;C)�l��_���d�����%yj ��`��j��u��!_�}?I�"�nRj������d�����}����G����FJ�+���(���a%6�6�={H[1��F�k� �$�F(��A�H����H�����Q���6oӚZ��v~�=���{           [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://de2qrwwqabq2n"
path="res://.godot/imported/MedBot1.png-0d9c799dc41f76cb8909504f49f1616b.ctex"
metadata={
"vram_texture": false
}
             GST2              ����                          �   RIFF�   WEBPVP8L�   /�?���h�7���o<)j#��!!#�6��}N|�'�"�G �yF ]���
 @�m�m�;p@� ;��w��V3��aPj ��`��h��y��.��s;I�"�fRZ��i�CWof.�+��܏����g8C��H-��F�
��w�6⪔Ur��^>*��Rz�!I�j)rD�t= GR� ���Q���v�Ӗ�f�2{;b�            [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dcjf6p3sxjgtg"
path="res://.godot/imported/MedBot2.png-175a1ea06ac301ef39fd5587fbdb7cc6.ctex"
metadata={
"vram_texture": false
}
             RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled           local://RectangleShape2D_ridag Z      #   local://PlaceholderTexture2D_p2gwx �         local://PackedScene_n7w7l �         RectangleShape2D       
     �A  �A         PlaceholderTexture2D       
     �A  �A         PackedScene          	         names "         Movable    scale    StaticBody2D    CollisionShape2D    shape 	   Sprite2D    texture    	   variants       
     �@  �@                         node_count             nodes        ��������       ����                            ����                           ����                   conn_count              conns               node_paths              editable_instances              version             RSRC              class_name Package

extends Node2D

@export var s1 : Sprite2D
@export var s2 : Sprite2D

var num_save : int
var picked_up : bool

signal on_picked_up
signal on_dropped

var over_hospital : Hospital

func enter_hospital(hospital : Hospital):
	over_hospital = hospital

func exit_hospital():
	over_hospital = null

func _ready():
	on_dropped.connect(dropped)
	if num_save == 1:
		s1.visible = true
	if num_save == 2:
		s2.visible = true
	
func dropped():
	if over_hospital:
		over_hospital.accept_package(self)
   RSRC                    PackedScene            ��������                                                  1    2    resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Package.gd ��������
   Texture2D    res://MedBot1.png ���D�	h
   Texture2D    res://MedBot2.png �Z�U�Аe      local://RectangleShape2D_ridey �         local://PackedScene_6r1ds �         RectangleShape2D             PackedScene          	         names "         Package    scale    script    s1    s2    CharacterBody2D    CollisionShape2D    shape    1    visible    z_index    texture 	   Sprite2D    2    	   variants    	   
     `@  `@                                                                            node_count             nodes     3   ��������       ����                  @     @                        ����                           ����   	      
                              ����   	      
                      conn_count              conns               node_paths              editable_instances              version             RSRC      extends CharacterBody2D

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
GST2   @   @      ����               @ @        $  RIFF  WEBPVP8L  /?�W���8�%?t8@j�6���z�x�)�$�M�4.ZE����|�f
������oQ ����6TV�
f�a��q�w��ά�tTsT���;�]D�' �/|up_6 *���!!�`�¾s�a�0�6�t�L��=��8�UN��W�2V9�g�)3s���y��'I�(Y�X�P��*Ӈs�$IB*k��������!k��A�Sd:����4�b����d�\�Ya����Y��l{k��ƿ����c��@����4$Qtyw��B     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b67pgsam7w05n"
path="res://.godot/imported/Robot.png-685d1e6b888cc221e7ad9e5fe93fb92e.ctex"
metadata={
"vram_texture": false
}
               RSRC                    PackedScene            ��������                                            
   	   Velocity    Grabber    ..    resource_local_to_scene    resource_name    custom_solver_bias    size    script    radius 	   _bundled       Script    res://Robot.gd ��������
   Texture2D    res://Robot.png �n,m>@   Script    res://Components/Velocity.gd ��������      local://RectangleShape2D_cj81n          local://CircleShape2D_8uali 3         local://PackedScene_vqjvh ]         RectangleShape2D       
   q�B��A         CircleShape2D            �A         PackedScene    	      	         names "         Robot    scale    collision_layer    collision_mask    script    move_velocity    velocity_m    grabber    CharacterBody2D    CollisionShape2D 	   position    shape 	   Sprite2D    z_index    texture 	   Velocity    character_body    Node    Area2D    Grabber    Node2D    _on_area_2d_body_entered    body_entered    	   variants       
     `@  `@                     D                   
   �I��H�                                                    
          B      node_count             nodes     O   ��������       ����                                    @     @               	   	   ����   
                              ����            	                     ����      
     @                     ����               	   	   ����                           ����   
                conn_count             conns                                      node_paths              editable_instances              version             RSRC           GST2   �  8     ����               �8       z  RIFFr  WEBPVP8Le  /�g��m$5�L�_RIR<?�Ꮪ����o�M��|��M�;[f5�#��E+	�UP,m�0i����� �F?`"d��ٶÏm�mkm�V�ەd!ѕ�;M�u���Jo;WS-.El��h  .i��O �f��F�4�Q<0�[�:�	�5KA����ӨS`e�� e�CY�&ڔ���-;��@I�޸�,�z�@M�ǘ�=������1�w9$M� Ŏ��HLm;�����t"j.���W_{ыfqD�'�������������O�?���������PD��d�&�嫑��!�����i��B�I��x��1E��<x�Sq�:-�xL	S��`�
�~��xNf-�,�2U�5���?���T���ӿ~1S�ƓU�L��h&��V�S�G��Z�z�s��V��>i=��6��5C0�j�u���^ЂP�t��I��2�6�)oXS���X[�F2�T��m�1�nˤ�)�:<�1�w,��L�vF4J������%�6��ȹ(w]�@��⵲��׷�+[����B�r��1�����|%�_m=+�{����k�)���he�/���d���V�Y���]�s�k�hnݿ�A���~^����.�+X9��#%Z=f�ɣI	x�pA/K3��9f�Gt!K�V�W��H��O��5�q�嶏����j~33V�v��5�)����<��Z�|�宙�����y�XWi�S6(�xyi\ `av=fs{B	�d��	��)ԅ�̳��x�s�d��Ay��*C��BL�A�M"� d kƽ^����<{�+�?s�7��t	���m���B8�N����]\��ڠ^�`F��;"��TD�kn���5��Kʆ�� ���w�����}^�O�P���E(�/Pk����ܸ���&��~'���2�w\�O��b	�L��*G���O�Oa �����I�(,��O������y�eB�$���D���l�o��&o�5X>$�qif8����EC����2��υf�Jƚ��Bu�;��S<ۙĵ���E�3W��4�&��������I��܋�3�W�QևԌ�kZ���[R��\,�"����,��C�F�E�h����Y��x�����B�;B:�o�LT�/(�o� �e�������.�)���M+Yh����PW���A�(�xH��3:f�N��ſ���Gûk!qG��r�=&�[$���xl+�.����:Zg(�Ҵ!~k�f�NH�Ƣ/�۱���C���f<J\��|uf�Bsg��������'��b��BJd<2�+.�4�
b�phS6(��/�2�^P,��/����C��� '4��WR�bM5�X�Y���/���Cmu͇��<P�F�
�DxH�C؀��P�k�s��L�ó7X����Ο�f�%_�{S����
�*�'��;�Q�&1q�u������
͕lBI�z�A�v<3cq��w\�z|�1a����f����e8`뭖Bm��G3���pa��@MGLc��\��Q��K;�&���m�$�b<�Q#鑱��DE�Ǘ:H�	x��y��%����\�>v�/�dr(�Q\�8��9:���"�Մ:�õ�_�Ffx�E�=��'4�\���c�S�?aҋ1��0xt��j�A\+H���1k�-ƫNS�AC`J�1����l�M��}s�iJ0��K�ś:�sy`F�@0a�u��P�$�$�7u����톝���J!�P42�.�Ę�Ҕ`.$��"�[��%]5
)���n��҂Ę�Ҕ`���eD�B�A2B;���CH��W��sa�L��B�����`J,h��2�8ZВ�ĭ�U�)�P��e0%U(��u$nE٧C���)��U��b�J҉�B�ȫtS�A ����Q�3���� u+�y��M)e�I�Y�Q����
ק u�G|yy�oE�B�Zbo��h�)�,?�B�f��d	dXK�+��Ps�񙰫@�f��d��z
�E���eՄ�ɛE�C��NB�&��ӢI��̠��>ɛMB�Afxx.'�L�VM0�� ҏ� ��:���eJ0�ꊽӢ]�Ҁ\�J���0!�P��90-ZvZo���J���&$���E�N����e���7�i�AdPU��M��,3�*n�� �7}v���za�����e������ä�t'�A]a�����������	��N�ʊ��äh}�AU���dSA�f�ӮC����U���I��%�������q@�-��74��V�q z���
�&p�@1�����	4�?�!
f�T����:g� دg�/ 4_���O����ٟM�;N.8�a��|�~�<���@=x���E���D}C�g��L�D�U��S6���/�$��Ě�UGkj�7�sBw��m0_b�dm�4�F~*��BR��l� ����y��H�����fw�����k��vJu�簛�������&Y��"q�m5��m�vg��� �{��sX#�و�NDBn�s�H��BXՒ�ps��ZS~W�������r
Y���B���H�v���K�%���,�����v��a�OYI�K"" $�*i)��&��pY�p�e@6�U���OCVAV�'Yd-$}�<�yM�;��Mv�祋��y�Er dy�KVԽ�\AР� dmXw��3�4,\$Y}X��+�rI6�8���D�����)��Ss�dx���!��n�a3��[�����FWW�h�6��0��ɯu�������ȆV�f���/��ojSG�ur�C�5AWx��������L��*|-G6�8:S|������!�u���Ȇ�A�u����]��g��pt�y��̈��߻�!�*�Uϔ!6������F�Q3SI�����Q%#�r���E����Ne^���`����#��Tz�aL��H��������b+���(�(~�;,�0��g�$�(Ep�|̃||w����)L����S���~��JY�|�R��|Z�f�.���]^~�g
�!KW���O?��#��y���w�#�X����$���ݦ���4���(P�}>��֭��F|aOK�g1�:^�|b��%|G<5u�o��Tx�����߁�?r�R^+n�9f�!ϔ�x�)��StT{�Z��1���1�A �c�5�c:�k�ǔ�@(�c����1��ǔ����c�L=U`|�w��s�o�=����(u|�}�O3|�bs�����:6}-��l��?�?:6�i�ǆ�D�<�-pפ����W��F��xs_�3�i��u��]OW�����k���O�S���5�����t,����\o���cVw�_u�L�xZ��,�x=T3��q�V%��rᮆ�g����Mu���VҨ��f��;�w�
������7�X�^(�v�@���$b?r�y����ҀL�X""�
�+'�K�3(�,V�-ɓ��J� ��X墰K,�$�c����#��@���֣uFH��3h>΂'	�z��(�;I��p�K���h�`bP6�/|B"���3|BB�h�`�h_�� _?��#<;��/~��������q!`����'�!�h�������������ay`�hWPt�Q}Y�q;@tZ�Х�c�/Z�pN �Ŧ����<$�M!M`���K�Xh(�W�� ��AC�aGHņb�E��E���h��~�dx�r��2`3�W� ���_�Ţ����aTS�4��FF4O�^!��4C͗Z/m�B|�a�Bj���4t!���0��A��f�`'$��]0BЏ�`e�[\��7���!
Ơ�[��Y!@Ck��"��jl�16�h�C��36֢�z�A��BGrGS�P/�`�A8~��������J;�
����>�$Ȅ����h�<|����Iv32(��+���=����^`=Ç��[>�og��>J��g����?��G(���wa�,0&�5�����>�Qx��{kb���_��3�Y�ɂ�;D�@ȋ����>������ǟC�����z����&�����&t$F=>��gX:=��	y����F�E�Y��`F8⇿��?���Ű�A���3Rɛ>b�s!:tp�@|�z�M�Ni|�B��V������f<ck����u܉�h����g���r�9�h1RY j�< ��tX��: ��� �TC:�&!�� -rj@P���)���>4.������bч���:|��������)�}�~���hO�*�j®�u��KmIP���X�Ѓ�A�?8����,�/�\����!�y ��}[�Q��䗇?�a=h���x�joP��-�`���F�T�Y��7��JagX���S�������,�|��=��. 8v���' �f�mB�1
�8e�m�o�I0�:@��h� -B~�m{��J�a�+���?�
P�Sn��i��$�ݡ����U^� lJ��4�D/�Z��{��� ���aQ�SV�9����h��N!'͖��)apۆ ��-�K����甏v[NS�� �v>T&�ٖ �|  ���W���'� {�!��t�I����|����֋��{Q �f`�F�MYi��"�8� ,���7�v-(�A���=��T¾�*��>=U�{�����f�)�S��.��ݞ2{������S	ɗ��͎WB���Fm=��)OM=Ac���$E�_�<C��L�:�m&>��[�q��6�_<�|�M`��C�Mʯ[�4D�!�$pV��uBM��HM�~��<섪x��������kπ��3��
����lF��h��s�gn+.�`㭦�~�ͨ�i{͗ֆS�Q�� &z�g��~��:���3�o�xDoQ{�[̍W7�\���b����h� ���L��L����4_�Y�� 4_��� �����Y�	�;�Q�h� �{�<�;��fϗuR��r�H)��W�_1V�7b�_���#,q?�1&z�M8�1���xNbUT�Q��W��?�{>�7�NbĞЅb�g�c���O�UFe
LJ�a�}���4��_Vhù�������8����x������2<s���П>��?>�!���ND���.~|ɼ삫�|x������/�����?J�e?�q�ϖ��/��|�?������U������BN=����w�bi��߁Yq�MD����_C��Y���?�lW6�w�s߆��xW������U�^�Lr{�-��]�� �*��_˸����urk�w�x�f�w�V㝀)n�i��ɼW���\��\�ٻcW��� ��p��U Λ8q��)�a�_�p�y�zVQ� �dZ�jtU�I��@��Rހ�y�3��U�7A�� P�B��a�?�������M�h�$r�~S�jD�V����Fn����r�,��v<��*R
��)%������U{��fYu��DS��xVy�R@ދ�$%�ۻ�5�X���0�4ꂏC�P�N�&��D�r�&3�9K#�>?�3*jO���˙�S��hvdz�u�T��	e�9�#�ZS�i����8��y��;��5��Y�8�4�tz2���_��O�k���i�����M`�.�i��~�]�{�z�u=�{�o�����z�               [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c2ptwdgwitq78"
path="res://.godot/imported/World.png-b5b1651f30385c5fc5cdb20d394b8b9e.ctex"
metadata={
"vram_texture": false
}
               [remap]

path="res://.godot/exported/133200997/export-eb0f7aaa21a11d909bfabe1f569dab23-Console.scn"
            [remap]

path="res://.godot/exported/133200997/export-72519723218dbbc438dc8422e29f42ba-ConsoleText.scn"
        [remap]

path="res://.godot/exported/133200997/export-0bf2f0aedd145dc1cb589f0c56d8ba47-Conveyor.scn"
           [remap]

path="res://.godot/exported/133200997/export-a27a08323b4271aea4b18cfc26302dab-Hospital.scn"
           [remap]

path="res://.godot/exported/133200997/export-4ee9641d076d43b972429fb10e9999ab-HospitalDisplay.scn"
    [remap]

path="res://.godot/exported/133200997/export-bcb0d2eb5949c52b6a65bfe9de3e985b-Main.scn"
               [remap]

path="res://.godot/exported/133200997/export-464dba8fe0c7208620ce259442b76d13-Movable.scn"
            [remap]

path="res://.godot/exported/133200997/export-20c734533142f956afff775a0745b679-Package.scn"
            [remap]

path="res://.godot/exported/133200997/export-3f529fed70430038310ab41ff1962c78-Robot.scn"
              list=Array[Dictionary]([{
"base": &"Node",
"class": &"Collision",
"icon": "",
"language": &"GDScript",
"path": "res://Components/Collision.gd"
}, {
"base": &"Node",
"class": &"Console",
"icon": "",
"language": &"GDScript",
"path": "res://Console.gd"
}, {
"base": &"Node2D",
"class": &"Game",
"icon": "",
"language": &"GDScript",
"path": "res://Game.gd"
}, {
"base": &"Node",
"class": &"Health",
"icon": "",
"language": &"GDScript",
"path": "res://Components/Health.gd"
}, {
"base": &"Node",
"class": &"Hospital",
"icon": "",
"language": &"GDScript",
"path": "res://Hospital.gd"
}, {
"base": &"Node2D",
"class": &"Package",
"icon": "",
"language": &"GDScript",
"path": "res://Package.gd"
}, {
"base": &"Node",
"class": &"Velocity",
"icon": "",
"language": &"GDScript",
"path": "res://Components/Velocity.gd"
}])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              =���[��   res://Console.tscnVx���
�j   res://ConsoleText.tscn�����[   res://Conveyor.tscn����s�5   res://Hospital.tscnL����|�<   res://HospitalDisplay.tscnO�t^   res://icon.svg�y�CT�f   res://JMH Typewriter.ttf���D�0   res://Main.tscn�����sGT   res://Movable.tscn��
�e�%?   res://Package.tscnc�ٳ�Lpw   res://Robot.tscn�;� q��\   res://World.png�n,m>@   res://Robot.png���D�	h   res://MedBot1.png�Z�U�Аe   res://MedBot2.pngbc���V<   res://CoverSquare.png      ECFG      application/config/name         ThreeLawsOfRobotics    application/run/main_scene         res://Main.tscn    application/config/features(   "         4.2    GL Compatibility       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      8  )   display/window/size/window_width_override      �  *   display/window/size/window_height_override      8     display/window/stretch/mode         canvas_items   input/Up0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      
   input/Down0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      
   input/Left0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/Right0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/PickUp0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   E   	   key_label             unicode    e      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script      9   rendering/textures/canvas_textures/default_texture_filter          #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility 