class_name Package

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
