class_name Hospital

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

