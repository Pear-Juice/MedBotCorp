extends Node2D

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
