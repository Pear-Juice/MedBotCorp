class_name Health

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
	
	
