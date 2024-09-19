extends Node

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
	
